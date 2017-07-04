package IMPet.petShop.adminItem;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;
import IMPet.petShop.item.ItemDAO;

@Controller
@RequestMapping(value="/PetShop")
public class AdminItemController {
	
	ModelAndView mav = new ModelAndView();
	
	@Resource(name="adminItemService")
	private AdminItemService adminItemService;
	
	//펫샵관리자상품리스트
	@RequestMapping(value="/AdminItemList")
	public ModelAndView AdminItemList(CommandMap commandMap) throws Exception {
		
		ModelAndView mav = new ModelAndView("AdminItemList");
		
		List<Map<String,Object>> itemList = adminItemService.itemList(commandMap.getMap()); 
		
		int count = itemList.size();
		mav.addObject("itemList", itemList);
		mav.addObject("totalCount", count);
		return mav;
		
		
	}
	
	//펫샵관리자상품추가폼
	@RequestMapping(value="/AdminItemWriteForm")
	public ModelAndView AdminItemWriteForm() throws Exception {

		 
		mav.setViewName("AdminItemWriteForm");
		return mav;
	}
	
	//펫샵관리자상품추가
	@RequestMapping(value="/AdminItemWrite")
	public ModelAndView AdminItemWrite(CommandMap commandMap) throws Exception {

		adminItemService.itemInsert(commandMap.getMap());
		
		mav.setViewName("redirect:/AdminItemList");
		return mav;
	}
	
	//펫샵관리자상품수정폼
	@RequestMapping(value="/AdminItemModifyForm")
	public ModelAndView AdminItemModifyForm() throws Exception {

		
		System.out.println("펫샵관리자상품수정폼");
	
		
		mav.setViewName("AdminItemModifyForm");
		return mav;
	}
	
	//펫샵관리자상품수정
	@RequestMapping(value="/AdminItemModify")
	public ModelAndView AdminItemModify()  throws Exception {

		
		System.out.println("펫샵관리자상품수정");
	
		
		mav.setViewName("AdminItemModify");
		return mav;
	}
	
	//펫샵관리자상품삭제
	@RequestMapping(value="/AdminItemDelete")
	public ModelAndView AdminItemDelete() throws Exception  {

		
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
