package kr.co.subway.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.subway.domain.ProductVO;
import kr.co.subway.domain.SnoticeVO;
import kr.co.subway.mapper.OrderMapper;
import kr.co.subway.mapper.SnoticeMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
public class SnoticeServiceImple implements SnoticeService {
	
	@Setter(onMethod_ = @Autowired)
	private SnoticeMapper mapper;
	
	@Override
	public List<SnoticeVO> getList(){
		return mapper.getList();
	}
}


