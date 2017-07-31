package IMPet.serviceCenter.notice;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;

@Controller
@RequestMapping(value = "/ServiceCenter")
public class NoticeController {

	@Resource(name="noticeService")
	private NoticeService noticeService;
	
	
	ModelAndView mav = new ModelAndView();

	// 서비스센터 메인
	@RequestMapping(value = "/Main")
	public ModelAndView Main() {

		System.out.println("메인");

		mav.setViewName("ServiceCenter");
		return mav;
	}

	// 공지사항 리스트
	@RequestMapping(value = "/NoticeList")
	public ModelAndView NoticeList() throws Exception{
		
		List<Map<String, Object>> list = noticeService.selectAll();
		
		mav.addObject("list",list);

		System.out.println("공지사항리스트");
		
		System.out.println(list);

		mav.setViewName("NoticeList");
		return mav;
	}
	
	// 공지사항 리스트관리자용
	@RequestMapping(value = "/AdminNoticeList")
	public ModelAndView NoticeListadmin() throws Exception{
		
		List<Map<String, Object>> list = noticeService.selectAll();
		
		mav.addObject("list",list);

		System.out.println("공지사항리스트");
		
		System.out.println(list);
		
		//관리자페이지 통합코드
		int adminCode = 7;
		mav.addObject("adminCode", adminCode);

		mav.setViewName("AdminPage");
		
		
		return mav;
	}

	// 공지사항 개별페이지
	@RequestMapping(value = "/NoticeView")
	public ModelAndView NoticeView(CommandMap commandMap) throws Exception{
		
		Map<String, Object> map = noticeService.selectOne(commandMap.getMap());

		System.out.println("공지사항 개별페이지");
		
		mav.addObject("view",map);
		
		mav.setViewName("NoticeView");
		return mav;
	}

	// 공지사항 추가 폼
	@RequestMapping(value = "/NoticeInsertForm")
	public ModelAndView NoticeInsertForm() {
		
		

		System.out.println("공지사항 추가 폼");

		mav.setViewName("NoticeInsertForm");
		return mav;
	}

	// 공지사항 추가
	@RequestMapping(value = "/NoticeInsert")
	public ModelAndView NoticeInsert(CommandMap commandMap) throws Exception {
		
        ModelAndView mav = new ModelAndView();
        
		noticeService.insert(commandMap.getMap());

		System.out.println("공지사항 추가");

		mav.setViewName("redirect:NoticeList");
		return mav;
	}

	// 공지사항 수정 폼
	@RequestMapping(value = "/NoticeModifyForm")
	public ModelAndView NoticeModifyForm(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();

		
		Map<String, Object> map = noticeService.selectOne(commandMap.getMap());
		
		System.out.println("공지사항 수정 폼");
		
		mav.addObject("view", map);

		mav.setViewName("NoticeModifyForm");
		return mav;
	}

	// 공지사항 수정
	@RequestMapping(value = "/NoticeModify")
	public ModelAndView NoticeModify(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = commandMap.getMap();	
		
		noticeService.update(map);
		
		String no = commandMap.get("notice_NO").toString();
		
		System.out.println("공지사항 수정");

		mav.setViewName("redirect:NoticeView?notice_NO="+no);
		return mav;
	}

	// 공지사항 삭제
	@RequestMapping(value = "/NoticeDelete")
	public ModelAndView NoticeDelete(CommandMap commandMap) throws Exception {
		
        ModelAndView mav = new ModelAndView();
		
		noticeService.delete(commandMap.getMap());
		

		System.out.println("공지사항 삭제");

		mav.setViewName("redirect:NoticeList");
		return mav;
	}

}
