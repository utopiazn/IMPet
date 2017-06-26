package IMPet.petShop.adminItem;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/PetShop")
public class AdminItemController {
	
	ModelAndView mav = new ModelAndView();
	
	//펫샵관리자상품추가폼
	@RequestMapping(value="/AdminItemWriteForm")
	public ModelAndView mainForm() {

		
		System.out.println("펫샵관리자상품추가폼");
	
		
		mav.setViewName("AdminItemWriteForm");
		return mav;
	}

}
