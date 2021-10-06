package kr.co.subway.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.subway.domain.ProductVO;
import kr.co.subway.mapper.MainMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
public class MainServiceImple implements MainService {
	
	@Setter(onMethod_ = @Autowired)
	private MainMapper mapper; 
	
	@Override
	public List<ProductVO> getList(int pno) {
		log.info("get product list .... ");
		return mapper.getList(pno);
	}
 
}
