package IMPet.petHotel.petRoom;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;

@Controller
@RequestMapping(value="PetHotel")
public class PetRoomController {
	
	@Resource(name="petRoomService")
	private PetRoomService petRoomService;
	
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
	public ModelAndView roomList() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 리스트");

		List<Map<String, Object>> list = petRoomService.selectAll();
		
		String url = "PetHotel_List";
		
		mav.addObject("list", list);
		
		mav.setViewName(url);
		
		return mav;
	}
	
	//호텔 룸 상세
	@RequestMapping(value="RoomView")
	public ModelAndView roomView(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 상세");
		
		Map<String, Object> map = petRoomService.selectOne(commandMap.getMap());
		
		String url = "PetHotel_View";
		
		mav.addObject("view", map);
		
		mav.setViewName(url);
		
		return mav;
	}
	
	//호텔 룸 추가폼
	@RequestMapping(value="RoomInsertForm")
	public ModelAndView roomInsertForm(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 룸 추가 폼");
		
		String url = "PetHotel_InsertForm";
		
		mav.setViewName(url);
		
		return mav;
	}

	//호텔 룸 추가
	@RequestMapping(value="RoomInsert")
	public ModelAndView roomInsert(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		petRoomService.insert(commandMap.getMap());
		
		System.out.println("호텔 룸 추가");
		
		String url = "redirect:RoomList";
		
		mav.setViewName(url);
		
		return mav;
	}

	//호텔 룸 수정폼
	@RequestMapping(value="RoomModifyForm")
	public ModelAndView roomModifyForm(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();

		System.out.println("호텔 룸 수정 폼");
		
		Map<String, Object> map = petRoomService.selectOne(commandMap.getMap());
		
		String url = "PetHotel_ModifyForm";
		
		mav.addObject("view", map);
		
		mav.setViewName(url);
		
		return mav;
	}

	//호텔 룸 수정
	@RequestMapping(value="RoomModify")
	public ModelAndView roomModify(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();

		System.out.println("호텔 룸 수정");
		
		petRoomService.update(commandMap.getMap());
		
		String no = commandMap.get("room_NO").toString();
		
		String url = "redirect:RoomView?room_NO="+no;
		
		mav.setViewName(url);
		
		return mav;
	}

	//호텔 룸 삭제
	@RequestMapping(value="RoomDelete")
	public ModelAndView roomDelete(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();

		System.out.println("호텔 룸 삭제");
		
		petRoomService.delete(commandMap.getMap());
		
		String url = "redirect:RoomList";
		
		mav.setViewName(url);
		
		return mav;
	}
}
