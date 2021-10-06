package kr.co.subway.mapper;

import java.util.List;

import kr.co.subway.domain.Criteria;
import kr.co.subway.domain.NoticeVO;

public interface NoticeMapper {
	
	public List<NoticeVO> getList();
	public List<NoticeVO> getListWithPaging(Criteria cri);
	//데이터 출력
	public NoticeVO read(Long nno);
	//데이터 삭제
	public int delete(Long nno);
	//삽입
	public void insert(NoticeVO notice);
	//수정 업데이트
	public int update(NoticeVO notice);
	//원하는 값 리턴 받아서 적용
	public void insertSelectKey(NoticeVO notice);
	//테이블 내 전체 데이터 개수 구하기
	public int getTotalCount(Criteria cri);
}
