package IMPet.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;

@Controller
@RequestMapping(value="/Member")
public class MemberController {
	
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	
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


		System.out.println("회원 가입 처리");

		
		mav.setViewName("JoinInsetSuccess");
		return mav;
	}


	//로그인  폼
	@RequestMapping(value="/LoginForm")
	public ModelAndView loginForm(){


		System.out.println("로그인 폼");

		
		mav.setViewName("LoginForm");
		return mav;
	}
	
	

	//ID 찾기 폼
	@RequestMapping(value="/FindIDForm")
	public ModelAndView FindIDForm(){


		System.out.println("ID 찾기 폼");

		
		mav.setViewName("FindIDForm");
		return mav;
	}
	
	
	//ID 찾기 폼
	@RequestMapping(value="/FindID")
	public ModelAndView FindID(){


		System.out.println("ID 찾기 처리");

		
		mav.setViewName("FindIDForm");
		return mav;
	}
	
		
	
	
	
	
	//비번 찾기 폼
	@RequestMapping(value="/FindPwForm")
	public ModelAndView FindPwForm(){


		System.out.println("비번 찾기 폼");

		
		mav.setViewName("FindPwForm");
		return mav;
	}
	
	
	//비번 찾기 폼
	@RequestMapping(value="/FindPw")
	public ModelAndView FindPw(){


		System.out.println("비번 찾기 처리");

		
		mav.setViewName("FindPwForm");
		return mav;
	}
	
	
	//로그인 처리
	@RequestMapping(value="/Login")
	public ModelAndView Login(){


		System.out.println("로그인 처리 후 메인 이동");

		
		mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping(value="/Logout")
	public ModelAndView Logout(){


		System.out.println("로그아웃 처리 후 메인 이동");

		
		mav.setViewName("main");
		return mav;
	}
	
	
	
	//회원 탈퇴 폼
	@RequestMapping(value="/DeleteForm")
	public ModelAndView DeleteForm(){


		System.out.println("로그인 탈퇴폼");

		
		mav.setViewName("DeleteForm");
		return mav;
	}
	
	
	//회원 탈퇴 처리
	@RequestMapping(value="/Delete")
	public ModelAndView Delete(){


		System.out.println("로그인 탈퇴 처리 후 메인으로 이동");

		
		mav.setViewName("main");
		return mav;
	}

	
	//회원 정보 리스트
	@RequestMapping(value="/MemberList")
	public ModelAndView MemberList() throws Exception{

		System.out.println("회원들의 정보 리스트 보여주기");

		String url = "MemberList";
		
		List<Map<String,Object>> listAll = memberService.selectAll();		

		mav.addObject("list", listAll);	
		
		
		mav.setViewName(url);	
		
		return mav;
	}
	



	//회원 수정  폼
	@RequestMapping(value="/ModifiedForm")
	public ModelAndView ModifiedForm(CommandMap commandMap) throws Exception{


		System.out.println("회원 수정 폼");

		
		mav.setViewName("ModifiedForm");
		return mav;
	}
	
	//회원 수정 처리 
	@RequestMapping(value="/Modified")
	public ModelAndView Modified(CommandMap commandMap) throws Exception{


		System.out.println("회원들의 정보 수정 처리");

		
		mav.setViewName("ModifiedForm");
		return mav;
	}


}
