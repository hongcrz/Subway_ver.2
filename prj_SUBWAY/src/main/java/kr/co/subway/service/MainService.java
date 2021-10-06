package kr.co.subway.service;

import java.util.List;

import kr.co.subway.domain.ProductVO;

public interface MainService {
	public List<ProductVO> getList(int pno);
}
