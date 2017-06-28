package IMPet.community.event;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping(value="/Community")
public class EventController {

	
	ModelAndView mav = new ModelAndView();
	
	
	//이벤트 리스트
	@RequestMapping(value="/EventList")
	public ModelAndView EventList(){


		System.out.println("이벤트 리스트");

		
		mav.setViewName("EventList");
		return mav;
	}
	
	
	//이벤트 상세보기
	@RequestMapping(value="/EventView")
	public ModelAndView EventView(){


		System.out.println("이벤트 상세보기");

		
		mav.setViewName("EventView");
		return mav;
	}
	
	
		
	//이벤트 추가 폼
	@RequestMapping(value="/EventForm")
	public ModelAndView EventForm(){


		System.out.println("이벤트 추가 폼");

		
		mav.setViewName("EventForm");
		return mav;
	}
	
	
			
	//이벤트 추가 처리
	@RequestMapping(value="/EventInsert")
	public ModelAndView EventInsert(){


		System.out.println("이벤트 추가 처리");

		
		mav.setViewName("EventList");
		return mav;
	}
	
	
			
	//이벤트 수정폼
	@RequestMapping(value="/EventModifyForm")
	public ModelAndView EventModifyForm(){


		System.out.println("이벤트 수정폼");

		
		mav.setViewName("EventModifyForm");
		return mav;
	}
	
	
	//이벤트 수정처리
	@RequestMapping(value="/EventModify")
	public ModelAndView EventModify(){


		System.out.println("이벤트 수정처리");

		//이벤트 상세 보기로 이동
		mav.setViewName("EventView");
		return mav;
	}
	
		
	//이벤트 삭제
	@RequestMapping(value="/EventDelete")
	public ModelAndView EventDelete(){


		System.out.println("이벤트 삭제");

		//이벤트 상세 보기로 이동
		mav.setViewName("EventView");
		return mav;
	}
	
		
	
	
}
