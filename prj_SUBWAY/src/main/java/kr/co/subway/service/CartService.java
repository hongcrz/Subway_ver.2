package kr.co.subway.service;

import java.util.List;

import kr.co.subway.domain.CartDTO2;

public interface CartService {
	public List<CartDTO2> listCart(String userid); //장바구니 목록
	
}
