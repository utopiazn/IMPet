package IMPet.serviceCenter.QnA;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/ServiceCenter")
public class QnAController {

	ModelAndView mav = new ModelAndView();

/*	// 서비스센터 메인
	@RequestMapping(value = "/Main")
	public ModelAndView Main() {

		System.out.println("메인");

		mav.setViewName("ServiceCenter");
		return mav;
	}*/

	// Q&A리스트
	@RequestMapping(value = "/QuestionList")
	public ModelAndView QuestionList() {

		System.out.println("Q&A리스트");

		mav.setViewName("QuestionList");
		return mav;
	}

	// Q&A 개별페이지
	@RequestMapping(value = "/QuestionView")
	public ModelAndView QuestionView() {

		System.out.println("자주묻는질문 개별페이지");

		mav.setViewName("QuestionView");
		return mav;
	}

	// Q&A 추가 폼
	@RequestMapping(value = "/QuestionInsertForm")
	public ModelAndView QuestionInsertForm() {

		System.out.println("Q&A 추가 폼");

		mav.setViewName("QuestionInsertForm");
		return mav;
	}

	// Q&A 추가
	@RequestMapping(value = "/QuestionInsert")
	public ModelAndView QuestionInsert() {

		System.out.println("Q&A 추가");

		mav.setViewName("QuestionInsert");
		return mav;
	}

	// Q&A 수정 폼
	@RequestMapping(value = "/QuestionModifyForm")
	public ModelAndView QuestionModifyForm() {

		System.out.println("Q&A 수정 폼");

		mav.setViewName("QuestionModifyForm");
		return mav;
	}

	// Q&A 수정
	@RequestMapping(value = "/QuestionModify")
	public ModelAndView QuestionModify() {

		System.out.println("Q&A 수정");

		mav.setViewName("QuestionModify");
		return mav;
	}

	// Q&A 삭제
	@RequestMapping(value = "/QuestionDelete")
	public ModelAndView QuestionDelete() {

		System.out.println("Q&A 삭제");

		mav.setViewName("QuestionDelete");
		return mav;
	}

}
