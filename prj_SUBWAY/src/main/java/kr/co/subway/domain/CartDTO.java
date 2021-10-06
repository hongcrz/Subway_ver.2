package kr.co.subway.domain;

import lombok.Data;

@Data
public class CartDTO {
	private int cno;
	private String userid;
	private int pno;
	private String purl;
	private String pname;
	private int pprice;
	private int csize;
	private String bread;
	private String toasting;
	private String cheese;
	private String choption;
	private String vege;
	private String sauce;
	private String addoption;
	private String moption;
	private String setoption;
	private String useraddress;
	private int money;
}
