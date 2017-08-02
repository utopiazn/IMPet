package IMPet.community.event;


import java.io.File;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.springframework.cache.annotation.CachePut;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;

import javax.servlet.http.HttpServletRequest;
import IMPet.util.ProjectUtil;


@Controller
@RequestMapping(value="/Community")
public class EventController {

	@Resource(name="eventService")
	private EventService eventService;
	
	//이벤트 리스트

	@RequestMapping(value="/EventList")
	public ModelAndView EventList(CommandMap commandMap,HttpServletResponse response) throws Exception{
		
		System.out.println("이벤트 리스트");
		
		ModelAndView mav = new ModelAndView();		
		String url="EventList1";

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
		
		int Page = 1;
		
		if(commandMap.get("PAGE").equals("")){
			 
			Page = 1;
		
		}else{
			
			Page = Integer.parseInt(commandMap.get("PAGE").toString());
		}
			

		String pagingHtml =pagingHtml(commandMap,Page);
		commandMap.MapInfoList();
				
		List<Map<String,Object>> listAll = eventService.selectRangeAll(commandMap.getMap());		
				
		mav.addObject("listAll", listAll);	
		mav.addObject("pagingHtml", pagingHtml);		
		mav.addObject("PAGE",Page );
		
		mav.setViewName(url);
		
		return mav;
	}
	
	
	private String pagingHtml(CommandMap commandMap,int pageNo) throws Exception{		
		
		int blockCount =6;		
		
		int totalCount=  eventService.selectEventCount();	
		
		int totalPage = (int) Math.ceil((double) totalCount / blockCount);		
		
		String PAGIN = String.valueOf(blockCount);	
		
		if(totalPage <pageNo){
		
			pageNo = totalPage;
		}
		
		String PAGINGNO = String.valueOf(pageNo);		
		
		commandMap.put("PAGING",PAGIN); //페이지의 리스트 수
		commandMap.put("PAGINGNO",PAGINGNO); // 페이지  몇번째인지 	
		commandMap.put("PAGE", PAGINGNO);
		
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
	public ModelAndView EventListAdmin(CommandMap commandMap) throws Exception{

		System.out.println("이벤트 리스트");
		
		ModelAndView mav = new ModelAndView();
		
		//관리자페이지 통합코드
		int adminCode = 11;
		mav.addObject("adminCode", adminCode);
		
		
		String pagingHtml =pagingHtml(commandMap,1);
		commandMap.MapInfoList();
	
		
		List<Map<String,Object>> listAll = eventService.selectRangeAll(commandMap.getMap());		
		
		int PAGE =1;
		
		mav.addObject("PAGE", PAGE);			
		mav.addObject("listAll", listAll);	
		mav.addObject("pagingHtml", pagingHtml);	
		
		System.out.println(listAll);

		mav.setViewName("AdminPage");
		
		
		return mav;
	}
	
	
	//이벤트 상세보기
	@RequestMapping(value="/EventView")
	public ModelAndView EventView(CommandMap commandMap) throws Exception{

		System.out.println("이벤트 상세보기");
		
		ModelAndView mav = new ModelAndView();
	
		String url = "community/event/eventView";

		commandMap.MapInfoList();
		
		//상세보기 수 증가.
		eventService.addViewNum(commandMap.getMap());
		
		//상세 정보 가져오기
		Map<String,Object>  view = eventService.selectOne(commandMap.getMap());				
		System.out.println(view);

			
		mav.addObject("view", view);
		
		mav.setViewName(url);
		return mav;
	}
	
	
		
	//이벤트 추가 폼
	@RequestMapping(value="/EventForm")
	public ModelAndView EventForm(){

		System.out.println("이벤트 추가 폼");

		ModelAndView mav = new ModelAndView();

		int adminCode = 14;	
		
		mav.addObject("adminCode", adminCode);
		mav.setViewName("AdminPage");
		return mav;
	}
	
	
			
	//이벤트 추가 처리
	@RequestMapping(value="/EventInsert")
	public ModelAndView EventInsert(CommandMap commandMap,HttpServletRequest request) throws Exception {
		
		System.out.println("이벤트 추가 처리");
		
		ModelAndView mav = new ModelAndView();
		
		ProjectUtil util = new ProjectUtil();
			
		String url ="redirect:/Community/AdminEventList";		
		String uploadPath = util.getPath()+"/IMPet/src/main/webapp/resources/image/event/";

		int num =eventService.selectKey();
		
		commandMap.MapInfoList();		
		
		commandMap.put("EVENT_NO", num);
		
		Map<String,Object> resultMap = util.UploadFile_Event(commandMap.getMap(), request, uploadPath,num);
		
		System.out.println(resultMap);	
	
		eventService.insert(resultMap);
				
		mav.setViewName(url);
		
		return mav;
	}
	
	
			
	//이벤트 수정폼
	@RequestMapping(value="/EventModifyForm")
	public ModelAndView EventModifyForm(CommandMap commandMap) throws Exception{

		System.out.println("이벤트 수정폼");

		ModelAndView mav = new ModelAndView();
		String url = "community/event/eventModifyForm";
		
				
		if(!commandMap.get("ADMIN").toString().equals("")){
			
			System.out.println("ADMIN"+commandMap.get("ADMIN").toString());
			mav.addObject("ADMIN", commandMap.get("ADMIN").toString());
		}

		commandMap.MapInfoList();
		Map<String,Object>  view = eventService.selectOne(commandMap.getMap());				
		
		System.out.println(view);
				
		mav.addObject("view", view);		
		mav.setViewName(url);
		
		return mav;
	}
	
	
	//이벤트 수정처리
	@RequestMapping(value="/EventModify")
	public ModelAndView EventModify(CommandMap commandMap,HttpServletRequest request)  throws Exception {


		System.out.println("이벤트 수정처리");
		
		ModelAndView mav = new ModelAndView();
		
		String url ="redirect:/Community/EventList?Event='1'";
		
		if(!commandMap.get("ADMIN").toString().equals("")){
			
			url ="redirect:/Community/AdminEventList";
			
		}
				
		ProjectUtil util = new ProjectUtil();		
		String uploadPath = util.getPath()+"/IMPet/src/main/webapp/resources/image/event/";
		commandMap.MapInfoList();		
		
		Map<String,Object> map = util.UpdateFile(commandMap.getMap(), request, uploadPath);
		
		System.out.println(map);	
	
		eventService.update(map);	
		
		mav.setViewName(url);	
		
		return mav;
	}
	
		
	//이벤트 삭제
	@RequestMapping(value="/EventDelete")
	public ModelAndView EventDelete(CommandMap commandMap) throws Exception{


		System.out.println("이벤트 삭제");
		
		ModelAndView mav = new ModelAndView();		
		ProjectUtil util = new ProjectUtil();
			
		
		String url = "community/event/eventListAdd";
		
		int menu=0;
		mav.addObject("menu", menu);
													
		commandMap.MapInfoList();

		eventService.delete(commandMap.getMap());
		
		String imgName = commandMap.get("EVENT_IMG").toString();
		String uploadPath = util.getPath()+"/IMPet/src/main/webapp/resources/image/event/";
		
		if(!imgName.equals("")){
			
			File removeFile = new File(uploadPath, imgName);
			removeFile.delete();
		}
						

		String pagingHtml =pagingHtml(commandMap,1);
		commandMap.MapInfoList();
		
			
		List<Map<String,Object>> listAll = eventService.selectRangeAll(commandMap.getMap());		
	
		
		mav.addObject("listAll", listAll);	
		mav.addObject("pagingHtml", pagingHtml);	
		
		mav.setViewName(url);
		
		return mav;
	}
	
	
	//이벤트 삭제
	@RequestMapping(value="/EventAdminDelete")
	public ModelAndView EventAdminDelete(CommandMap commandMap) throws Exception{


		System.out.println("이벤트 삭제");
		ModelAndView mav = new ModelAndView();
		
		String url = "community/admin/eventMemberList";
		
		
		ProjectUtil util = new ProjectUtil();	
		
		
		commandMap.MapInfoList();
		
		eventService.delete(commandMap.getMap());
		String imgName = commandMap.get("EVENT_IMG").toString();
		String uploadPath = util.getPath()+"/IMPet/src/main/webapp/resources/image/event/";
		
		
		if(!imgName.equals("")){
			File removeFile = new File(uploadPath, imgName);
			removeFile.delete();			
		}
		
		int page =  Integer.parseInt( commandMap.get("PAGE").toString());
		
		String pagingHtml =pagingHtml(commandMap,page);
		commandMap.MapInfoList();
				
		List<Map<String,Object>> listAll = eventService.selectRangeAll(commandMap.getMap());		
		
		mav.addObject("PAGE", commandMap.get("PAGE"));	
		mav.addObject("listAll", listAll);	
		mav.addObject("pagingHtml", pagingHtml);			
		
		mav.setViewName(url);		
		return mav;
	}
	
	
	

	//이벤트 정보 페이지 리스트
	@RequestMapping(value="/EventAdminPageList")
	public ModelAndView EventAdminPageList(CommandMap commandMap) throws Exception{
		
		System.out.println("이벤트 정보 페이지 리스트");

		ModelAndView mav = new ModelAndView();
		
		String url = "community/admin/eventMemberList";
		                        
		int menu=0;
		mav.addObject("menu", menu);
		
		int page =  Integer.parseInt( commandMap.get("PAGE").toString());
		
		String pagingHtml = pagingHtml(commandMap,page);
		commandMap.MapInfoList();
		
		List<Map<String,Object>> listAll = eventService.selectRangeAll(commandMap.getMap());		
			
		mav.addObject("listAll", listAll);			
		mav.addObject("pagingHtml", pagingHtml);		
		mav.addObject("PAGE", commandMap.get("PAGE"));
		
		mav.setViewName(url);	
		
		return mav;
	}

	
	

	//이벤트 정보 페이지 리스트
	@RequestMapping(value="/EventPageList")
	public ModelAndView EventPageList(CommandMap commandMap) throws Exception{
		
		System.out.println("이벤트 정보 페이지 리스트");

		ModelAndView mav = new ModelAndView();
		
		String url = "community/event/eventListAdd";
		
		int menu=0;
		mav.addObject("menu", menu);
		
		int page =  Integer.parseInt( commandMap.get("PAGE").toString());
		
		String pagingHtml = pagingHtml(commandMap,page);
		commandMap.MapInfoList();
		
		List<Map<String,Object>> listAll = eventService.selectRangeAll(commandMap.getMap());		
				
		mav.addObject("listAll", listAll);			
		mav.addObject("pagingHtml", pagingHtml);	
		mav.addObject("pageNo", commandMap.get("pageNo"));

		mav.setViewName(url);	
		
		return mav;
	}
}
