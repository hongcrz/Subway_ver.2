package kr.co.subway.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.subway.domain.ProductVO;
import kr.co.subway.service.CartService;
import kr.co.subway.service.OrderService;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/order/*")
public class OrderController {
	
	@Setter(onMethod_ = @Autowired)
	private OrderService service;
	
	@GetMapping("/orderPage")
	public void goOrderPage(Model model) {
		log.info("open /order/orderPage ..... ");
		
		// base product list 
		model.addAttribute("prlist", service.getList(100, 199));
		
		// bread list
		model.addAttribute("brlist", service.getList(300, 349));
		
		// cheese list 
		model.addAttribute("chlist", service.getList(350, 359));
		model.addAttribute("choplist", service.getList(360, 399));
		
		// vege list
		model.addAttribute("vegelist", service.getList(400, 499));
		
		// seasoning list
		model.addAttribute("sslist", service.getList(500, 599));
		
		// general option list
		model.addAttribute("goplist", service.getList(600, 649));
		
		// meat option list
		model.addAttribute("moplist", service.getList(650, 699));
		
		// set list
		model.addAttribute("setTypelist", service.getList(700, 729));
		model.addAttribute("setBevlist", service.getList(730, 749));
		model.addAttribute("setCoolist", service.getList(750, 799));
		
	}
	
	
	@ResponseBody
	@GetMapping("/tabswitch")
	public List<ProductVO> tabswitch(Model model, 
					@RequestParam int min_pno, @RequestParam int max_pno) {
		log.info("min_pno : " + min_pno + " & max_pno : " + max_pno);
		model.addAttribute("prlist", service.getList(min_pno, max_pno));
		
		return service.getList(min_pno, max_pno);
	}
	
	
	@Autowired
	private CartService service2;
	
	@GetMapping("/cartPage")
	public void goCartPage(HttpServletRequest request, Model model) {
		log.info("go to /order/cartPage ..... ");
		
		
		HttpSession session=request.getSession(); 
		String userid="123456";
		
		model.addAttribute("listcart",service2.listCart(userid));
		

	}
	
}
