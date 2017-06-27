package IMPet.ajax.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;

@Controller
public class AjaxTest {
	
	@RequestMapping(value="testpage")
	public ModelAndView testpage() throws Exception {
		
		ModelAndView mav = new ModelAndView("Test/HeoEoNyung");
		mav.addObject("gab","ddd");
	
		
		return mav;
	}
	@RequestMapping(value="ajax")
	public ModelAndView test(CommandMap commandMap) throws Exception {
		
		ModelAndView mav = new ModelAndView("ajax/test1");
		mav.addObject("test", commandMap.getMap());
		
		return mav;
	}
	
	@RequestMapping(value="ajax2")
	public ModelAndView test1(CommandMap commandMap) throws Exception {
		
		
		ModelAndView mav = new ModelAndView("ajax/test2");
		mav.addObject("aa", commandMap.getMap());
		return mav;
	}
	
}
