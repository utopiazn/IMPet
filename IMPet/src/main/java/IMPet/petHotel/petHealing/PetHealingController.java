package IMPet.petHotel.petHealing;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="PetHotel")
public class PetHealingController {
	
	//호텔 힐링 리스트
	@RequestMapping(value="HealingList")
	public ModelAndView healingList(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 힐링 리스트");
		
		mav.setViewName("PetHotel_HealingList");
		
		return mav;
	}
	
	//호텔 힐링 상세
	@RequestMapping(value="HealingView")
	public ModelAndView healingView(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 힐링 상세");
		
		mav.setViewName("PetHotel_HealingView");
		
		return mav;
	}
	
	//호텔 힐링 추가폼
	@RequestMapping(value="HealingInsertForm")
	public ModelAndView healingInsertForm(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 힐링 추가 폼");
		
		mav.setViewName("PetHotel_HealingInsertForm");
		
		return mav;
	}

	//호텔 힐링 추가
	@RequestMapping(value="HealingInsert")
	public ModelAndView healingInsert(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 힐링 추가");
		
		mav.setViewName("redirect:HealingList");
		
		return mav;
	}

	//호텔 힐링 수정폼
	@RequestMapping(value="HealingModifyForm")
	public ModelAndView healingModifyForm(){
		
		ModelAndView mav = new ModelAndView();

		System.out.println("호텔 힐링 수정 폼");
		
		mav.setViewName("PetHotel_HealingModifyForm");
		
		return mav;
	}

	//호텔 힐링 수정
	@RequestMapping(value="HealingModify")
	public ModelAndView healingModify(){
		
		ModelAndView mav = new ModelAndView();

		System.out.println("호텔 힐링 수정");
		
		mav.setViewName("redirect:HealingView");
		
		return mav;
	}

	//호텔 힐링 삭제
	@RequestMapping(value="HealingDelete")
	public ModelAndView healingDelete(){
		
		ModelAndView mav = new ModelAndView();

		System.out.println("호텔 힐링 삭제");
		
		mav.setViewName("redirect:HealingList");
		
		return mav;
	}
}
