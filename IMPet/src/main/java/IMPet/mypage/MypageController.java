package IMPet.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class MypageController {
	
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value="/MyPage")
	public ModelAndView mypage(){
		
		System.out.println("마이페이지");
		
		mav.setViewName("MyPage");
		return mav;
	}
	
	@RequestMapping(value="/AdminPage")
	public ModelAndView adminPage(){
		
		System.out.println("관리자페이지");
		
		mav.setViewName("AdminPage");
		return mav;
	}

}
