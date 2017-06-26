package IMPet.petShop.item;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/PetShop")
public class ItemController {
	
	ModelAndView mav = new ModelAndView();
	
	//펫샵메인
	@RequestMapping(value="/Main")
	public ModelAndView Main() {

		
		System.out.println("펫샵메인");
	
		
		mav.setViewName("PetShop");
		return mav;
	}
	
	
	//펫샵상품리스트
	@RequestMapping(value="/ItemList")
	public ModelAndView ItemList() {

		
		System.out.println("펫샵상품리스트");
	
		
		mav.setViewName("ItemList");
		return mav;
	}
	
	
	//펫샵상품상세보기
	@RequestMapping(value="/ItemView")
	public ModelAndView ItemView() {

		
		System.out.println("펫샵상품상세보기");
	
		
		mav.setViewName("ItemView");
		return mav;
	}
	
	
	//펫샵상품후기상세보기
		@RequestMapping(value="/ItemCommentView")
		public ModelAndView ItemCommentView() {

			
			System.out.println("펫샵상품후기상세보기");
		
			
			mav.setViewName("ItemCommentView");
			return mav;
		}
}
