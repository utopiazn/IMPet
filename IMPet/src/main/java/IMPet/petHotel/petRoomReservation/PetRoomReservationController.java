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
		
		String url = "redirect:/MyPage";

		mav.setViewName(url);
		
		return mav;
	}
	
	//호텔 룸 예약리스트(고객용)
	@RequestMapping(value="RoomResList")
	public ModelAndView resList(HttpSession session) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 예약리스트(고객용)");
		
		System.out.println("Controller:"+session.getAttribute("member_ID"));
		
		List<Map<String, Object>> list = petRoomReservationService.selectUserList((String)session.getAttribute("member_ID"));
		
		System.out.println(list);
		
		String url = "petHotel/roomRes/resList";
		/*String url = "PetHotelReservation_List";*/
		
		mav.addObject("list", list);
		
		mav.setViewName(url);
		
		return mav;
	}
	
	//호텔 룸 예약리스트(관리자용)
	@RequestMapping(value="RoomResAllList")
	public ModelAndView resAllList() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 예약리스트(관리자용)");
		
		List<Map<String, Object>> list = petRoomReservationService.selectAllList();
		
		System.out.println(list);
		
		/*String url = "petHotel/room/list";*/
		String url = "AdminPage";
		
		mav.addObject("list", list);
		
		mav.setViewName(url);
		
		return mav;
	}
	
	//호텔 룸 예약 결제상태 변경(관리자용)
	@RequestMapping(value="RoomResPayment")
	public ModelAndView resPayment(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		petRoomReservationService.resPayment(commandMap.getMap());
		
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
		
		petRoomReservationService.resDelete(commandMap.getMap());
		
		System.out.println("룸 예약 취소(개인용)");
		
		mav.setViewName("redirect:RoomResList");
		
		return mav;
	}
	
	
}
