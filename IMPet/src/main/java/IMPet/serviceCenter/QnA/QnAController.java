package IMPet.serviceCenter.QnA;

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
public class QnAController {

	@Resource(name = "qnAService")
	private QnAService qnAService;

	ModelAndView mav = new ModelAndView();

	// Q&A리스트
	@RequestMapping(value = "/QuestionList")
	public ModelAndView QuestionList() throws Exception {

		List<Map<String, Object>> list = qnAService.selectAll();

		mav.addObject("list", list);

		mav.setViewName("QuestionList");
		return mav;
	}

	// Q&A 개별페이지
	@RequestMapping(value = "/QuestionView")
	public ModelAndView QuestionView(CommandMap commandMap) throws Exception {

		Map<String, Object> map = qnAService.selectOne(commandMap.getMap());

		System.out.println("자주묻는질문 개별페이지");

		mav.addObject("view", map);

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
	public ModelAndView QuestionInsert(CommandMap commandMap) throws Exception {

		ModelAndView mav = new ModelAndView();

		qnAService.insert(commandMap.getMap());

		System.out.println("Q&A 추가");

		mav.setViewName("redirect:QuestionList");
		return mav;
	}

	// Q&A 수정 폼
	@RequestMapping(value = "/QuestionModifyForm")
	public ModelAndView QuestionModifyForm(CommandMap commandMap) throws Exception {

		System.out.println(commandMap.getMap());

		ModelAndView mav = new ModelAndView();

		Map<String, Object> map = qnAService.selectOne(commandMap.getMap());

		System.out.println("Q&A 수정 폼");

		mav.addObject("view", map);

		mav.setViewName("QuestionModifyForm");
		return mav;
	}

	// Q&A 수정
	@RequestMapping(value = "/QuestionModify")
	public ModelAndView QuestionModify(CommandMap commandMap) throws Exception {

		ModelAndView mav = new ModelAndView();

		Map<String, Object> map = commandMap.getMap();

		qnAService.update(map);

		String no = commandMap.get("QnA_NO").toString();

		System.out.println("Q&A 수정");

		mav.setViewName("redirect:QuestionView?QnA_NO=" + no);
		return mav;
	}

	// Q&A 삭제
	@RequestMapping(value = "/QuestionDelete")
	public ModelAndView QuestionDelete(CommandMap commandMap) throws Exception {

		ModelAndView mav = new ModelAndView();

		qnAService.delete(commandMap.getMap());

		System.out.println("Q&A 삭제");

		mav.setViewName("redirect:QuestionList");
		return mav;
	}

	// Q&A 답글 폼
	@RequestMapping(value = "/QuestionInsertFormRef")
		public ModelAndView QuestionInsertFormRef(CommandMap commandMap) throws Exception{
			
			
			System.out.println(commandMap.getMap());
			
			commandMap.MapInfoList();
			
			ModelAndView mav = new ModelAndView();

	
			
			System.out.println("Q&A 답글 폼");

			mav.addObject("view", commandMap.getMap());
			
			mav.setViewName("QuestionInsertFormRef");
			return mav;
		}

	// Q&A 답글 추가
	@RequestMapping(value="/QuestionInsertRef")

	public ModelAndView QuestionInsertRef(CommandMap commandMap) throws Exception {

		ModelAndView mav = new ModelAndView();

		qnAService.insertRef(commandMap.getMap());

		System.out.println("Q&A 답글 추가");

		mav.setViewName("redirect:QuestionList");
		return mav;
	}

}
