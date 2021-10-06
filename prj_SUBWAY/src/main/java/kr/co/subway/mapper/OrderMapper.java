package kr.co.subway.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.co.subway.domain.ProductVO;

public interface OrderMapper {
	// pno 이상의 tbl_product 에 있는 데이터 리스트를 들고온다 
	public List<ProductVO> getList(@Param("min_pno") int min_pno, @Param("max_pno") int max_pno);
	
}
