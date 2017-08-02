package IMPet.community;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value="/Community")
public class CommunityController {

	ModelAndView mav = new ModelAndView();
	
	
	//커뮤니티 메인
	@RequestMapping(value="/Main")
	public ModelAndView MembershipAgreement(){
		
		System.out.println("커뮤니티 메인");

		
		mav.setViewName("Community");
		return mav;
	}

	
	
}
