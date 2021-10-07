package kr.co.subway.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/mysub/*")
public class MysubController {
	
//	@RequestMapping(value = "/")
//	public String main(Model model) {
//		log.info("go to mysub ..... ");
//		return "/mysub/mysub";
//	}
}	