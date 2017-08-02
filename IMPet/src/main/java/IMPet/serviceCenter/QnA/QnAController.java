
package IMPet.serviceCenter.QnA;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	// Q&A리스트관리자용
	@RequestMapping(value = "/AdminQuestionList")
	public ModelAndView QuestionListAdmin() throws Exception {

		List<Map<String, Object>> list = qnAService.selectAll();

		mav.addObject("list", list);

		mav.setViewName("QuestionList");
		
		//관리자페이지 통합코드
		int adminCode = 9;
		mav.addObject("adminCode", adminCode);

		mav.setViewName("AdminPage");
		
		return mav;
	}

	// Q&A 개별페이지
	@RequestMapping(value = "/QuestionView")
	public ModelAndView QuestionView(CommandMap commandMap, HttpSession session) throws Exception {

		
		System.out.println(commandMap.getMap());

		
		Map<String, Object> map = qnAService.selectOne(commandMap.getMap());
		
		if(session.getAttribute("member_ID")!=null){
			String loginID = session.getAttribute("member_ID").toString();
			String viewID = map.get("MEMBER_ID").toString();
			int Admin = Integer.parseInt(session.getAttribute("member_Admin").toString());
			
			System.out.println("session:"+loginID+", view:"+viewID);
			
			if(!loginID.equals(viewID)){
				if(Admin!=1){
					qnAService.addViewNum(commandMap.getMap());
					System.out.println("조회수를 증가");
				}else{
					System.out.println("관리자는 조회수에 영향을 주지않음.");
				}
			}else if(loginID.equals(viewID)){
				System.out.println("본인이기에 증가하지 않음");
			}else {
				System.out.println("요건 오류니깐 무효");
			}
		}else{
			System.out.println("비로그인은 조회수가 증가하지 않음.");
		}


		
		mav.addObject("view", map);

		mav.setViewName("QuestionView");
		return mav;
	}

	// Q&A 추가 폼
	@RequestMapping(value = "/QuestionInsertForm")
	public ModelAndView QuestionInsertForm() {


		mav.setViewName("QuestionInsertForm");
		return mav;
	}

	// Q&A 추가
	@RequestMapping(value = "/QuestionInsert")
	public ModelAndView QuestionInsert(CommandMap commandMap) throws Exception {

		ModelAndView mav = new ModelAndView();

		qnAService.insert(commandMap.getMap());


		mav.setViewName("redirect:QuestionList");
		
		return mav;
	}

	// Q&A 수정 폼
	@RequestMapping(value = "/QuestionModifyForm")
	public ModelAndView QuestionModifyForm(CommandMap commandMap) throws Exception {

		System.out.println(commandMap.getMap());

		ModelAndView mav = new ModelAndView();

		Map<String, Object> map = qnAService.selectOne(commandMap.getMap());


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

	
		mav.setViewName("redirect:QuestionView?QnA_NO=" + no);
		return mav;
	}

	// Q&A 삭제
	@RequestMapping(value = "/QuestionDelete")
	public ModelAndView QuestionDelete(CommandMap commandMap) throws Exception {

		ModelAndView mav = new ModelAndView();

		qnAService.delete(commandMap.getMap());


		mav.setViewName("redirect:QuestionList");
		return mav;
	}

	// Q&A 답글 폼
	@RequestMapping(value = "/QuestionInsertFormRef")
		public ModelAndView QuestionInsertFormRef(CommandMap commandMap) throws Exception{
			
			
			System.out.println(commandMap.getMap());
			
			commandMap.MapInfoList();
			
			ModelAndView mav = new ModelAndView();



			mav.addObject("view", commandMap.getMap());
			
			mav.setViewName("QuestionInsertFormRef");
			return mav;
		}

	// Q&A 답글 추가
	@RequestMapping(value="/QuestionInsertRef")

	public ModelAndView QuestionInsertRef(CommandMap commandMap) throws Exception {

		ModelAndView mav = new ModelAndView();

		qnAService.insertRef(commandMap.getMap());


		mav.setViewName("redirect:AdminQuestionList");
		return mav;
	}

}
