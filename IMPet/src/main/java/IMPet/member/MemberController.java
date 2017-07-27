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
	
	
	
	
	List<Map<String,Object>> listAll =null;
	
	
	
//////////////////로그인 관련////////////////////////////////////////////////////
	//로그인  폼
	@RequestMapping(value="/LoginForm")
	public ModelAndView loginForm(){


		ModelAndView mav = new ModelAndView();
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
			session.setAttribute("member_Requests", check.get("MEMBER_REQUESTS").toString());
			
			LoginSuccess = 1; //1: 로그인 성공	 
			
		}else{ //로그인 실패시
			
			String errorMsg ="아이디 또는 비밀번호가 틀립니다. 다시 확인해주세요.";			
			mav.addObject("errorMsg", errorMsg);	
			
		}
						
		mav.addObject("LoginSuccess",LoginSuccess );			
		mav.setViewName(url);
		
		return mav;
	}
	
	@RequestMapping(value="/Logout")
	public ModelAndView Logout(HttpSession session) throws Exception{

		ModelAndView mav = new ModelAndView();
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

		ModelAndView mav = new ModelAndView();
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
	

	
	//회원 수정  폼
	@RequestMapping(value="/ModifiedForm")
	public ModelAndView ModifiedForm(CommandMap commandMap, HttpSession session) throws Exception{

		ModelAndView mav = new ModelAndView();
		
		String url = "member/admin/modifiedForm";			
		
		System.out.println("회원 수정 폼");	
	
		
		commandMap.MapInfoList();
		
		
		
		//회원 개인 정보
		System.out.println("2");	
		
		
		
		Map<String, Object> memberInfo = getMemberInfo(commandMap,session);
		
		System.out.println(memberInfo);
		
		mav.addObject("memberInfo", memberInfo);				

				
		
		
		
		mav.setViewName(url);	

	
		return mav;
	}
	
	
	public Map<String, Object> getMemberInfo(CommandMap commandMap, HttpSession session) throws Exception{
	
		
		
		String member_Admin = "0";
		if(session.getAttribute("member_Admin") == null){
		
			member_Admin = "1";
		}else{
			 member_Admin= session.getAttribute("member_Admin").toString();				
		}
		
	
		System.out.println("member_Admin:"+member_Admin);			
		
		String member_ID="";
		String Mypage= commandMap.get("Mypage").toString();
		
	
			
		if(member_Admin.equals("0") || Mypage.equals("1") ){  //일반 사용자 일 경우  or 마이 페이지일경우
				

			member_ID= session.getAttribute("member_ID").toString();

			commandMap.put("MEMBER_ID", member_ID);	
			
		}else if(member_Admin.equals("1")){	//관리자일 경우
			
			 member_ID=commandMap.get("MEMBER_ID").toString();

				
		}
				
				
		Map<String, Object> memberInfo = memberService.selectOne(commandMap.getMap());	
		
		return memberInfo;
	}
	
	
		
	//회원 수정 처리 
	@RequestMapping(value="/Modified")
	public ModelAndView Modified(CommandMap commandMap, HttpSession session) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		System.out.println("회원들의 정보 수정 처리");
		
		commandMap.MapInfoList();
		
		
	

		memberService.update(commandMap.getMap());
		

		Map<String, Object> memberInfo = getMemberInfo(commandMap,session);
	
		
		
		System.out.println(memberInfo);
		
		mav.addObject("memberInfo", memberInfo);				

		
		mav.setViewName("member/admin/modifiedForm");
		return mav;
	}

	
	
	

	
	
	//회원 약관 동의 폼
	@RequestMapping(value="/JoinAgreement")
	public ModelAndView MembershipAgreement(){

		ModelAndView mav = new ModelAndView();
		System.out.println("회원 가입 계약");

		
		mav.setViewName("JoinAgreement");
		return mav;
	}
		

	//ID 찾기 폼
	@RequestMapping(value="/FindIDForm")
	public ModelAndView FindIDForm(){

		ModelAndView mav = new ModelAndView();
		System.out.println("ID 찾기 폼");
		
		String url = "member/findIDForm";

		
		mav.setViewName(url);
		return mav;
	}
	
	
	//ID 찾기 처리
	@RequestMapping(value="/FindID")
	public ModelAndView FindID(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("ID 찾기 처리");
		String url ="member/findIDForm";
		commandMap.MapInfoList();
		
		int IDCount= memberService.selectFindIDCount(commandMap.getMap());
		
		String msg = "";
		
		if(IDCount>0){ //사용자 정보가 있을 경우
			
			Map<String, Object> Findlist = memberService.selectFindIDOne(commandMap.getMap());
			
			msg = " 아이디는"+  Findlist.get("MEMBER_ID").toString()  + "입니다.  ";
			mav.addObject("msg", msg);
			
		}else{ //사용자가 없는 겨우
			
			msg = " 검색 결과  잘못된 정보 입니다.";
			mav.addObject("msg", msg);
			
		}
		
		
		
		mav.setViewName(url);
		return mav;
	}
	
		
	
	
	
	
	//비번 찾기 폼
	@RequestMapping(value="/FindPwForm")
	public ModelAndView FindPwForm(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();

		System.out.println("비번 찾기 폼");
		String url ="member/findPwForm";
		
		
		
		mav.setViewName(url);
		
		return mav;
	}
	
	
	//비번 찾기 처리
	@RequestMapping(value="/FindPw")
	public ModelAndView FindPw(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("비번 찾기 처리");
		String url ="member/findPwForm";
		
		commandMap.MapInfoList();
		
		int PwCount= memberService.selectFindPwCount(commandMap.getMap());
		
		String msg = "";
		
		if(PwCount>0){ //사용자 정보가 있을 경우
			
			Map<String, Object> Pwlist = memberService.selectFindPwOne(commandMap.getMap());
			
			
			System.out.println(Pwlist);
			msg = "비밀번호는"+  Pwlist.get("MEMBER_PW").toString()  + "입니다.  ";
			System.out.println(msg);
			
			
			mav.addObject("msg", msg);
			
		}else{ //사용자가 없는 겨우
			
			msg = " 검색 결과  잘못된 정보 입니다.";
			mav.addObject("msg", msg);
			
		}
		
		
		
		mav.setViewName(url);
		return mav;
	}
		
	
	//회원 탈퇴 폼
	@RequestMapping(value="/DeleteForm")
	public ModelAndView DeleteForm(CommandMap commandMap,HttpSession session) throws Exception{

		ModelAndView mav = new ModelAndView();
		System.out.println("로그인 탈퇴폼");
		
		
		
		String member_ID = session.getAttribute("member_ID").toString();
		commandMap.put("MEMBER_ID",member_ID);
		
		Map<String,Object>  list = memberService.selectOne(commandMap.getMap());	
		
		System.out.println(list);
		
		String MEMBER_PW = list.get("MEMBER_PW").toString();
		
		mav.addObject("MEMBER_PW", MEMBER_PW);
		
		mav.setViewName("member/deleteForm");
		return mav;
	}
	
	
	//회원 탈퇴 처리
	@RequestMapping(value="/Delete")
	public ModelAndView Delete(CommandMap commandMap) throws Exception{

		ModelAndView mav = new ModelAndView();
		String url = "member/admin/memberList";
		System.out.println("회원 탈퇴 처리");

		
		commandMap.MapInfoList();
		
		//탈퇴 처리 추가 로직
		
		
		//사용 여부 Y:사용 N: 미사용
		String userYN ="N";
		commandMap.put("MEMBER_USERYN",userYN);
		
		//commandMap.MapInfoList();
		
		memberService.updateUserYN(commandMap.getMap());		
		

		String Page = commandMap.get("PAGE").toString(); 
		
	
			
		String pagingHtml =pagingHtml(commandMap,Integer.parseInt(Page));
		commandMap.MapInfoList();
		
		List<Map<String,Object>> listAll = memberService.selectRangeAll(commandMap.getMap());		
		mav.addObject("listAll", listAll);	
		mav.addObject("pagingHtml", pagingHtml);	
		
		mav.setViewName(url);
		return mav;
	}
	

	//회원 탈퇴 처리
	@RequestMapping(value="/DeleteMember")
	public ModelAndView DeleteMember(CommandMap commandMap,HttpSession session) throws Exception{

		ModelAndView mav = new ModelAndView();
		String url = "redirect:/Main";
		System.out.println("회원 탈퇴 처리");

		String member_ID = session.getAttribute("member_ID").toString();
		commandMap.put("MEMBER_ID",member_ID);
		
		//사용 여부 Y:사용 N: 미사용
		String userYN ="N";
		commandMap.put("MEMBER_USERYN",userYN);
		
		
		memberService.updateUserYN(commandMap.getMap());		
		
		mav.setViewName(url);
		return mav;
	}
	

	
	


	private String pagingHtml(CommandMap commandMap,int pageNo) throws Exception{		
		
		
		
		
		int blockCount =3;
		

		int totalCount=  memberService.selectMemberCount();	
		
		int totalPage = (int) Math.ceil((double) totalCount / blockCount);		
		//System.out.println("totalCount:"+totalCount  +"   blockCount: "+  blockCount );		
		//System.out.println("totalPage:"+totalPage   +"  |||  "+  (int) Math.ceil((double) totalCount / blockCount)        );
		
		String PAGIN = String.valueOf(blockCount);	
		String PAGINGNO = String.valueOf(pageNo);		
		commandMap.put("PAGING",PAGIN); //페이지의 리스트 수
		commandMap.put("PAGINGNO",PAGINGNO); // 페이지  몇번째인지 	
		
		
		StringBuffer pagingHtml = new StringBuffer();
		
		for(int i=1; i<=totalPage;i++ ){			
			
			if(i==pageNo){
				
				pagingHtml.append("<strong>");
				pagingHtml.append(i);						
				pagingHtml.append("</strong>  ");
			
			}else{
				
				pagingHtml.append(" <a class='page' href='javascript:ajaxPageView("+i+");'>" );			
				pagingHtml.append(i);				
				pagingHtml.append("</a> ");
				
			}
			
		}
		

		
		return pagingHtml.toString();
		
	}

	
	//회원 정보 리스트
	@RequestMapping(value="/MemberList")
	public ModelAndView MemberList(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		System.out.println("회원들의 정보 리스트 보여주기");

		String url = "AdminPage";

		//관리자페이지 통합코드
		int adminCode = 1;
		mav.addObject("adminCode", adminCode);
		
		String pagingHtml = pagingHtml(commandMap,1);
		
		String Page ="1"; 
		mav.addObject("Page", Page);	
		commandMap.MapInfoList();
		
		List<Map<String,Object>> listAll = memberService.selectRangeAll(commandMap.getMap());		
		mav.addObject("listAll", listAll);	
		mav.addObject("pagingHtml", pagingHtml);	


		mav.setViewName(url);	
		
		return mav;
	}
	

	
	//회원 정보 페이지 리스트
	@RequestMapping(value="/MemberPageList")
	public ModelAndView MemberPageList(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		System.out.println("회원들의 정보 리스트 보여주기");

		String url = "member/admin/memberList";	
		
		
		String Page = commandMap.get("PAGE").toString(); 
		
		mav.addObject("Page", Page);	
		
		int page =  Integer.parseInt( Page);
		
		String pagingHtml = pagingHtml(commandMap,page);
		commandMap.MapInfoList();
		
		List<Map<String,Object>> listAll = memberService.selectRangeAll(commandMap.getMap());		
		mav.addObject("listAll", listAll);	
		mav.addObject("pagingHtml", pagingHtml);	


		mav.setViewName(url);	
		
		return mav;
	}


	


}
