package IMPet.petHotel.petRoom;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="PetHotel")
public class PetRoomController {
	
	//호텔 메인
	@RequestMapping(value="Main")
	public ModelAndView main(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 메인");
		
		mav.setViewName("PetHotel");
		
		return mav;
	}
	
	//호텔 룸 리스트
	@RequestMapping(value="RoomList")
	public ModelAndView roomList(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 리스트");
		
		mav.setViewName("PetHotel_List");
		
		return mav;
	}
	
	//호텔 룸 상세
	@RequestMapping(value="RoomView")
	public ModelAndView roomView(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 상세");
		
		mav.setViewName("PetHotel_View");
		
		return mav;
	}
	
	//호텔 룸 추가폼
	@RequestMapping(value="RoomInsertForm")
	public ModelAndView roomInsertForm(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 추가 폼");
		
		mav.setViewName("PetHotel_InsertForm");
		
		return mav;
	}

	//호텔 룸 추가
	@RequestMapping(value="RoomInsert")
	public ModelAndView roomInsert(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 추가");
		
		mav.setViewName("PetHotel_Insert");
		
		return mav;
	}

	//호텔 룸 수정폼
	@RequestMapping(value="RoomModifyForm")
	public ModelAndView roomModifyForm(){
		
		ModelAndView mav = new ModelAndView();

		System.out.println("호텔 룸 수정 폼");
		
		mav.setViewName("PetHotel_ModifyForm");
		
		return mav;
	}

	//호텔 룸 수정
	@RequestMapping(value="RoomModify")
	public ModelAndView roomModify(){
		
		ModelAndView mav = new ModelAndView();

		System.out.println("호텔 룸 수정");
		
		mav.setViewName("PetHotel_Modify");
		
		return mav;
	}

	//호텔 룸 삭제
	@RequestMapping(value="RoomDelete")
	public ModelAndView roomDelete(){
		
		ModelAndView mav = new ModelAndView();

		System.out.println("호텔 룸 삭제");
		
		mav.setViewName("PetHotel_Delete");
		
		return mav;
	}
}
