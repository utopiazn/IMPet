package IMPet.serviceCenter.FAQ;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;
import IMPet.serviceCenter.notice.NoticeService;

@Controller
@RequestMapping(value = "/ServiceCenter")
public class FAQController {
	
	@Resource(name="fAQService")
	private FAQService fAQService;

	

	// 자주묻는질문 리스트
	@RequestMapping(value = "/FAQList")
	public ModelAndView FAQList()throws Exception{
		
		System.out.println("자주묻는질문리스트");
		ModelAndView mav = new ModelAndView();
		
		List<Map<String, Object>> list = fAQService.selectAll();
		
		mav.addObject("list",list);
		
		

		mav.setViewName("FAQList");
		return mav;
	}
	
	// 자주묻는질문 리스트 관리자용
	@RequestMapping(value = "/AdminFAQList")
	public ModelAndView FAQListadmin()throws Exception{
		
		ModelAndView mav = new ModelAndView();
		List<Map<String, Object>> list = fAQService.selectAll();
		
		mav.addObject("list",list);
		
		//관리자페이지 통합코드
		int adminCode = 8;
		mav.addObject("adminCode", adminCode);

		mav.setViewName("AdminPage");
		
		return mav;
	}


	// 자주묻는질문 개별페이지
	@RequestMapping(value = "/FAQView")
	public ModelAndView FAQView(CommandMap commandMap) throws Exception{
			
		System.out.println("자주묻는질문 개별페이지");
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = fAQService.selectOne(commandMap.getMap());
			
		mav.addObject("view",map);
		mav.setViewName("FAQView");
		return mav;
		
	}

	// 자주묻는질문 추가 폼
	@RequestMapping(value = "/FAQInsertForm")
	public ModelAndView FAQInsertForm() {
		
		System.out.println("자주묻는질문 추가 폼");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("FAQInsertForm");
		return mav;
	}

	// 자주묻는질문 추가
	@RequestMapping(value = "/FAQInsert")
	public ModelAndView FAQInsert(CommandMap commandMap) throws Exception {
		
		System.out.println("자주묻는질문 추가");
        ModelAndView mav = new ModelAndView();
        
		fAQService.insert(commandMap.getMap());
		
		mav.setViewName("redirect:FAQList");
		return mav;
	}

	// 자주묻는질문 수정 폼
	@RequestMapping(value = "/FAQModifyForm")
	public ModelAndView FAQModifyForm(CommandMap commandMap) throws Exception{
		
		System.out.println("자주묻는질문 수정 폼");
		ModelAndView mav = new ModelAndView();

		Map<String, Object> map = fAQService.selectOne(commandMap.getMap());
		
		mav.addObject("view", map);

		mav.setViewName("FAQModifyForm");
		
		return mav;
	}

	// 자주묻는질문 수정
	@RequestMapping(value = "/FAQModify")
	public ModelAndView FAQModify(CommandMap commandMap) throws Exception{
		
		System.out.println("자주묻는질문 수정");
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = commandMap.getMap();	
		
		fAQService.update(map);
		
		String no = commandMap.get("FAQ_NO").toString();

		mav.setViewName("redirect:FAQView?FAQ_NO="+no);
		
		return mav;
	}

	// 자주묻는질문 삭제
	@RequestMapping(value = "/FAQDelete")
	public ModelAndView FAQDelete(CommandMap commandMap) throws Exception {
		
		System.out.println("자주묻는질문 삭제");
        ModelAndView mav = new ModelAndView();
		
		fAQService.delete(commandMap.getMap());		
		mav.setViewName("redirect:FAQList");
		return mav;
	}

}
