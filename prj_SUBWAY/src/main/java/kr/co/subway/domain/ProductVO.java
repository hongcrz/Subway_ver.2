package kr.co.subway.domain;

import lombok.Data;

@Data
public class ProductVO {
	private int pno;
	private String pname;
	private String pname_eng;
	private int pprice;
	private String purl;
	private String pdesc;
	private int pcal;
}
