package IMPet.petShop.basket;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Service;

import IMPet.member.MemberDAO;

@Service(value="orderService")
public class OrderServiceImpl implements OrderService {
	
	@Resource(name="orderDAO")
	private OrderDAO orderDAO;
	
	@Resource(name="memberDAO")
	private MemberDAO memberDAO;


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
		Map<String, Object> orderMap = orderDAO.selectOne(map);
		
		orderMap.put("BASKET_BUYCOUNT", map.get("BASKET_BUYCOUNT"));
		Map<String, Object> memMap = memberDAO.selectOne(map);
		
		resultMap.put("orderView", orderMap);
		resultMap.put("member", memMap);
		
		return resultMap;
	}

	@Override
	public void insert(Map<String, Object> map) throws Exception {
		
		orderDAO.insert(map);		
	}

	@Override
	public void delete(Map<String, Object> map) throws Exception {

		orderDAO.delete(map);		
	}

	@Override
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception {
		
		return orderDAO.selectList(map);
	}

}
