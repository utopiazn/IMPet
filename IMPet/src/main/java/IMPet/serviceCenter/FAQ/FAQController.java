package IMPet.serviceCenter.FAQ;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/ServiceCenter")
public class FAQController {

	ModelAndView mav = new ModelAndView();

/*	// 서비스센터 메인
	@RequestMapping(value = "/Main")
	public ModelAndView Main() {

		System.out.println("메인");

		mav.setViewName("ServiceCenter");
		return mav;
	}
*/
	// 자주묻는질문 리스트
	@RequestMapping(value = "/FAQList")
	public ModelAndView FAQList() {

		System.out.println("자주묻는질문리스트");

		mav.setViewName("FAQList");
		return mav;
	}

	// 자주묻는질문 개별페이지
	@RequestMapping(value = "/FAQView")
	public ModelAndView FAQView() {

		System.out.println("자주묻는질문 개별페이지");

		mav.setViewName("FAQView");
		return mav;
	}

	// 자주묻는질문 추가 폼
	@RequestMapping(value = "/FAQInsertForm")
	public ModelAndView FAQInsertForm() {

		System.out.println("자주묻는질문 추가 폼");

		mav.setViewName("FAQInsertForm");
		return mav;
	}

	// 자주묻는질문 추가
	@RequestMapping(value = "/FAQInsert")
	public ModelAndView FAQInsert() {

		System.out.println("자주묻는질문 추가");

		mav.setViewName("FAQInsert");
		return mav;
	}

	// 자주묻는질문 수정 폼
	@RequestMapping(value = "/FAQModifyForm")
	public ModelAndView FAQModifyForm() {

		System.out.println("자주묻는질문 수정 폼");

		mav.setViewName("FAQModifyForm");
		return mav;
	}

	// 자주묻는질문 수정
	@RequestMapping(value = "/FAQModify")
	public ModelAndView FAQModify() {

		System.out.println("자주묻는질문 수정");

		mav.setViewName("FAQModify");
		return mav;
	}

	// 자주묻는질문 삭제
	@RequestMapping(value = "/FAQDelete")
	public ModelAndView FAQDelete() {

		System.out.println("자주묻는질문 삭제");

		mav.setViewName("FAQDelete");
		return mav;
	}

}
