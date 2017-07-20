package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import IMPet.member.MemberService;
import IMPet.module.CommandMap;

@Controller
@RequestMapping(value="/PetShop")
public class BasketController {
	
	
	
	@Resource(name="basketService")
	private BasketService basketService;
	
	@Resource(name="orderService")
	private OrderService orderService;
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	@Resource(name="receiveService")
	private ReceiveService receiveService;
	
	
	////////////////////////////////////////////////////////////////////////////Basket
	
	//펫샵장바구니리스트
	@RequestMapping(value="/BasketList")
	public ModelAndView BasketList(CommandMap commandMap) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("펫샵장바구니리스트");
		List<Map<String, Object>> list = basketService.selectAll(commandMap.getMap());
		
		System.out.println("size"+list.size());
		
		mav.addObject("basketList", list);
		mav.setViewName("BasketList");
		return mav;
	}
	
	//펫샵장바구니추가처리
	@RequestMapping(value="/BasketInsert")
	public ModelAndView BasketInsert(CommandMap commandMap, HttpSession session) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
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
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("controller" +commandMap.getMap());
		basketService.delete(commandMap.getMap());
		System.out.println("펫샵장바구니상품삭제");
			
		String id = session.getAttribute("member_ID").toString();
		
		mav.setViewName("redirect:/PetShop/BasketList?MEMBER_ID="+id);
		return mav;
	}

	
	////////////////////////////////////////////////////////////////////////////Order
	
	//펫샵장바구니전체주문폼Basket
	@RequestMapping(value="/OrderFormB")

	public ModelAndView OrderList(CommandMap commandMap, HttpServletRequest request, HttpSession session) throws Exception {
	
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = orderService.selectAll(commandMap.getMap(), request);
		
		session.setAttribute("orderView", map.get("orderView"));
		session.setAttribute("member", map.get("member"));

		mav.addObject("member", map.get("member"));
		mav.addObject("orderView", map.get("orderView"));
		
		mav.setViewName("OrderFormB");
		
		return mav;
	}
	
	//펫샵상품바로주문폼Direct
	@RequestMapping(value="/OrderFormD")
	public ModelAndView OrderView(CommandMap commandMap, HttpSession session) throws Exception {

		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = orderService.selectOne(commandMap.getMap());
		
		session.setAttribute("orderView", map.get("orderView"));
		session.setAttribute("member", map.get("member"));
		
		mav.addObject("member", map.get("member"));
		mav.addObject("orderView", map.get("orderView"));
		mav.setViewName("OrderFormD");
		
		return mav;
	
	}
	
	
	//펫상품결제진행
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/OrderItemPay")
	public ModelAndView OrderItemPay(CommandMap commandMap, HttpServletRequest request, HttpSession session) {
		
		ModelAndView mav = new ModelAndView();

		List<Map<String,Object>> orderPay = (List<Map<String, Object>>) session.getAttribute("orderView");
		Map<String,Object> orderMember = (Map<String, Object>) session.getAttribute("member");
		
	/*	session.removeAttribute("orderView");
		session.removeAttribute("member");*/
		
		
		mav.addObject("orderPay", orderPay);
		mav.addObject("member", orderMember);
		mav.addObject("receive", commandMap.getMap());

		mav.setViewName("OrderItemPay");
		return mav;
	}
	
	//펫샵주문완료

	@RequestMapping(value="/OrderComplete")
	public ModelAndView OrderComplete(CommandMap commandMap, HttpSession session) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
	
		orderService.insert(commandMap.getMap(), session);
		 
		
		System.out.println("펫샵주문완료");
			
		mav.setViewName("OrderComplete");
		return mav;
	}
	
	//펫샵구매내역
	@RequestMapping(value="/OrderList")
	public ModelAndView OrderList(CommandMap commandMap) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("펫샵구매내역");
		List<Map<String, Object>> list = orderService.selectList(commandMap.getMap());
		
		System.out.println("size"+list.size());
		
		mav.addObject("orderList", list);
		mav.setViewName("OrderList");
		return mav;
	}
	
	//펫샵구매취소
	@RequestMapping(value="/OrderDelete")
	public ModelAndView OrderDelete(CommandMap commandMap, HttpSession session) throws	Exception {
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println("펫샵구매취소");
		System.out.println("controller" +commandMap.getMap());
		orderService.delete(commandMap.getMap());
			
		String id = session.getAttribute("member_ID").toString();
		
		mav.setViewName("redirect:/PetShop/OrderList?MEMBER_ID="+id);
		return mav;
	}
	
}
