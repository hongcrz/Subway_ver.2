package kr.co.subway.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data	//setter / getter 및 toString() 메소드 등
@AllArgsConstructor		//모든 필드를 입력받는 생성자	
@NoArgsConstructor		//기본 생성자(필드 x)
public class Criteria {
	// 페이징
	private int pageNum;
	private int amount;	//현재 페이지에 몇개씩 볼거냐
	
	// 검색기능
	private String type;	// 검색 타입
	private String keyword;	// 검색 키워드
		
	// getTypeArr() == 검색 조건을 한 글자로 하고, 배열로 만들어서 한 번에 처리합니다. MyBatis 동적 태그를 활용
	public String[] getTypeArr() {
	    return type == null? new String[] {}: type.split("");
	  }
}
