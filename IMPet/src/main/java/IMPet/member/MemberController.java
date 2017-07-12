package IMPet.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;

@Controller
@RequestMapping(value="/Member")
public class MemberController {
	
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	
	ModelAndView mav = new ModelAndView();
	
	
	List<Map<String,Object>> listAll =null;
	
	
	
//////////////////로그인 관련////////////////////////////////////////////////////
	//로그인  폼
	@RequestMapping(value="/LoginForm")
	public ModelAndView loginForm(){

		String url = "LoginForm1";
		
		System.out.println("로그인 폼");		
		mav.setViewName(url);		
		return mav;
	}	
	
	//로그인 처리
	@RequestMapping(value="/Login")
	public ModelAndView Login(CommandMap commandMap,HttpSession session) throws Exception{

		String url = "member/loginForm";
		
		System.out.println("로그인 처리 후 메인 이동");
		System.out.println(commandMap.getMap());				
		
		ModelAndView mav = new ModelAndView();		
				
		//로그인 상태 :  0:로그인 실패  1: 로그인 성공	
		int LoginSuccess = memberService.selectLogInCount(commandMap.getMap());	
				
		if(LoginSuccess>0){//로그인 성공시
			
			//회원 정보 가져오기
			Map<String,Object>  check = memberService.selectLogInOne(commandMap.getMap());			
			
			System.out.println("회원 정보:"+check);					
			
			//session 에 회원 ID 와 권한 여부 저장함.
			session.setAttribute("member_ID", check.get("MEMBER_ID").toString());		// 로그인 아이지 저장			
			session.setAttribute("member_Admin", check.get("MEMBER_ADMIN").toString());	// 로그인시 관리자 권한 여부 체크  0:일반 1:관리자
			
			LoginSuccess = 1; //1: 로그인 성공	 
			
		}else{ //로그인 실패시
			
			String errorMsg ="아이디 또는 비밀번호가 잘못 되었습니다 다시 확인해주세요";			
			mav.addObject("errorMsg", errorMsg);	
			
		}
						
		mav.addObject("LoginSuccess",LoginSuccess );			
		mav.setViewName(url);
		
		return mav;
	}
	
	@RequestMapping(value="/Logout")
	public ModelAndView Logout(HttpSession session) throws Exception{

		//메인 하면으로 이동
		String url = "redirect:/Main";		
		
		System.out.println("로그아웃 처리 후 메인 이동");		
		System.out.println("로그인 된 아이디::"+session.getAttribute("member_ID"));

		//로그인 되어 있을 경우
		if(session.getAttribute("member_ID")!= null){
			
			session.invalidate();  //session 값을 모두 지움			
		}

		mav.setViewName(url);
		return mav;
	}
	


	
	
//////////////////////////////////////////////////////////////////////////////	
	
	
	
	
	
	//회원 가입 메인 폼
	@RequestMapping(value="/JoinMain")
	public ModelAndView JoinMain(){

		String url = "JoinMain";

		System.out.println("회원 가입 계약");
		
		mav.setViewName(url);
		return mav;
	}	
	
	
	//회원 가입 폼
	@RequestMapping(value="/JoinForm")
	public ModelAndView JoinForm(){
		
		ModelAndView mav = new ModelAndView();
		
		String url ="member/joinForm";
		System.out.println("회원 가입 폼");		
		
		mav.setViewName(url);
		return mav;
	}
		
