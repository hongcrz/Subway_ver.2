package kr.co.subway.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.subway.security.domain.CustomUserDetails;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {
	
	@Autowired
	private MemberMapper mapper;
	
	@Test
	public void testRead() {
		CustomUserDetails user = mapper.read("admin29");
		log.info("get ...... " + user);
	}
	
//	@Test
//	public void testSearchByID() {
//		log.info("search by userID");
//		//log.info(".......... there is " + mapper.searchByID("USER00") + " data in DB");
//	}
	
//	@Test
//	public void testInsert() {
//		CustomUserDetails user = new CustomUserDetails();
//		user.setUserid("customUser07");
//		user.setUserpw("1234");
//		user.setUname("홍길동");
//		
//		mapper.insert(user);
//		log.info("insert CumstomUser .... " + user);
//	}
}
