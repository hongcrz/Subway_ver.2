package kr.co.subway.mapper;

import java.util.List;

import kr.co.subway.domain.BoardAttachVO;

public interface BoardAttachMapper {
	public void insert(BoardAttachVO vo);
	public void delete(String uuid);
	public void deleteAll(Long nno);
	public List<BoardAttachVO> findByNno(Long nno);
}
