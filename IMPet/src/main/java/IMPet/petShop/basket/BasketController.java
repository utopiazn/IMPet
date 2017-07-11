package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;

@Controller
@RequestMapping(value="/PetShop")
public class BasketController {
	
	ModelAndView mav = new ModelAndView();
	
	@Resource(name="basketService")
	private BasketService basketService;
	
	//펫샵장바구니리스트
	@RequestMapping(value="/BasketList")
	public ModelAndView BasketList(CommandMap commandMap) throws Exception {
		
		System.out.println("펫샵장바구니리스트");
		List<Map<String, Object>> list = basketService.selectAll(commandMap.getMap());
		
		System.out.println("size"+list.size());
		
		mav.addObject("basketList", list);
		mav.setViewName("BasketList");
		return mav;
	}
	
	//펫샵장바구니추가처리
	@RequestMapping(value="/BasketWrite")
	public ModelAndView BasketWrite(CommandMap commandMap, HttpSession session) throws Exception {

		System.out.println("펫샵장바구니추가처리");
		System.out.println(commandMap.getMap());
		basketService.insert(commandMap.getMap());
		
		String id = session.getAttribute("member_ID").toString();
		
		mav.setViewName("redirect:/PetShop/BasketList?MEMBER_ID="+id);
		return mav;
	}
	
	//펫샵장바구니상품삭제
	@RequestMapping(value="/BasketDelete")
	public ModelAndView BasketDelete(CommandMap commandMap, HttpSession session) throws	Exception {
		
		System.out.println("controller" +commandMap.getMap());
		basketService.delete(commandMap.getMap());
		System.out.println("펫샵장바구니상품삭제");
			
		String id = session.getAttribute("member_ID").toString();
		
		mav.setViewName("redirect:BasketList?MEMBER_ID="+id);
		return mav;
	}
	
	//펫샵주문상품리스트
	@RequestMapping(value="/OrderList")
	public ModelAndView OrderList() {
		
		System.out.println("펫샵주문상품리스트");
		
		mav.setViewName("OrderList");
		return mav;
	}
	
	//펫샵주문배송상태처리
	@RequestMapping(value="/OrderShip")
	public ModelAndView OrderShip() {
	
		System.out.println("펫샵주문배송상태처리");
			
		mav.setViewName("OrderShip");
		return mav;
	}
	
	//펫샵주문결제상태처리
	@RequestMapping(value="/OrderPay")
	public ModelAndView OrderPay() {
		
		System.out.println("펫샵주문결제상태처리");
		
		mav.setViewName("OrderPay");
		return mav;
	}
	
	@RequestMapping(value="/OrderItemPay")
	public ModelAndView OrderItemPay() {
		
		System.out.println("펫상품결제진행");
				
		mav.setViewName("OrderItemPay");
		return mav;
	}
	
}
