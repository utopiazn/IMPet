package IMPet.mypage;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import IMPet.community.gallery.GalleryService;
import IMPet.member.MemberService;
import IMPet.module.CommandMap;
import IMPet.serviceCenter.QnA.QnAService;

@Controller
public class MypageController {

	@Resource(name="memberService")
	private MemberService memberService;
	
	@Resource(name = "qnAService")
	private QnAService qnAService;	

	@Resource(name="galleryService")
	private GalleryService galleryService;
	
	@RequestMapping(value="/MyPage")
	public ModelAndView mypage(){
		ModelAndView mav = new ModelAndView();
		
		
		String msg="회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한 번 확인합니다.";
		
		mav.addObject("msg", msg);
		
		
		
		mav.setViewName("MyPage");
		return mav;
	}
	
	@RequestMapping(value="/MyWriting")
	public ModelAndView myWriting(HttpSession session) throws Exception{
		ModelAndView mav = new ModelAndView();
		
		String member_ID = session.getAttribute("member_ID").toString();
		
		List<Map<String, Object>> QNAlist = qnAService.selectMy(member_ID);
		
		
		mav.addObject("QNAlist", QNAlist);
		
		
		mav.setViewName("myPage/myWriting");
		return mav;
	}
	
	
	

	@RequestMapping(value="/MemberModifiedForm")
	public ModelAndView MemberModifiedForm(CommandMap commandMap,HttpSession session) throws Exception{
		ModelAndView mav = new ModelAndView();
		
		
		String url ="myPage/PasswordCheck";
		
	
		
		if(commandMap.get("No").toString().equals("1")){
			
			url ="myPage/PasswordCheck";
			String msg="회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한 번 확인합니다.";
			mav.addObject("msg", msg);
			
		}else{
			
			String member_ID = session.getAttribute("member_ID").toString();
			
			System.out.println(member_ID);
			
			commandMap.put("MEMBER_ID", member_ID);
			
			int count = memberService.selectLogInCount(commandMap.getMap());
			
			if(count >0 ){  //비번을 정상으로 쳤을경우
				
				url ="redirect:/Member/ModifiedForm?Mypage=1";
				
			}else{ // 비번이 틀린경우
				url ="myPage/PasswordCheck";
				String msg="비밀번호를 잘못 입력 하셨습니다. 다시 한 번 확인해 주세요.";		
				mav.addObject("msg", msg);
				
			}
		
		}
		
		
		mav.setViewName(url);
		return mav;
	}
	
	
	
	@RequestMapping(value="/AdminPage")
	public ModelAndView adminPage(){
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("AdminPage");
		return mav;
	}

}
