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

	ModelAndView mav = new ModelAndView();

	// �옄二쇰Щ�뒗吏덈Ц 由ъ뒪�듃
	@RequestMapping(value = "/FAQList")
	public ModelAndView FAQList()throws Exception{
		
		List<Map<String, Object>> list = fAQService.selectAll();
		
		mav.addObject("list",list);
		


		mav.setViewName("FAQList");
		return mav;
	}
	
	// �옄二쇰Щ�뒗吏덈Ц 由ъ뒪�듃 愿�由ъ옄�슜
	@RequestMapping(value = "/AdminFAQList")
	public ModelAndView FAQListadmin()throws Exception{
		
		List<Map<String, Object>> list = fAQService.selectAll();
		
		mav.addObject("list",list);
		
		//愿�由ъ옄�럹�씠吏� �넻�빀肄붾뱶
		int adminCode = 8;
		mav.addObject("adminCode", adminCode);

		mav.setViewName("AdminPage");
		
		return mav;
	}


	// �옄二쇰Щ�뒗吏덈Ц 媛쒕퀎�럹�씠吏�
	@RequestMapping(value = "/FAQView")
	public ModelAndView FAQView(CommandMap commandMap) throws Exception{
		
		System.out.println(commandMap.getMap());
		
		Map<String, Object> map = fAQService.selectOne(commandMap.getMap());
		
		System.out.println("�옄二쇰Щ�뒗吏덈Ц 媛쒕퀎�럹�씠吏�");
		
		mav.addObject("view",map);

		mav.setViewName("FAQView");
		return mav;
	}

	// �옄二쇰Щ�뒗吏덈Ц 異붽� �뤌
	@RequestMapping(value = "/FAQInsertForm")
	public ModelAndView FAQInsertForm() {

		System.out.println("�옄二쇰Щ�뒗吏덈Ц 異붽� �뤌");

		mav.setViewName("FAQInsertForm");
		return mav;
	}

	// �옄二쇰Щ�뒗吏덈Ц 異붽�
	@RequestMapping(value = "/FAQInsert")
	public ModelAndView FAQInsert(CommandMap commandMap) throws Exception {
		
        ModelAndView mav = new ModelAndView();
        
		fAQService.insert(commandMap.getMap());
		
		System.out.println("�옄二쇰Щ�뒗吏덈Ц 異붽�");

		mav.setViewName("redirect:FAQList");
		return mav;
	}

	// �옄二쇰Щ�뒗吏덈Ц �닔�젙 �뤌
	@RequestMapping(value = "/FAQModifyForm")
	public ModelAndView FAQModifyForm(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();

		Map<String, Object> map = fAQService.selectOne(commandMap.getMap());
		
		System.out.println("�옄二쇰Щ�뒗吏덈Ц �닔�젙 �뤌");

		mav.addObject("view", map);

		mav.setViewName("FAQModifyForm");
		return mav;
	}

	// �옄二쇰Щ�뒗吏덈Ц �닔�젙
	@RequestMapping(value = "/FAQModify")
	public ModelAndView FAQModify(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = commandMap.getMap();	
		
		fAQService.update(map);
		
		String no = commandMap.get("FAQ_NO").toString();
		
		System.out.println("�옄二쇰Щ�뒗吏덈Ц �닔�젙");

		mav.setViewName("redirect:FAQView?FAQ_NO="+no);
		
		return mav;
	}

	// �옄二쇰Щ�뒗吏덈Ц �궘�젣
	@RequestMapping(value = "/FAQDelete")
	public ModelAndView FAQDelete(CommandMap commandMap) throws Exception {
		
        ModelAndView mav = new ModelAndView();
		
		fAQService.delete(commandMap.getMap());
		
		System.out.println("�옄二쇰Щ�뒗吏덈Ц �궘�젣");

		mav.setViewName("redirect:FAQList");
		return mav;
	}

}
