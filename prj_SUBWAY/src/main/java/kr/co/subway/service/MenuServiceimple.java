package kr.co.subway.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.subway.domain.ProductVO;
import kr.co.subway.mapper.MenuMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
public class MenuServiceimple implements MenuService{
	
	@Setter(onMethod_ = @Autowired)
	private MenuMapper mapper; 
	
	@Override
	public List<ProductVO> getList_sandwich_all(int min_pno, int max_pno, int min_pno2, int max_pno2) {
		log.info("get product list .... ");
		return mapper.getList_sandwich_all(min_pno, max_pno, min_pno2, max_pno2);
	}
	@Override
	public List<ProductVO> getList_sandwich_classic(int min_pno, int max_pno) {
		log.info("get product list .... ");
		return mapper.getList_sandwich_classic(min_pno, max_pno);
	}
	@Override
	public List<ProductVO> getList_sandwich_fresh(int min_pno, int max_pno) {
		log.info("get product list .... ");
		return mapper.getList_sandwich_fresh(min_pno, max_pno);
	}
	@Override
	public List<ProductVO> getList_sandwich_premium(int min_pno, int max_pno) {
		log.info("get product list .... ");
		return mapper.getList_sandwich_premium(min_pno, max_pno);
	}
	@Override
	public List<ProductVO> getList_sandwich_plus(int min_pno, int max_pno) {
		log.info("get product list .... ");
		return mapper.getList_sandwich_premium(min_pno, max_pno);
	}
	
	// 메뉴 등록
	@Override
	public int insert_menu(ProductVO product) {
		log.info("register...." + product);
		return mapper.insert_menu(product);
	}
	// 메뉴 삭제
	@Override
	public boolean remove_menu(int pno) {
		log.info("remove...." + pno);
		return mapper.remove_menu(pno)==1;
	}
	
	
	@Override
	public List<ProductVO> getList_salad_all(int min_pno, int max_pno,int min_pno2, int max_pno2) {
		log.info("get product list .... ");
		return mapper.getList_salad_all(min_pno, max_pno, min_pno2, max_pno2);
	}
	@Override
	public List<ProductVO> getList_salad_classic(int min_pno, int max_pno) {
		log.info("get product list .... ");
		return mapper.getList_salad_classic(min_pno, max_pno);
	}
	@Override
	public List<ProductVO> getList_salad_fresh(int min_pno, int max_pno) {
		log.info("get product list .... ");
		return mapper.getList_salad_fresh(min_pno, max_pno);
	}
	@Override
	public List<ProductVO> getList_salad_premium(int min_pno, int max_pno) {
		log.info("get product list .... ");
		return mapper.getList_salad_premium(min_pno, max_pno);
	}


	
	
	@Override
	public List<ProductVO> getList_unit_all(int min_pno, int max_pno, int min_pno2, int max_pno2) {
		log.info("get product list .... ");
		return mapper.getList_sandwich_all(min_pno, max_pno, min_pno2, max_pno2);
	}
	@Override
	public List<ProductVO> getList_unit_classic(int min_pno, int max_pno) {
		log.info("get product list .... ");
		return mapper.getList_sandwich_classic(min_pno, max_pno);
	}
	@Override
	public List<ProductVO> getList_unit_fresh(int min_pno, int max_pno) {
		log.info("get product list .... ");
		return mapper.getList_sandwich_fresh(min_pno, max_pno);
	}
	@Override
	public List<ProductVO> getList_unit_premium(int min_pno, int max_pno) {
		log.info("get product list .... ");
		return mapper.getList_sandwich_premium(min_pno, max_pno);
	}
	@Override
	public List<ProductVO> getList_unit_plus(int min_pno, int max_pno) {
		log.info("get product list .... ");
		return mapper.getList_sandwich_premium(min_pno, max_pno);
	}
}
