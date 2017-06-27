package IMPet.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/Member")
public class MemberController {
	
	ModelAndView mav = new ModelAndView();
	
	
	
	
	//회원 약관 동의 폼
	@RequestMapping(value="/JoinAgreement")
	public ModelAndView MembershipAgreement(){


		System.out.println("회원 가입 계약");

		
		mav.setViewName("JoinAgreement");
		return mav;
	}

	
	
	//회원 가입 폼
	@RequestMapping(value="/JoinForm")
	public ModelAndView JoinForm(){


		System.out.println("회원 가입 폼");

		
		mav.setViewName("JoinForm");
		return mav;
	}
	
	
	
	//회원 가입 처리
	@RequestMapping(value="/JoinInset")
	public ModelAndView JoinInset(){


		System.out.println("회원 가입 폼");

		
		mav.setViewName("JoinInsetSuccess");
		return mav;
	}


	//로그인 폼 폼
	@RequestMapping(value="/LoginForm")
	public ModelAndView loginForm(){


		System.out.println("회원 가입 폼");

		
		mav.setViewName("loginForm");
		return mav;
	}
	
	


}
