package kr.co.subway.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.subway.security.domain.CustomUserDetails;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberServiceTests {

	@Setter(onMethod_ = @Autowired)
	private MemberService service;
	
	@Test
	public void testRegister() {
		CustomUserDetails user = new CustomUserDetails();
		user.setUserid("testUser2");
		user.setUserpw("1234");
		
		service.register(user);
	}
}
