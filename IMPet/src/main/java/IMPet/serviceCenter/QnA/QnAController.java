package IMPet.serviceCenter.QnA;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import IMPet.serviceCenter.notice.NoticeService;

@Controller
@RequestMapping(value = "/ServiceCenter")
public class QnAController {
	
	@Resource(name="qnAService")
	private QnAService qnAService;

	ModelAndView mav = new ModelAndView();



	// Q&A리스트
	@RequestMapping(value = "/QuestionList")
	public ModelAndView QuestionList() throws Exception {
		
		List<Map<String, Object>> list = qnAService.selectAll();
		
		mav.addObject("list",list);

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
