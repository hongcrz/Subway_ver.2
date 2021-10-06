package kr.co.subway.domain;

import java.sql.Date;
import java.util.List;


import lombok.Data;

@Data
public class NoticeVO {
	private Long nno;
	private String title;
	private String content;
	private Date regdate;
	private String url;
	
	private List<BoardAttachVO> attachList;
	
	// inner join했기 때문에 추가
	private String uuid;
	private String fileName;
	private String uploadPath;
}