package kr.co.subway.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.subway.service.MainService;
import kr.co.subway.service.NoticeService;
import kr.co.subway.service.OrderService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MainController {
	
	@Autowired
	private MainService service;
	
	@Autowired
	private OrderService Orservice;
	
	@Autowired
	private NoticeService service_notice;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(Model model) {
		log.info("go to mainpage ..... ");
		//model.addAttribute("list", service.getList(100));
		
		model.addAttribute("morning", Orservice.getList(850, 899));
		model.addAttribute("preminum", Orservice.getList(150, 169));
		model.addAttribute("freshhh", Orservice.getList(130, 149));
		model.addAttribute("classic", Orservice.getList(100, 129));
		
		
		model.addAttribute("notice1", service_notice.get(1L));
		model.addAttribute("notice2", service_notice.get(2L));
		model.addAttribute("notice3", service_notice.get(3L));
		
		return "main";
	}
	
	@RequestMapping(value = "/mysub")
	public String goMySub(Model model) {
		log.info("go to mysub ..... ");
		return "/mysub/mysub";
	}
	
	
}	