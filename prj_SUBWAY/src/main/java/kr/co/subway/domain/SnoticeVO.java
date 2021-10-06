package kr.co.subway.domain;

import lombok.Data;

@Data
public class SnoticeVO {
   private int sno;
   private String sname;
   private String sadress;
   private String stel;
   private String Latitude; //위도
   private String Hardness; //경도
}
