package kr.co.subway.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.subway.service.CartService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/cart/*")
public class CartController {
	@Autowired
	private CartService service;

	@GetMapping("/cartlist")
	public void goCart(HttpServletRequest request, Model model) {
		log.info("go to /cart/cartlist ..... ");

		
		HttpSession session=request.getSession(); 
		String userid="123456";
		
		model.addAttribute("listcart",service.listCart(userid));
		

	}
	
}