	@RequestMapping(value="/IDCheck")
	public ModelAndView IDCheck(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		String url = "member/IDCheck";
		System.out.println("ID 중복 체크");
		
		
		commandMap.MapInfoList();
		
		int distinctID = 0;	
		
		distinctID  = memberService.selectIDdistinctCount(commandMap.getMap());	

		String memberID= commandMap.get("MEMBER_ID").toString();
		
		
		System.out.println("distinctID:"+distinctID);
		System.out.println("memberID:"+memberID);
		
		
		mav.addObject("distinctID", distinctID);	
		
		mav.addObject("MEMBER_ID", memberID);	
		
		
		
		mav.setViewName(url);
		return mav;
	}	
	
	
	//회원 가입 처리
	@RequestMapping(value="/JoinInset")
	public ModelAndView JoinInset(CommandMap commandMap) throws Exception{

		ModelAndView mav = new ModelAndView();
		String url ="member/joinInsetSuccess";
		System.out.println("회원 가입 처리");		
		
		//기본 설정 데이터 
		commandMap.MapInfoList();	
		JoinInsertAddData(commandMap);
		
		//정보 확인
		commandMap.MapInfoList();				
		
		memberService.insert(commandMap.getMap());
		
		mav.setViewName(url);
		return mav;
	}
	
	//회원 가입시  DB 기본으로 들어가는 값들  추가 입력.
	public void JoinInsertAddData(CommandMap commandMap){
		
		String userYN="Y"; // 사용 여부 ,Y: 사용 N: 미사용	
		int admin = 0;     // 관리자 권한   0:일반 1:관리자
		
		commandMap.put("MEMBER_USERYN", userYN);
		commandMap.put("MEMBER_ADMIN", admin);
		
	}
	
	
	
/*	//회원 수정  폼
	@RequestMapping(value="/ModifiedForm")
	public ModelAndView ModifiedForm(@ModelAttribute("NO") int idx) throws Exception{

		
		System.out.println("회원 수정 폼"+idx);
		
		
		Map<String,Object> list =this.listAll.get(idx-1);
		
		System.out.println("회원 수정 폼"+idx);

		String url = "ModifiedForm";
		
		//Map<String,Object> list = memberService.selectOne(commandMap.getMap());				
		System.out.println(list);	
				
		
		mav.addObject("member", list);	
		
		
		mav.setViewName(url);	

	
		return mav;
	}
	
		*/
	
	//회원 수정  폼
	@RequestMapping(value="/ModifiedForm")
	public ModelAndView ModifiedForm(CommandMap commandMap, HttpSession session) throws Exception{

		ModelAndView mav = new ModelAndView();
		
		String url = "member/modifiedForm";			
		
		System.out.println("회원 수정 폼");	
	
		
		//회원 개인 정보
		Map<String, Object> memberInfo = getMemberInfo(commandMap,session);
		
		System.out.println(memberInfo);
		
		mav.addObject("memberInfo", memberInfo);				

				
		
		
		
		mav.setViewName(url);	

	
		return mav;
	}
	
	
	public Map<String, Object> getMemberInfo(CommandMap commandMap, HttpSession session) throws Exception{
		
		
		String member_Admin= session.getAttribute("member_Admin").toString();				
		
		System.out.println("member_Admin:"+member_Admin);			
		
		String member_ID="";
		
		if(member_Admin.equals("1")){	//관리자일 경우
			
			 member_ID=commandMap.get("Member_ID").toString();
			
		}else if(member_Admin.equals("0")){  //일반 사용자 일 경우
										
			member_ID= session.getAttribute("member_ID").toString();			
			commandMap.put("MEMBER_ID", member_ID);			
		
		}
				
		Map<String, Object> memberInfo = memberService.selectOne(commandMap.getMap());	
		
		return memberInfo;
	}
	
	
		
	//회원 수정 처리 
	@RequestMapping(value="/Modified")
	public ModelAndView Modified(CommandMap commandMap, HttpSession session) throws Exception{


		System.out.println("회원들의 정보 수정 처리");

		
		mav.setViewName("ModifiedForm");
		return mav;
	}

	
	
	

	
	
	//회원 약관 동의 폼
	@RequestMapping(value="/JoinAgreement")
	public ModelAndView MembershipAgreement(){


		System.out.println("회원 가입 계약");

		
		mav.setViewName("JoinAgreement");
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
		

		System.out.println(listAll);

		mav.addObject("listAll", listAll);	
		
		if(this.listAll != null){
		
			this.listAll.clear();		
		}		
		this.listAll = listAll;
		
		mav.setViewName(url);	
		
		return mav;
	}
	



	


}
