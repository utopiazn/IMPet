package IMPet.community.event;


import javax.annotation.Resource;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;



@Controller
@RequestMapping(value="/Community")
public class EventController {

	@Resource(name="eventService")
	private EventService eventService;
	
	//이벤트 리스트
	@RequestMapping(value="/EventList")
	public ModelAndView EventList(CommandMap commandMap) throws Exception{
	
		ModelAndView mav = new ModelAndView();
		
		String url="EventList1";

		System.out.println("이벤트 리스트");

		int menu =1;
		String Event= commandMap.get("Event").toString();
		
		if(Event.equals("1")){
			url = "community/event/eventList";
			
			System.out.println("111111111111");
			
			menu=0;
			mav.addObject("menu", menu);
			
		}else{
			
			url = "EventList1";
			
			System.out.println("2222222222222222");
			
			menu=1;
			mav.addObject("menu", menu);
		}

		commandMap.MapInfoList();
		
		mav.setViewName(url);
		return mav;
	}
	
	//이벤트 리스트 관리자용
	@RequestMapping(value="/AdminEventList")
	public ModelAndView EventListAdmin(){

		ModelAndView mav = new ModelAndView();

		System.out.println("이벤트 리스트");

		
		//관리자페이지 통합코드
		int adminCode = 11;
		mav.addObject("adminCode", adminCode);

		mav.setViewName("AdminPage");
		
		
		return mav;
	}
	
	
	//이벤트 상세보기
	@RequestMapping(value="/EventView")
	public ModelAndView EventView(){

		ModelAndView mav = new ModelAndView();

		System.out.println("이벤트 상세보기");

		
		mav.setViewName("EventView");
		return mav;
	}
	
	
		
	//이벤트 추가 폼
	@RequestMapping(value="/EventForm")
	public ModelAndView EventForm(){

		ModelAndView mav = new ModelAndView();

		System.out.println("이벤트 추가 폼");

		
		mav.setViewName("EventForm");
		return mav;
	}
	
	
			
	//이벤트 추가 처리
	@RequestMapping(value="/EventInsert")
	public ModelAndView EventInsert(){

		ModelAndView mav = new ModelAndView();

		System.out.println("이벤트 추가 처리");

		
		mav.setViewName("EventList");
		return mav;
	}
	
	
			
	//이벤트 수정폼
	@RequestMapping(value="/EventModifyForm")
	public ModelAndView EventModifyForm(){

		ModelAndView mav = new ModelAndView();

		System.out.println("이벤트 수정폼");

		
		mav.setViewName("EventModifyForm");
		return mav;
	}
	
	
	//이벤트 수정처리
	@RequestMapping(value="/EventModify")
	public ModelAndView EventModify(){

		ModelAndView mav = new ModelAndView();

		System.out.println("이벤트 수정처리");

		//이벤트 상세 보기로 이동
		mav.setViewName("EventView");
		return mav;
	}
	
		
	//이벤트 삭제
	@RequestMapping(value="/EventDelete")
	public ModelAndView EventDelete(){

		ModelAndView mav = new ModelAndView();

		System.out.println("이벤트 삭제");

		//이벤트 상세 보기로 이동
		mav.setViewName("EventView");
		return mav;
	}
	
		
	
	
}
