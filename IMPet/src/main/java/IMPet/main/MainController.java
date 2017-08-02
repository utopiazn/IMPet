package IMPet.main;


import IMPet.member.MemberService;
import IMPet.module.CommandMap;
import IMPet.petShop.item.ItemService;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	
	
	ModelAndView mav = new ModelAndView();
	

	
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	@Resource(name="itemService")
	private ItemService itemService;
	
	
	
	@RequestMapping(value="/Main")
	public ModelAndView mainForm() throws Exception{


		
		List<Map<String, Object>> list = itemService.selectBestMain(); 
		
		mav.addObject("bestList", list);
		
		mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping(value="/Info")
	public ModelAndView mainInfo(){


		mav.setViewName("Info");
		return mav;
	}
	
	@RequestMapping(value="/Way")
	public ModelAndView mainWay(){
	
		mav.setViewName("Way");
		return mav;
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/Loading")
	public ModelAndView Loading(){
		
		mav.setViewName("loading");
		return mav;
	}
	
	
	@RequestMapping(value="/Egg")
	public ModelAndView Egg(){
		
		mav.setViewName("egg");
		return mav;
	}
}
