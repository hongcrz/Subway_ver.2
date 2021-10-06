package kr.co.subway.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.subway.domain.BoardAttachVO;
import kr.co.subway.domain.Criteria;
import kr.co.subway.domain.NoticeVO;
import kr.co.subway.mapper.BoardAttachMapper;
import kr.co.subway.mapper.NoticeMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired	
	private NoticeMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private BoardAttachMapper attachMapper;
	
	@Override
	public List<NoticeVO> getList(Criteria cri) {
		log.info("get List with criteria :" + cri);
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get Total Count...");
		return mapper.getTotalCount(cri);
	}

//	@Override
//	public List<NoticeVO> getList(Long nno) {
//		
//		return mapper.getList();
//	}
	
	@Transactional	//두개의 다른 테이블을 동시에 동작해야할때 사용한다.
	@Override
	public void register(NoticeVO notice) {
		log.info("register...." + notice);
		mapper.insertSelectKey(notice);
		
		//첨부파일 등록		
		if(notice.getAttachList() == null || notice.getAttachList().size() <= 0) {
			return;
		}
		
		for(BoardAttachVO vo : notice.getAttachList()) {
			vo.setNno(notice.getNno());
			attachMapper.insert(vo);
			
		}
		
		notice.getAttachList().forEach(attach -> {
			
		});
	}

	@Override
	public NoticeVO get(Long nno) {
		log.info("get...." + nno);
		return mapper.read(nno);
	}
	
	@Override
	public boolean remove(Long nno) {
		log.info("remove...." + nno);
		return mapper.delete(nno)==1;
	}
	
	@Transactional
	@Override
	public boolean modify(NoticeVO notice) {
		log.info("update...." + notice);
		
		//게시글에 달린 첨부파일들 전부 삭제
		attachMapper.deleteAll(notice.getNno());
				
		//게시글을 수정한다.
		boolean modifyResult = mapper.update(notice)==1;
				
		//게시글이 수정되면 첨부파일을 추가한다.
		//첨부파일 등록
		if(modifyResult && notice.getAttachList() != null && notice.getAttachList().size() > 0) {
			for(BoardAttachVO vo : notice.getAttachList()) {
				vo.setNno(notice.getNno());
				attachMapper.insert(vo);
			}
		}
				
		return modifyResult;
	}

	@Override
	public List<BoardAttachVO> getAttaList(Long nno) {
		log.info("get Attach List by nno :" + nno);
		return attachMapper.findByNno(nno);
		}
	}
