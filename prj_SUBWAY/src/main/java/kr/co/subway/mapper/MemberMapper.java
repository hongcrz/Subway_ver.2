package kr.co.subway.mapper;

import kr.co.subway.security.domain.CustomUserDetails;

public interface MemberMapper {
	// login : userid를 통해 유저객체를 반환  
	public CustomUserDetails read(String userid);
	
	// search ID : userid를 검색해서 해당하는 객체의 수 반환 
	public int searchByID(String userid);
	
	// join : 유저객체를 던져서 DB에 저장 
	public void insert(CustomUserDetails user);
}
