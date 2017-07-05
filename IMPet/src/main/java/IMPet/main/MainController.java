package IMPet.main;


import IMPet.module.CommandMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	
	
	ModelAndView mav = new ModelAndView();
	
	
	
	@RequestMapping(value="/Main")
	public ModelAndView mainForm(){


		System.out.println("메인");

		
		mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping(value="/Info")
	public ModelAndView mainInfo(){


		System.out.println("회사소개");

		
		mav.setViewName("Info");
		return mav;
	}
	
	@RequestMapping(value="/Way")
	public ModelAndView mainWay(){


		System.out.println("찾아오시는길");

		
		mav.setViewName("Way");
		return mav;
	}
	
	
	
	@RequestMapping(value="/anooymik")
	public ModelAndView anooymik(CommandMap commandMap){

		
	
		System.out.println("김윤아");
	
	
		
		mav.setViewName("Test/anooymik");
		return mav;
	}
	
	
	@RequestMapping(value="/HeoEoNyung")
	public ModelAndView HeoEoNyung(CommandMap commandMap){

		
	
		System.out.println("허어녕");
	
	
		
		mav.setViewName("Test/HeoEoNyung");
		return mav;
	}
	
	
	
	
	
	@RequestMapping(value="/anyeah")
	public ModelAndView anyeah(CommandMap commandMap){

		
	
		System.out.println("안예아");
	
	
		
		mav.setViewName("Test/anyeah");
		return mav;
	}
	
	
	
	@RequestMapping(value="/PolaDuyu017")
	public ModelAndView PolaDuyu017(CommandMap commandMap){

		
	
		System.out.println("이동훈");
	
	
		
		mav.setViewName("Test/PolaDuyu017");
		return mav;
	}
	
	@RequestMapping(value="/PolaDuyu017Tabs")
	public ModelAndView PolaDuyu01722(CommandMap commandMap){

		
	
		System.out.println("이동훈");
	
	
		
		mav.setViewName("Test/PolaDuyu017Tabs");
		return mav;
	}
	
	@RequestMapping(value="/PolaDuyu017jsp1")
	public ModelAndView PolaDuyu017jsp1(CommandMap commandMap){

		
	
		System.out.println("이동훈");
	
	
		
		mav.setViewName("Test/test1");
		return mav;
	}
	
	@RequestMapping(value="/PolaDuyu017jsp2")
	public ModelAndView PolaDuyu017jsp2(CommandMap commandMap){

		
	
		System.out.println("이동훈");
	
	
		
		mav.setViewName("Test/test2");
		return mav;
	}
	
	
	
	@RequestMapping(value="/KyuyeonAhn")
	public ModelAndView KyuyeonAhn(CommandMap commandMap){

		
	
		System.out.println("안규연");
	
	
		
		mav.setViewName("Test/KyuyeonAhn");
		return mav;
	}
	
	
	@RequestMapping(value="/utopiazn")
	public ModelAndView utopiazn(CommandMap commandMap){

		
	
		System.out.println("장조성");
	
		int a = 0;
		mav.addObject("dd",a );
		mav.setViewName("Test/utopiazn");
		return mav;
	}
	
}
