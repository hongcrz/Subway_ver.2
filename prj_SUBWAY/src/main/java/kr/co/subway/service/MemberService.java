package kr.co.subway.service;

import kr.co.subway.security.domain.CustomUserDetails;

public interface MemberService {
	
	// ID search : userid에 해당하는 객체의 개수를 받아온다(있으면 1, 없으면 0)
	public int searchByID(String userid);
	
	// join : 회원 정보 등록 
	public void register(CustomUserDetails user);
}
