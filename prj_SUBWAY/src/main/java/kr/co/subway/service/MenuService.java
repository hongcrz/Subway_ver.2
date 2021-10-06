package kr.co.subway.service;

import java.util.List;


import kr.co.subway.domain.ProductVO;

public interface MenuService {
	// 샌드위치
	// 메뉴 샌드위치 all 카테고리
	public List<ProductVO> getList_sandwich_all(int min_pno, int max_pno , int min_pno2, int max_pno2);
	// 메뉴 샌드위치 classic 카테고리
	public List<ProductVO> getList_sandwich_classic(int min_pno, int max_pno);
	// 메뉴 샌드위치 fresh 카테고리
	public List<ProductVO> getList_sandwich_fresh(int min_pno, int max_pno);
	// 메뉴 샌드위치 premium 카테고리
	public List<ProductVO> getList_sandwich_premium(int min_pno, int max_pno);
	// 메뉴 샌드위치 추가메뉴 카테고리
	public List<ProductVO> getList_sandwich_plus(int min_pno, int max_pno);
	
	// 메뉴 등록
	public int insert_menu(ProductVO product);
	// 메뉴 삭제
	public boolean remove_menu(int pno);
	
	
	// 샐러드
	// 메뉴 샌드위치 all 카테고리
	public List<ProductVO> getList_salad_all(int min_pno, int max_pno, int min_pno2, int max_pno2);
	// 메뉴 샌드위치 classic 카테고리
	public List<ProductVO> getList_salad_classic(int min_pno, int max_pno);
	// 메뉴 샌드위치 fresh 카테고리
	public List<ProductVO> getList_salad_fresh(int min_pno, int max_pno);
	// 메뉴 샌드위치 premium 카테고리
	public List<ProductVO> getList_salad_premium(int min_pno, int max_pno);
	
	
	// 유닛 랩
	// 메뉴 유닛 all 카테고리
	public List<ProductVO> getList_unit_all(int min_pno, int max_pno , int min_pno2, int max_pno2);
	// 메뉴 유닛 classic 카테고리
	public List<ProductVO> getList_unit_classic(int min_pno, int max_pno);
	// 메뉴 유닛 fresh 카테고리
	public List<ProductVO> getList_unit_fresh(int min_pno, int max_pno);
	// 메뉴 유닛 premium 카테고리
	public List<ProductVO> getList_unit_premium(int min_pno, int max_pno);
	// 메뉴 유닛 추가메뉴 카테고리
	public List<ProductVO> getList_unit_plus(int min_pno, int max_pno);

}
