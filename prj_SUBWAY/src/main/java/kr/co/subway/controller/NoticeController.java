package kr.co.subway.controller;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.subway.domain.BoardAttachVO;
import kr.co.subway.domain.Criteria;
import kr.co.subway.domain.NoticeVO;
import kr.co.subway.domain.PageDTO;
import kr.co.subway.service.NoticeService;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	@Setter(onMethod_ = @Autowired)
	   private NoticeService service;
	
	// 리스트
	@GetMapping("/list")
	public void list(Model model, Criteria cri) {
		log.info("list :" + cri);
	      
	    model.addAttribute("list", service.getList(cri));   
	    model.addAttribute("total", service.getTotal(cri));
	      
	    int total = service.getTotal(cri);
	    log.info("total :" + total);
	      
	    model.addAttribute("pageMaker", new PageDTO(cri, total));
	      
	}
	
	// 등록   
	@PostMapping("/register")
	public String register(NoticeVO notice, RedirectAttributes rttr, Criteria cri) {
		log.info("register...." + notice);
			
		if(notice.getAttachList() != null) {
			log.info("************");
				
			for(BoardAttachVO vo : notice.getAttachList()) {
				log.info(vo);
				}
			}
			
		service.register(notice);
			
		rttr.addFlashAttribute("result", notice.getNno());	//번호를 rttr에 담고 아래 url을 탄다.
			
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
			
		return "redirect:/notice/list"; 	
	}	
	   
	// 등록 페이지로 이동
	@GetMapping("/register")
	public void register(Criteria cri, Model model) {
		model.addAttribute("cri", cri);
	}
	   
	// 보기, 수정
	@GetMapping({"/get", "/modify"})
	public void modify(Model model, @RequestParam("nno") Long nno, @ModelAttribute("cri") Criteria cri) {   
	   
		log.info("/get of /modify nno :");
	    
	    NoticeVO vo = service.get(nno);
	    log.info(vo);
	      
//	    String originPath= vo.getUploadPath();
//    	String modifiedPath = originPath.replace("\\", "/");	
//    	vo.setUploadPath(modifiedPath);
//    	model.addAttribute("notice", vo);
	    
	    if(vo.getUploadPath() == null) {
	    	  
	    	log.info("no file");
	    	
	    }else {
	    	log.info("file");
	    	
	    	String originPath= vo.getUploadPath();
	    	String modifiedPath = originPath.replace("\\", "/");	
	    	vo.setUploadPath(modifiedPath);
	    }
	       model.addAttribute("notice", vo);
	}
	
	// 수정
	@PostMapping("/modify")
	public String modify(NoticeVO notice, RedirectAttributes rttr,
	                     @ModelAttribute("cri") Criteria cri) {
		log.info("/modify...." + notice);
	      
	    if(service.modify(notice)) {
	    	rttr.addFlashAttribute("result", "success");    
		}		
	      
	    rttr.addAttribute("pageNum", 1);
	    rttr.addAttribute("amount", 10);
	      
	    return "redirect:/notice/list";
	}
	   
	// 삭제
	@PostMapping("/remove")   
	public String remove(@RequestParam("nno") Long nno, RedirectAttributes rttr, Criteria cri) {
		log.info("/remove...." + nno);
	      
	    if(service.remove(nno)) {
	       rttr.addFlashAttribute("result", "success");   
	    }
	      
	    rttr.addAttribute("pageNum", 1);
	    rttr.addAttribute("amount", 10);
	      
	    return "redirect:/notice/list";
	}
	
	// 첨부파일 리스트   
	@GetMapping(value = "/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<BoardAttachVO>> getAttachList(Long nno) {
		log.info("getAttachList :" + nno);
		return new ResponseEntity<>(service.getAttaList(nno), HttpStatus.OK);
	}
	
}
