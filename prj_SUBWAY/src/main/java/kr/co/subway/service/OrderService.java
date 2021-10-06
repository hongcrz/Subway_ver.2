package kr.co.subway.service;

import java.util.List;

import kr.co.subway.domain.ProductVO;

public interface OrderService {
	public List<ProductVO> getList(int min_pno, int max_pno);
}
