package IMPet.petShop.adminItem;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/PetShop")
public class AdminItemController {
	
	ModelAndView mav = new ModelAndView();
	
	//펫샵관리자상품리스트
	@RequestMapping(value="/AdminItemList")
	public ModelAndView AdminItemList() {

		
		System.out.println("펫샵관리자상품리스트");
	
		
		mav.setViewName("AdminItemList");
		return mav;
	}
	
	//펫샵관리자상품추가폼
	@RequestMapping(value="/AdminItemWriteForm")
	public ModelAndView AdminItemWriteForm() {

		
		System.out.println("펫샵관리자상품추가폼");
	
		
		mav.setViewName("AdminItemWriteForm");
		return mav;
	}
	
	//펫샵관리자상품추가
	@RequestMapping(value="/AdminItemWrite")
	public ModelAndView AdminItemWrite() {

		
		System.out.println("펫샵관리자상품추가");
	
		
		mav.setViewName("AdminItemWrite");
		return mav;
	}
	
	//펫샵관리자상품수정폼
	@RequestMapping(value="/AdminItemModifyForm")
	public ModelAndView AdminItemModifyForm() {

		
		System.out.println("펫샵관리자상품수정폼");
	
		
		mav.setViewName("AdminItemModifyForm");
		return mav;
	}
	
	//펫샵관리자상품수정
	@RequestMapping(value="/AdminItemModify")
	public ModelAndView AdminItemModify() {

		
		System.out.println("펫샵관리자상품수정");
	
		
		mav.setViewName("AdminItemModify");
		return mav;
	}
	
	//펫샵관리자상품삭제
	@RequestMapping(value="/AdminItemDelete")
	public ModelAndView AdminItemDelete() {

		
		System.out.println("펫샵관리자상품삭제");
	
		
		mav.setViewName("AdminItemDelete");
		return mav;
	}
	
	//관리자회원주문내역리스트
	@RequestMapping(value="/AdminOrderList")
	public ModelAndView AdminOrderList() {

		
		System.out.println("관리자회원주문내역리스트");
	
		
		mav.setViewName("AdminOrderList");
		return mav;
	}
	
	//관리자회원주문결제상태
	@RequestMapping(value="/AdminOrderPay")
	public ModelAndView AdminOrderPay() {

		
		System.out.println("관리자회원주문결제상태");
	
		
		mav.setViewName("AdminOrderPay");
		return mav;
	}

}
