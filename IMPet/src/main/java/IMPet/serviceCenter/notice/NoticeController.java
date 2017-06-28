package IMPet.serviceCenter.notice;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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

		mav.setViewName("NoticeList");
		return mav;
	}

	// 공지사항 개별페이지
	@RequestMapping(value = "/NoticeView")
	public ModelAndView NoticeView() {

		System.out.println("공지사항 개별페이지");

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
	public ModelAndView NoticeInsert() {

		System.out.println("공지사항 추가");

		mav.setViewName("NoticeInsert");
		return mav;
	}

	// 공지사항 수정 폼
	@RequestMapping(value = "/NoticeModifyForm")
	public ModelAndView NoticeModifyForm() {

		System.out.println("공지사항 수정 폼");

		mav.setViewName("NoticeModifyForm");
		return mav;
	}

	// 공지사항 수정
	@RequestMapping(value = "/NoticeModify")
	public ModelAndView NoticeModify() {

		System.out.println("공지사항 수정");

		mav.setViewName("NoticeModify");
		return mav;
	}

	// 공지사항 삭제
	@RequestMapping(value = "/NoticeDelete")
	public ModelAndView NoticeDelete() {

		System.out.println("공지사항 삭제");

		mav.setViewName("NoticeDelete");
		return mav;
	}

}
