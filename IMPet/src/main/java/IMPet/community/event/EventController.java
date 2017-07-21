package IMPet.community.event;


import java.util.List;
import java.util.Map;

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
			url = "community/event/eventListAdd";
					
			menu=0;
			mav.addObject("menu", menu);
			
		}else{			
			url = "EventList1";
			
			menu=1;
			mav.addObject("menu", menu);
		}

		commandMap.MapInfoList();
			

		String pagingHtml =pagingHtml(commandMap,1);
		commandMap.MapInfoList();
		
	
		
		List<Map<String,Object>> listAll = eventService.selectRangeAll(commandMap.getMap());		
		
		
		mav.addObject("listAll", listAll);	
		mav.addObject("pagingHtml", pagingHtml);	
		
		mav.setViewName(url);
		return mav;
	}
	
	
	private String pagingHtml(CommandMap commandMap,int pageNo) throws Exception{		
		
		
		
		
		int blockCount =5;		
		
		int totalCount=  eventService.selectEventCount();	
		
		int totalPage = (int) Math.ceil((double) totalCount / blockCount);		
		//System.out.println("totalCount:"+totalCount  +"   blockCount: "+  blockCount );		
		//System.out.println("totalPage:"+totalPage   +"  |||  "+  (int) Math.ceil((double) totalCount / blockCount)        );
		
		String PAGIN = String.valueOf(blockCount);	
		String PAGINGNO = String.valueOf(pageNo);		
		commandMap.put("PAGING",PAGIN); //페이지의 리스트 수
		commandMap.put("PAGINGNO",PAGINGNO); // 페이지  몇번째인지 	
		
		
		StringBuffer pagingHtml = new StringBuffer();
		
		for(int i=1; i<=totalPage;i++ ){			
			
			if(i==pageNo){
				
				pagingHtml.append("<strong>");
				pagingHtml.append(i);						
				pagingHtml.append("</strong>  ");
			
			}else{
				
				pagingHtml.append(" <a class='page' href='javascript:ajaxPageView("+i+");'>" );			
				pagingHtml.append(i);				
				pagingHtml.append("</a> ");
				
			}
			
		}		
		return pagingHtml.toString();
		
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
	public ModelAndView EventView(CommandMap commandMap) throws Exception{

		ModelAndView mav = new ModelAndView();
		//String url = "community/event/eventListAdd";
		

		String url = "community/event/eventView";

		commandMap.MapInfoList();
		System.out.println("이벤트 상세보기");
		
		//상세보기 수 증가.
		eventService.addViewNum(commandMap.getMap());
		
		//상세 정보 가져오기
		Map<String,Object>  view = eventService.selectOne(commandMap.getMap());				
		System.out.println(view);

		//String strImage = view.get("EVENT_IMG").toString();
	
		//mav.addObject("eventImage", strImage);
		
		mav.addObject("view", view);
		
		mav.setViewName(url);
		return mav;
	}
	
	
		
	//이벤트 추가 폼
	@RequestMapping(value="/EventForm")
	public ModelAndView EventForm(){

		ModelAndView mav = new ModelAndView();

		String url = "community/event/eventForm";
		System.out.println("이벤트 추가 폼");

		
		mav.setViewName("EventForm1");
		return mav;
	}
	
	
			
	//이벤트 추가 처리
	@RequestMapping(value="/EventInsert")
	public ModelAndView EventInsert(){

		ModelAndView mav = new ModelAndView();
		String url ="";
		System.out.println("이벤트 추가 처리");

		
		
		
		mav.setViewName("EventList1");
		return mav;
	}
	
	
			
	//이벤트 수정폼
	@RequestMapping(value="/EventModifyForm")
	public ModelAndView EventModifyForm(CommandMap commandMap) throws Exception{


		ModelAndView mav = new ModelAndView();
		String url = "community/event/eventModifyForm";
		System.out.println("이벤트 수정폼");

		
		//mav.setViewName("EventModifyForm");
		mav.setViewName(url);
		
		return mav;
	}
	
	
	//이벤트 수정처리
	@RequestMapping(value="/EventModify")
	public ModelAndView EventModify(CommandMap commandMap) throws Exception{


		ModelAndView mav = new ModelAndView();

		System.out.println("이벤트 수정처리");

		//이벤트 상세 보기로 이동
		mav.setViewName("EventView1");
		return mav;
	}
	
		
	//이벤트 삭제
	@RequestMapping(value="/EventDelete")
	public ModelAndView EventDelete(CommandMap commandMap) throws Exception{


		ModelAndView mav = new ModelAndView();

		System.out.println("이벤트 삭제");
		
	
	
		String url = "community/event/eventListAdd";
					
		int	menu=0;
		mav.addObject("menu", menu);
			
		
		commandMap.MapInfoList();
			

		String pagingHtml =pagingHtml(commandMap,1);
		commandMap.MapInfoList();	
	
		
		List<Map<String,Object>> listAll = eventService.selectRangeAll(commandMap.getMap());		
		
		
		mav.addObject("listAll", listAll);	
		mav.addObject("pagingHtml", pagingHtml);	
		
		mav.setViewName(url);
		

		
		return mav;
	}
	
	

	//이벤트 정보 페이지 리스트
	@RequestMapping(value="/EventPageList")
	public ModelAndView EventPageList(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		System.out.println("이벤트 정보 페이지 리스트");

		String url = "community/event/eventListAdd";
		
		int menu=0;
		mav.addObject("menu", menu);
		
		int page =  Integer.parseInt( commandMap.get("PAGE").toString());
		
		String pagingHtml = pagingHtml(commandMap,page);
		commandMap.MapInfoList();
		
		List<Map<String,Object>> listAll = eventService.selectRangeAll(commandMap.getMap());		
		
		
		mav.addObject("listAll", listAll);	
		
		mav.addObject("pagingHtml", pagingHtml);	


		mav.setViewName(url);	
		
		return mav;
	}


	
	
}
