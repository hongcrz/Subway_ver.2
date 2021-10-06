package kr.co.subway.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.subway.domain.BoardAttachVO;
import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Log4j
@Controller
public class UploadController {
	
	@GetMapping("/uploadAjax")
	public void uploadAjax() {
		log.info("upload ajax");
	}
	
	@PostMapping(value = "/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<BoardAttachVO>> uploadAjaxPost(MultipartFile[] uploadFile) {	//uploadFile을 배열로 만듬
		log.info("update ajax post...........");
		
		List<BoardAttachVO> list = new ArrayList<BoardAttachVO>();
		
		String uploadFolder = "/Users/hongscrazyfarmers/Desktop/prj/prj_SUBWAY/src/main/webapp/resources/upload";
		String uploadFolderPath = getFolder();
		
		File uploadPath = new File(uploadFolder, uploadFolderPath);	//앞에 있는거에 뒤에꺼를 만든다.
		log.info("upload path : " + uploadPath);
		
		if(uploadPath.exists() == false) {	//uploadPath가 있냐? 없으면
			uploadPath.mkdirs();
		}
		
		for(MultipartFile multipartFile : uploadFile) {
			log.info("------------------------");
			log.info("Upload File Name :" + multipartFile.getOriginalFilename());
			log.info("Upload File Size :" + multipartFile.getSize());
			
			//파일 정보를 담을 객체 생성
			//AttachFileDTO attachDTO = new AttachFileDTO();	
			BoardAttachVO attachVO = new BoardAttachVO();
			
			String uploadFileName = multipartFile.getOriginalFilename();
			
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
			log.info("only file name :" + uploadFileName);
			attachVO.setFileName(uploadFileName);	// dto에 파일이름 담았고
			
			// 중복 방지를 위한 UUID
			UUID uuid = UUID.randomUUID();
			uploadFileName = uuid.toString() + "_" + uploadFileName;
			
			try {
				File saveFile = new File(uploadPath, uploadFileName); //uploadFolder 위치에 uploadFileName 이 객체를 넣겠다.
				multipartFile.transferTo(saveFile);
				
				attachVO.setUuid(uuid.toString());	//dto에 uuid 담았고
				attachVO.setUploadPath(uploadFolderPath);
				
				
				//이미지 파일 체크
				if(checkImageType(saveFile)) {
					//attachDTO.setImage(true);
					attachVO.setFileType(true);
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));
					Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100, 100);
					thumbnail.close();
				}
				
				list.add(attachVO);	//list가 dto안에 담긴다.
				
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		}
		
		return new ResponseEntity<>(list, HttpStatus.OK);	//list형태인데 던지는 데이터타입은 json이다.	uploadAjax.jsp에서 호출하고있다.
	}
	
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}
	
	private boolean checkImageType(File file) {
		try {
			String contentType = Files.probeContentType(file.toPath());
			
			return contentType.startsWith("image");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	@GetMapping("/display")
	@ResponseBody
	public ResponseEntity<byte[]> getFile(String fileName){
		log.info("fileName :" + fileName);
		File file = new File("/Users/hongscrazyfarmers/Desktop/prj/prj_SUBWAY/src/main/webapp/resources/upload" + fileName);
		log.info("file :" + file);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			
		} catch (IOException  e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	@GetMapping(value = "/download", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE )
	@ResponseBody
	public ResponseEntity<Resource> downloadFile(@RequestHeader("User-Agent") String userAgent, String fileName){
		log.info("fileName :" + fileName);
		Resource resource = new FileSystemResource("/Users/hongscrazyfarmers/Desktop/prj/prj_SUBWAY/src/main/webapp/resources/upload/" + fileName);
		
		log.info("resource :" + resource);
		
		if(resource.exists() == false) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		
		String resourceName = resource.getFilename();
		
		String resourceOriginalName = resourceName.substring(resourceName.indexOf("_") + 1);
		
		HttpHeaders header = new HttpHeaders();
		
		try {
			String downloadName = null;
			
			if(userAgent.contains("Trident")) {
				log.info("IE / Edge");
				downloadName = URLEncoder.encode(resourceOriginalName, "utf-8").replaceAll("\\ +", "");
				log.info("IE / Edge" + downloadName);
			}else {
				log.info("Chrome");
				downloadName = new String(resourceOriginalName.getBytes("utf-8"), "ISO-8859-1");
			}
				
			header.add("Content-Disposition", "attachment; filename=" + downloadName);
		
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return new ResponseEntity<Resource>(resource, header, HttpStatus.OK);
	}
	
	@PostMapping("/deleteFile")
	@ResponseBody
	public ResponseEntity<String> deleteFile(String fileName, String type) {
		log.info("deleteFile :" + fileName);
		
		File file = null;
		
		try {	//객체 생성은 try catch안에서 만든다
			file = new File("/Users/hongscrazyfarmers/Desktop/prj/prj_SUBWAY/src/main/webapp/resources/upload/" + URLDecoder.decode(fileName, "utf-8"));
			
			file.delete();
			
			if(type.equals("image")) {
				String largeFileName = file.getAbsolutePath().replace("s_", "");
				log.info("largeFileName" + largeFileName);
				file = new File(largeFileName);
				file.delete();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}
	
	
}
