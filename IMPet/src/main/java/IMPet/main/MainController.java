package IMPet.main;


import IMPet.module.CommandMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	
	
	ModelAndView mav = new ModelAndView();
	
	
	
	@RequestMapping(value="/main")
	public ModelAndView mainForm(HttpSession session){

		
		
		//session.getValue(arg0)
		
		System.out.println("메인");
	
		//ProjectUtil rcs = new ProjectUtil(session);		
		//rcs.roomClassSession();
		
		
		//mav.addObject(session);
		
		
		//mav.addObject("memberId", null);
		
		mav.setViewName("main");
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
	
	
	
	@RequestMapping(value="/KyuyeonAhn")
	public ModelAndView KyuyeonAhn(CommandMap commandMap){

		
	
		System.out.println("안규연");
	
	
		
		mav.setViewName("Test/KyuyeonAhn");
		return mav;
	}
	
	
	@RequestMapping(value="/utopiazn")
	public ModelAndView utopiazn(CommandMap commandMap){

		
	
		System.out.println("장조성");
	
	
		
		mav.setViewName("Test/utopiazn");
		return mav;
	}
	
	
	
	
	

	/*
	
	private SampleService sampleService;
	
	
	@RequestMapping(value="/sample/openBoardList.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception{
		
		ModelAndView mv = new ModelAndView("/sample/boardList");
		
		List<Map<String,Object>> list = sampleService.selectBoardList(commandMap.getMap());
		
		mv.addObject("list",list);
				
		return mv;	
	}
	
	
	@RequestMapping(value="/sample/openBoardList.do")
	public String openBoardList(CommandMap commandMap, Model model) throws Exception{
		
		
		List<Map<String,Object>> list = sampleService.selectBoardList(commandMap.getMap());
		
		model.addAttribute("list",list);
				
		return "/sample/boardList";	
	}
	
	
	*/
	
	

/*	
	@RequestMapping(value="/main2")
	public ModelAndView mainForm1(){

		System.out.println("硫붿씤 �럹�씠吏�");
		
		
		
		mav.setViewName("main4");
		return mav;
	}
		*/
	/*
	@RequestMapping("/alliance/partnerApple")
	public ModelAndView partnerApple(HttpServletRequest request, @RequestParams Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		commandMap.put("CSL_FAQ_BRAND_CC", Const.BRAND_APPLE);
		mv.addObject("faqList", this.faqService.selectFaqAllianceList(commandMap));
		
		return mv.addObject("commandMap", commandMap);
	}
	
	*    <c:if test="${empty commandMap.searchKeyword }">
	*
	*/

	
}
