package IMPet.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/MyPage")
public class MypageController {
	
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value="/Main")
	public ModelAndView mypage(){
		
		System.out.println("마이페이지");
		
		mav.setViewName("MyPage");
		return mav;
	}

}
