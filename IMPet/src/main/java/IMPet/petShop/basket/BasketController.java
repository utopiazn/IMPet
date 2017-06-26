package IMPet.petShop.basket;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/PetShop")
public class BasketController {
	
	ModelAndView mav = new ModelAndView();
	
	//펫샵장바구니리스트
	@RequestMapping(value="/BasketList")
	public ModelAndView mainForm() {

		
		System.out.println("펫샵장바구니리스트");
	
		
		mav.setViewName("BasketList");
		return mav;
	}

}
