package kr.co.subway.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.subway.domain.NoticeVO;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")	
public class NoticeMapperTests {
	
	@Autowired
	private NoticeMapper mapper;
	
//	@Test	
//	public void testGetList() {
//		
//		List<NoticeVO> list = mapper.getList();
//		for (NoticeVO noticeVO : list) {
//			log.info(noticeVO);
//		}
//	}
	
	
	@Test
	public void testRead() {
		log.info(mapper.read(12L));
	}
	
//	@Test
//	public void testDelete() {
//		log.info("DELETE COUNT :" + mapper.delete(7L));
//	}
	
//	@Test
//	public void testInsert() {
//		NoticeVO vo = new NoticeVO();
//		vo.setTitle("새 글23");
//		vo.setContent("새 내용23");
//		
//		mapper.insert(vo);
//		
//		log.info(vo);
//	}
	
//	@Test
//	public void testUpdate() {
//		NoticeVO vo = new NoticeVO();
//		vo.setNno(3L);
//		vo.setTitle("수정된 제목");
//		vo.setContent("수정된 내용");
//		
//		log.info("UPDATE COUNT :" + mapper.update(vo));	
//	}
	
//@Test
//public void testInsertSelectKey() {
//	NoticeVO vo = new NoticeVO();
//	vo.setTitle("새로 작성하는 select key2");
//	vo.setContent("새로 작성하는 내용 select key2");
//	
//	mapper.insertSelectKey(vo);
//	
//	log.info(vo);
//}
	
}
