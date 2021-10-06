package kr.co.subway.domain;

import lombok.Data;

@Data
public class CartDTO2 {
//	private int cart_id;
//	private String userid;
//	private int pno;
//	private String purl;
//	private String pname;
//	private int pprice;
//	private int money;
	
	private int cno;
	private String userid;
	private int pno;
	
	// custom 영역 - pno 값을 가져가므로 int로 처리합니다 
	private int size;
	private int bread;
	private boolean isToasting;	// 1: yes
	private int cheese;
	private int	choption;		// default : null
	private int[] vege;			// 다중선택 가능 
	private int[] sauce;		// 다중선택 가능 
	private int[] option; 		// default : null && 다중선택 가능
	private int[] moption;		// default : null && 다중선택 가능  
	private int setType;
	private int setBev;			// default : null
	private int setCoo;			// default : null
	
	private int total_amount;
	private int total_price;
}