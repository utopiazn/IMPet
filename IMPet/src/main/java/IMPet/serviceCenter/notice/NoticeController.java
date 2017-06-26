package IMPet.serviceCenter.notice;

import IMPet.module.CommandMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/ServiceCenter")
public class NoticeController {
	
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value="/main2")
	public ModelAndView mainForm33(){


		System.out.println("메인");

		
		mav.setViewName("ServiceCenter");
		return mav;
	}
	
	
	
}
