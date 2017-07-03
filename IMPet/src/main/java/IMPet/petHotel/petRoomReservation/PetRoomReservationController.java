package IMPet.petHotel.petRoomReservation;

import java.util.Map;

import javax.annotation.Resource;

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
		
		System.out.println(commandMap.getMap());
		
		Map<String, Object> map = petRoomReservationService.searchDate(commandMap.getMap());
		
		mav.addObject("retotal", map);
		
		mav.addObject("res", commandMap.getMap());
		
		mav.setViewName("PetHotelReservation");
		
		return mav;
	}
	
	//호텔 룸 예약완료
	@RequestMapping(value="RoomResSuccess")
	public ModelAndView resSuccess(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 예약완료");
		
		mav.setViewName("redirect:RoomResList");
		
		return mav;
	}
	
	//호텔 룸 예약리스트(고객용)
	@RequestMapping(value="RoomResList")
	public ModelAndView resList(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 예약리스트(고객용)");
		
		mav.setViewName("PetHotelReservation_List");
		
		return mav;
	}
	
	//호텔 룸 예약리스트(관리자용)
	@RequestMapping(value="RoomResAllList")
	public ModelAndView resAllList(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 예약리스트(관리자용)");
		
		mav.setViewName("PetHotelReservation_AllList");
		
		return mav;
	}
	
	//호텔 룸 예약 결제상태 변경(관리자용)
	@RequestMapping(value="RoomResPayment")
	public ModelAndView resPayment(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 예약 결제상태 변경(관리자용)");
		
		mav.setViewName("redirect:RoomResAllList");
		
		return mav;
	}
	
	//호텔 룸 예약 삭제(관리자용)
	@RequestMapping(value="RoomResDelete")
	public ModelAndView resDelete(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("룸 예약 삭제(관리자용)");
		
		mav.setViewName("redirect:RoomResAllList");
		
		return mav;
	}
	
	//호텔 룸 예약 취소(개인용)
	@RequestMapping(value="RoomResCancel")
	public ModelAndView resCancel(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("룸 예약 취소(개인용)");
		
		mav.setViewName("redirect:RoomResList");
		
		return mav;
	}
	
	
}
