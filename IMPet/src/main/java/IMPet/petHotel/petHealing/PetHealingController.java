package IMPet.petHotel.petHealing;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;
import IMPet.petHotel.petHealing.PetHealingService;

@Controller
@RequestMapping(value="PetHotel")
public class PetHealingController {
	
	@Resource(name="petHealingService")
	private PetHealingService petHealingService;
	
	//호텔 힐링 리스트
	@RequestMapping(value="HealingList")
	public ModelAndView healingList() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 힐링 리스트");
		
		List<Map<String, Object>> list = petHealingService.selectAll();
		
		String url = "petHotel/healing/list";
		/*String url = "PetHotel_HealingList";*/
		
		mav.addObject("list", list);
		
		mav.setViewName(url);
		
		return mav;
	}
	
	//호텔 admin 힐링 리스트
	@RequestMapping(value="HealingAdminList")
	public ModelAndView healingAdminList() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 Admin 힐링 리스트");
		
		List<Map<String, Object>> list = petHealingService.selectAll();
		
		String url = "AdminPage";
		
		//관리자페이지 통합코드
		int adminCode = 4;
		mav.addObject("adminCode", adminCode);
		
		mav.addObject("list", list);
		
		mav.setViewName(url);
		
		return mav;
	}
		
	//호텔 admin 힐링 리스트(ajax용)
	@RequestMapping(value="HealingAdminListAjax")
	public ModelAndView healingAdminListAjax() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 Admin 힐링 리스트(ajax용)");
		
		List<Map<String, Object>> list = petHealingService.selectAll();
		
		String url = "petHotel/healing/adminList";
		
		mav.addObject("list", list);
		
		mav.setViewName(url);
		
		return mav;
	}

	
	//호텔 힐링 상세
	@RequestMapping(value="HealingView")
	public ModelAndView healingView(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 힐링 상세");
		
		Map<String, Object> map = petHealingService.selectOne(commandMap.getMap());
		
		String url = "petHotel/healing/view";
		
		mav.addObject("view", map);
		
		mav.setViewName(url);
		
		return mav;
	}
	
	//호텔 힐링 추가폼
	@RequestMapping(value="HealingInsertForm")
	public ModelAndView healingInsertForm(){
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 힐링 추가 폼");

		String url = "petHotel/healing/insertForm";
		
		mav.setViewName(url);
		
		return mav;
	}

	//호텔 힐링 추가
	@RequestMapping(value="HealingInsert")
	public ModelAndView healingInsert(CommandMap commandMap, HttpServletRequest request) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("호텔 힐링 추가");
		
		petHealingService.insert(commandMap.getMap(), request);
		
		String url = "redirect:HealingAdminList";
		
		mav.setViewName(url);		
		
		return mav;
	}

	//호텔 힐링 수정폼
	@RequestMapping(value="HealingModifyForm")
	public ModelAndView healingModifyForm(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();

		System.out.println("호텔 힐링 수정 폼");
		
		Map<String, Object> map = petHealingService.selectOne(commandMap.getMap());
		
		String url = "petHotel/healing/insertForm";
		
		mav.addObject("view", map);
		
		mav.setViewName(url);
		
		return mav;
	}

	//호텔 힐링 수정
	@RequestMapping(value="HealingModify")
	public ModelAndView healingModify(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();

		System.out.println("호텔 힐링 수정");
		
		petHealingService.update(commandMap.getMap());
		
		String url = "redirect:HealingAdminListAjax";
		
		mav.setViewName(url);
		
		return mav;
	}

	//호텔 힐링 삭제
	@RequestMapping(value="HealingDelete")
	public ModelAndView healingDelete(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();

		System.out.println("호텔 힐링 삭제");
		
		petHealingService.delete(commandMap.getMap());
		
		String url = "redirect:HealingAdminListAjax";
		
		mav.setViewName(url);
		
		return mav;
	}
}
