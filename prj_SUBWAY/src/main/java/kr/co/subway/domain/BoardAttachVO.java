package kr.co.subway.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Data
public class BoardAttachVO {
	private String uuid, uploadPath, fileName;
	private boolean fileType;
	private Long nno;
}
