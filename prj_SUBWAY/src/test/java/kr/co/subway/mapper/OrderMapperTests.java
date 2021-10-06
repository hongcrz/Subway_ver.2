package kr.co.subway.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.subway.domain.ProductVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class OrderMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private OrderMapper mapper;
	
	@Test
	public void testGetList() {
		log.info("test getList ..... ");
		
		List<ProductVO> list = mapper.getList(100, 199);
		for(ProductVO vo : list) {
			log.info(vo);
		}
	}

}
