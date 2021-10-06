package kr.co.subway.mapper;

import java.util.List;

import kr.co.subway.domain.ProductVO;

public interface MainMapper {
	// pno 이상의 tbl_product 에 있는 데이터 리스트를 들고온다 
	public List<ProductVO> getList(int pno);
		
}
