package kr.co.subway.mapper;


import java.util.List;

import kr.co.subway.domain.CartDTO2;

public interface CartMapper {
	public List<CartDTO2> listCart(String userid);
}
