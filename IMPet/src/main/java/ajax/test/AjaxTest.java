package ajax.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AjaxTest {
	
	@RequestMapping(value="ajax")
	public ModelAndView test() throws Exception {
		
		ModelAndView mav = new ModelAndView("ajax/test1");
		
		return mav;
	}
	
	@RequestMapping(value="ajax2")
	public ModelAndView test1(String a) throws Exception {
		
		ModelAndView mav = new ModelAndView("ajax/test2");
		mav.addObject("test", a);
		return mav;
	}
	
}
