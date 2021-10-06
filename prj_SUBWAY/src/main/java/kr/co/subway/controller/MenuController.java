package kr.co.subway.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.subway.domain.ProductVO;
import kr.co.subway.service.MenuService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/menu/*")
public class MenuController {
	
	@Autowired
	private MenuService service;
	
	// 메뉴 등록
		@PostMapping("/register")
		public String register(ProductVO product){
			log.info("test register.........");
			log.info(product);
		      // 실제 데이터 삽입 완료
		      service.insert_menu(product);

		      return "redirect:/menu/sandwich";
		}
		// 메뉴 삭제
		@PostMapping("/remove")
		public String remove(@RequestParam("pno") int pno,RedirectAttributes rttr) {
			log.info("/remove..." + pno);
			
			 if(service.remove_menu(pno)) {
		         rttr.addFlashAttribute("result", "success");   
		      }
			
			return "redirect:/menu/sandwich";
		}
	
	// 페이지 sandwich 에서 불러오기 위한 조건을 전달
	@GetMapping("/sandwich")
		public void sandwich(Model model) {
			log.info("go /menu/sandwich ...... ");
			
			// 샌드위치 all 카테고리 DB를 가져오기 위한 pno 값
			model.addAttribute("list_sandwich_all", service.getList_sandwich_all(100,199,600,649));
			
			// 샌드위치 클래식 카테고리 DB를 가져오기 위한 pno 값
			model.addAttribute("list_sandwich_classic", service.getList_sandwich_classic(110,129));
			
			// 샌드위치 프레쉬&라이트 카테고리 DB를 가져오기 위한 pno 값
			model.addAttribute("list_sandwich_fresh", service.getList_sandwich_fresh(130,149));
			
			// 샌드위치 프리미엄 카테고리 DB를 가져오기 위한 pno 값
			model.addAttribute("list_sandwich_premium", service.getList_sandwich_premium(150,169));
			
			// 샌드위치 plus 카테고리 DB를 가져오기 위한 pno 값
			model.addAttribute("list_sandwich_plus", service.getList_sandwich_plus(610,620));
		
	}
	
	@GetMapping("/morning")
	   public void morning() {
	      log.info("go /menu/morning ...... ");
	   }
	   
	   @GetMapping("/salad")
	   public void salad(Model model) {
	      log.info("go /menu/salad ...... ");
	      
	      	// 샐러드 all 카테고리 DB를 가져오기 위한 pno 값
	   		model.addAttribute("list_salad_all", service.getList_salad_all(200,300,600,649));
	   			
	   		// 샐러드 클래식 카테고리 DB를 가져오기 위한 pno 값
	   		model.addAttribute("list_salad_classic", service.getList_salad_classic(210,229));
	   			
	   		// 샐러드 프레쉬&라이트 카테고리 DB를 가져오기 위한 pno 값
	   		model.addAttribute("list_salad_fresh", service.getList_salad_fresh(230,249));
	   			
	   		// 샐러드 프리미엄 카테고리 DB를 가져오기 위한 pno 값
	   		model.addAttribute("list_salad_premium", service.getList_salad_premium(250,269));
	   		
	   		// 샐러드 plus 카테고리 DB를 가져오기 위한 pno 값
			model.addAttribute("list_salad_plus", service.getList_sandwich_plus(610,620));
	      
	    
	   }
	   
	   @GetMapping("/sidedrink")
	   public void sidedrink() {
	      log.info("go /menu/salad ...... ");
	   }
	   
	   @GetMapping("/unit")
	   public void unit(Model model) {
	      log.info("go /menu/unit ...... ");
	      
	      		// 샌드위치 all 카테고리 DB를 가져오기 위한 pno 값
	   			model.addAttribute("list_unit_all", service.getList_sandwich_all(810,840,810,840));
	   			
	   			// 샌드위치 클래식 카테고리 DB를 가져오기 위한 pno 값
	   			model.addAttribute("list_unit_classic", service.getList_sandwich_classic(810,811));
	   			
	   			// 샌드위치 프레쉬&라이트 카테고리 DB를 가져오기 위한 pno 값
	   			model.addAttribute("list_unit_fresh", service.getList_sandwich_fresh(812,813));
	   			
	   			// 샌드위치 프리미엄 카테고리 DB를 가져오기 위한 pno 값
	   			model.addAttribute("list_unit_premium", service.getList_sandwich_premium(814,817));
	   			
	   			// 샌드위치 plus 카테고리 DB를 가져오기 위한 pno 값
	   			model.addAttribute("list_unit_plus", service.getList_sandwich_plus(818,819));
	      
	   }
	   
	   @GetMapping("/catering")
	   public void catering() {
	      log.info("go /menu/catering ...... ");
	   }
	   			
}
