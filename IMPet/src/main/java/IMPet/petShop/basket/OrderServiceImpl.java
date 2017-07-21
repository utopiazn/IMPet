package IMPet.petShop.basket;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import IMPet.member.MemberDAO;
import IMPet.module.CommandMap;

@Service(value="orderService")
public class OrderServiceImpl implements OrderService {
	
	@Resource(name="orderDAO")
	private OrderDAO orderDAO;
	
	@Resource(name="memberDAO")
	private MemberDAO memberDAO;
	
	@Resource(name="receiveDAO")
	private ReceiveDAO receiveDAO;
	
	@Resource(name="basketDAO")
	private BasketDAO basketDAO;


	@Override
	public Map<String, Object> selectAll(Map<String, Object> map,HttpServletRequest request) throws Exception {
		Map<String, Object> resultMap = new HashMap<String,Object>();
		List<Map<String, Object>> orderMap = new ArrayList<Map<String,Object>>();
		
		String[] num = request.getParameterValues("BASKET_NO");
		System.out.println("오류확인");
		for(String a : num) {
			
			System.out.println("넘버"+a);
			map.put("BASKET_NO", a);
			
			orderMap.add(orderDAO.selectAll(map));
			System.out.println(orderMap);

			
		}
		System.out.println("찍힌다");
		System.out.println("장바구니사이즈"+orderMap.size());

		Map<String, Object> memMap = memberDAO.selectOne(map);
		
		resultMap.put("orderView", orderMap);
		resultMap.put("member", memMap);
		
		return resultMap;
	}

	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		Map<String, Object> resultMap = new HashMap<String,Object>();
		List<Map<String, Object>> orderMap = new ArrayList<Map<String,Object>>();
		
		orderMap.add(orderDAO.selectOne(map));	
		orderMap.get(0).put("BASKET_BUYCOUNT", map.get("BASKET_BUYCOUNT").toString());
		
		Map<String, Object> memMap = memberDAO.selectOne(map);
		
		resultMap.put("orderView", orderMap);
		resultMap.put("member", memMap);
		
		return resultMap;
	}


	@SuppressWarnings("unchecked")
	@Override
	public void insert(Map<String, Object> map, HttpSession session) throws Exception {
		
		List<Map<String,Object>> orderPay = (List<Map<String, Object>>) session.getAttribute("orderView");
		
		receiveDAO.insert(map);

		for(int i = 0; i < orderPay.size(); i++) {
			 
			orderPay.get(i).put("MEMBER_ID", map.get("MEMBER_ID"));
			orderPay.get(i).put("RECEIVE_NO", map.get("RECEIVE_NO"));
			
			int price = Integer.parseInt(orderPay.get(i).get("ITEM_PRICE").toString());
			int buyCount = Integer.parseInt(orderPay.get(i).get("BASKET_BUYCOUNT").toString());
		
			
			orderPay.get(i).put("ITEM_PRICE", price * buyCount) ;
			
			System.out.println(price * buyCount);
			System.out.println("주문내역리스트"+orderPay);
			
			orderDAO.insert(orderPay.get(i));
			
			if(orderPay.get(i).get("BASKET_NO") != null){
				basketDAO.delete(orderPay.get(i));
			}
		}
		
		session.removeAttribute("orderView");
		session.removeAttribute("member");
				
	}

	@Override
	public void delete(Map<String, Object> map) throws Exception {

		orderDAO.delete(map);		
	}

	@Override
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception {
		
		return orderDAO.selectList(map);
	}

	@Override
	public List<Map<String, Object>> selectTwo(Map<String, Object> map) throws Exception {
		
		return orderDAO.selectTwo(map);
	}

}
