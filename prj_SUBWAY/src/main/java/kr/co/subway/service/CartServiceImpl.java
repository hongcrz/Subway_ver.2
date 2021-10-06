package kr.co.subway.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.subway.domain.CartDTO2;
import kr.co.subway.mapper.CartMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CartServiceImpl implements CartService {
	@Setter(onMethod_ = @Autowired)
	private CartMapper mapper; 
	
	@Override
	public List<CartDTO2> listCart(String userid){
		return mapper.listCart(userid);
	}
	
	
}
