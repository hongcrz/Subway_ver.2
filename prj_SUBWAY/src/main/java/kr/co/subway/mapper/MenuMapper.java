package kr.co.subway.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.co.subway.domain.ProductVO;


public interface MenuMapper {
	
	// 메뉴 등록
	public int insert_menu(ProductVO product);
	// 메뉴 삭제
	public int remove_menu(int pno);
	
	// min_pno 이상 max_pno이하의 tbl_product 데이터 리스트를 들고온다
	// 샌드위치
	public List<ProductVO> getList_sandwich_all(@Param("min_pno")int min_pno, @Param("max_pno")int max_pno, @Param("min_pno2")int min_pno2, @Param("max_pno2")int max_pno2);
	public List<ProductVO> getList_sandwich_classic(@Param("min_pno")int min_pno, @Param("max_pno")int max_pno);
	public List<ProductVO> getList_sandwich_fresh(@Param("min_pno")int min_pno, @Param("max_pno")int max_pno);
	public List<ProductVO> getList_sandwich_premium(@Param("min_pno")int min_pno, @Param("max_pno")int max_pno);
	public List<ProductVO> getList_sandwich_plus(@Param("min_pno")int min_pno, @Param("max_pno")int max_pno);

	// 샌드위치
	public List<ProductVO> getList_unit_all(@Param("min_pno")int min_pno, @Param("max_pno")int max_pno, @Param("min_pno2")int min_pno2, @Param("max_pno2")int max_pno2);
	public List<ProductVO> getList_unit_classic(@Param("min_pno")int min_pno, @Param("max_pno")int max_pno);
	public List<ProductVO> getList_unit_fresh(@Param("min_pno")int min_pno, @Param("max_pno")int max_pno);
	public List<ProductVO> getList_unit_premium(@Param("min_pno")int min_pno, @Param("max_pno")int max_pno);
	public List<ProductVO> getList_unit_plus(@Param("min_pno")int min_pno, @Param("max_pno")int max_pno);
		
	// 샐러드
	public List<ProductVO> getList_salad_all(@Param("min_pno")int min_pno, @Param("max_pno")int max_pno, @Param("min_pno2")int min_pno2, @Param("max_pno2")int max_pno2);
	public List<ProductVO> getList_salad_classic(@Param("min_pno")int min_pno, @Param("max_pno")int max_pno);
	public List<ProductVO> getList_salad_fresh(@Param("min_pno")int min_pno, @Param("max_pno")int max_pno);
	public List<ProductVO> getList_salad_premium(@Param("min_pno")int min_pno, @Param("max_pno")int max_pno);

}
