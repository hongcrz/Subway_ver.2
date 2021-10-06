package kr.co.subway.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.subway.security.domain.CustomUserDetails;
import kr.co.subway.service.MemberService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberService service; 
	
	@GetMapping("/login")
	public void goLogin() {
		log.info("/member/login ..... ");
	}
	
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth) {
		log.info("access Denied : " + auth);
	}
	
	@GetMapping("/join")
	public void goJoin() {
		log.info("/member/join ...... ");
	}
	
	@PostMapping("/join")
	public String join(CustomUserDetails user, RedirectAttributes rttr) {
		log.info("insert user data ..... " + user);

		service.register(user);
		
//		rttr.addFlashAttribute("result", user.getUserid());
		return "redirect:/";
	}
	
	@ResponseBody	// ajax	사용 
	@PostMapping("/checkID")
	public String searchByID(@RequestParam String userid) {
		log.info("search ID : " + userid);
		log.info("cnt : " + service.searchByID(userid));
		
		return String.valueOf(service.searchByID(userid));
	}
	
			
}
