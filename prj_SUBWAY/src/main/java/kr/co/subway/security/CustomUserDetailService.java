package kr.co.subway.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import kr.co.subway.mapper.MemberMapper;
import kr.co.subway.security.domain.CustomUserDetails;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailService implements UserDetailsService {
	
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String userid) throws UsernameNotFoundException {
		
		log.warn("READ USER BY userid : " + userid);
		CustomUserDetails user = mapper.read(userid);
		
		log.warn("USER : " + user);
		
		return user == null ? null : user;
	}

}
