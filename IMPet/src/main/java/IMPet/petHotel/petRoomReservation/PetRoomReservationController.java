package IMPet.petHotel.petRoomReservation;

import java.util.Calendar;
import java.sql.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;
import IMPet.module.Paging;
import IMPet.petHotel.petRoomReservation.PetRoomReservationService;

@Controller
@RequestMapping(value="PetHotel")
public class PetRoomReservationController {

	@Resource(name="petRoomReservationService")
	private PetRoomReservationService petRoomReservationService;
	
	//호텔 룸 예약페이지
	@RequestMapping(value="RoomReservation")
	public ModelAndView reservation(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 예약페이지");
		
		System.out.println("Controller:"+commandMap.getMap());
		
		Map<String, Object> map = petRoomReservationService.searchDate(commandMap.getMap());
		
		Date firstDateD = Date.valueOf((String)commandMap.get("res_FirstDate"));
		Date lastDateD = Date.valueOf((String)commandMap.get("res_LastDate"));
		
		Calendar calf = Calendar.getInstance ( );
		calf.setTime(firstDateD);// 입실날짜 

		Calendar call = Calendar.getInstance ( );
		call.setTime(lastDateD); // 퇴실날짜

		int count = 0;
		while (!calf.after(call))
		{
		count++;
		calf.add ( Calendar.DATE, 1 ); // 다음날로 바뀜
		}
		count--; //하루 오버되서 날짜 재조정
		System.out.println (count + "박 예정" );
		
		int price = (Integer.parseInt((String)commandMap.get("res_Price")) * count);
		System.out.println ("예약금 : "+price );
		commandMap.put("res_Price", price);
		
		
		
		mav.addObject("retotal", map);
		
		mav.addObject("res", commandMap.getMap());
		
		String url = "PetHotelReservation";
		
		mav.setViewName(url);
		
		return mav;
	}
	
	//호텔 룸 예약완료
	@RequestMapping(value="RoomResSuccess")
	public ModelAndView resSuccess(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 예약완료");
		
		System.out.println("Controller:"+commandMap.getMap());
		
		petRoomReservationService.resInsert(commandMap.getMap());
		
		String url = "redirect:/MyPage#room";

		mav.setViewName(url);
		
		return mav;
	}
	
	//호텔 룸 예약리스트(고객용)
	@RequestMapping(value="RoomResList")
	public ModelAndView resList(CommandMap commandMap, HttpSession session) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 예약리스트(고객용)");
		
		int page = 1;
		
		System.out.print("페이지 넘버:"+page);
		String id = (String)session.getAttribute("member_ID");
		
		String pagingHtml = pagingHtml(commandMap,page,0,id);
		commandMap.MapInfoList();
		
		System.out.println("Controller:"+session.getAttribute("member_ID"));
		
		List<Map<String, Object>> list = petRoomReservationService.selectUserList(commandMap.getMap(), id);
		
		System.out.println(list);
		
		String url = "petHotel/roomRes/resList";
		/*String url = "PetHotelReservation_List";*/
		
		mav.addObject("pagingHtml", pagingHtml);	
		
		mav.addObject("list", list);
		
		mav.setViewName(url);
		
		return mav;
	}
	
	//호텔 룸 예약리스트(고객용/페이징)
	@RequestMapping(value="RoomResListPage")
	public ModelAndView resListPage(CommandMap commandMap, HttpSession session) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 예약리스트(고객용)");
		
		int page =  Integer.parseInt( commandMap.get("PAGE").toString());
		String id = (String)session.getAttribute("member_ID");
		System.out.print("페이지 넘버:"+page);
		
		String pagingHtml = pagingHtml(commandMap,page,0,id);
		commandMap.MapInfoList();
		
		List<Map<String, Object>> list = petRoomReservationService.selectUserList(commandMap.getMap(), id);
		
		System.out.println(list);
		
		String url = "petHotel/roomRes/resList";

		mav.addObject("pagingHtml", pagingHtml);	
		
		mav.addObject("list", list);
		
		mav.setViewName(url);
		
		return mav;
	}
	
	//호텔 룸 예약리스트(관리자용)
	@RequestMapping(value="RoomResAllList")
	public ModelAndView resAllList(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 예약리스트(관리자용)");

		//관리자페이지 통합코드
		int adminCode = 3;
		mav.addObject("adminCode", adminCode);
		
		int page = 1;
		
		System.out.print("페이지 넘버:"+page);
		
		String pagingHtml = pagingHtml(commandMap,page,1);
		commandMap.MapInfoList();
		
		List<Map<String, Object>> list = petRoomReservationService.selectAllList(commandMap.getMap());
		
		System.out.println(list);
		
		String url = "AdminPage";
		
		mav.addObject("pagingHtml", pagingHtml);	
		
		mav.addObject("list", list);
		
		mav.setViewName(url);
		
		return mav;
	}
	
	//호텔 룸 예약리스트(관리자용/페이징)
	@RequestMapping(value="RoomResAllListPage")
	public ModelAndView resAllListPage(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 예약리스트(관리자용)");
		
		int page =  Integer.parseInt( commandMap.get("PAGE").toString());
		
		System.out.print("페이지 넘버:"+page);
		
		String pagingHtml = pagingHtml(commandMap,page,1);
		commandMap.MapInfoList();
		
		List<Map<String, Object>> list = petRoomReservationService.selectAllList(commandMap.getMap());
		
		System.out.println(list);
		
		String url = "petHotel/roomRes/resAllList";

		mav.addObject("pagingHtml", pagingHtml);	
		
		mav.addObject("list", list);
		
		mav.setViewName(url);
		
		return mav;
	}
	
	//호텔 룸 예약 결제상태 변경(관리자용)
	@RequestMapping(value="RoomResPayment")
	public ModelAndView resPayment(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = commandMap.getMap();
		map.put("res_State", 1);
		
		petRoomReservationService.resPayment(map);
		
		System.out.println("호텔 룸 예약 결제상태 변경(관리자용)");
		
		mav.setViewName("redirect:RoomResAllList");
		
		return mav;
	}
	
	//호텔 룸 예약 삭제(관리자용)
	@RequestMapping(value="RoomResDelete")
	public ModelAndView resDelete(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		petRoomReservationService.resDelete(commandMap.getMap());
		
		System.out.println("룸 예약 삭제(관리자용)");
		
		mav.setViewName("redirect:RoomResAllList");
		
		return mav;
	}
	
	//호텔 룸 예약 취소(개인용)
	@RequestMapping(value="RoomResCancel")
	public ModelAndView resCancel(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = commandMap.getMap();
		map.put("res_State", 2);
		
		petRoomReservationService.resPayment(map);
		
		System.out.println("룸 예약 취소(개인용)");
		
		mav.setViewName("redirect:RoomResList");
		
		return mav;
	}
	
	
	//페이징 메소드
	private String pagingHtml(CommandMap commandMap, int pageNo, int admin, String id) throws Exception{		
		
		int blockCount =5;
		int totalCount;
		if(admin==1){
			totalCount=  petRoomReservationService.selectResAdminCount();	
		}else{
			totalCount=  petRoomReservationService.selectResCount(id);
		}
		
		int totalPage = (int) Math.ceil((double) totalCount / blockCount);		
		System.out.println("totalCount:"+totalCount  +"   blockCount: "+  blockCount );		
		System.out.println("totalPage:"+totalPage   +"  |||  "+  (int) Math.ceil((double) totalCount / blockCount)        );
		
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
	
}
