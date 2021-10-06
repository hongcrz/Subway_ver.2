package kr.co.subway.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class OrderServiceTests {
	
	
	@Setter(onMethod_ = @Autowired)
	private OrderService service;
	
	
	@Test
	public void testGetList() {
		log.info("test get List .... ");
		log.info(service.getList(100, 199));
	}
}
