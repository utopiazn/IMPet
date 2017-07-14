package IMPet.petShop.basket;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import IMPet.member.MemberDAO;

@Service(value="orderService")
public class OrderServiceImpl implements OrderService {
	
	@Resource(name="orderDAO")
	private OrderDAO orderDAO;
	
	@Resource(name="memberDAO")
	private MemberDAO memberDAO;


	@Override
	public Map<String, Object> selectAll(Map<String, Object> map) throws Exception {
		Map<String, Object> resultMap = new HashMap<String,Object>();
		
		List<Map<String, Object>> orderListMap = orderDAO.selectAll(map);
		
		Map<String, Object> memMap = memberDAO.selectOne(map);
		
		resultMap.put("orderList", orderListMap);
		resultMap.put("member", memMap);
		
		return resultMap;
	}

	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		return orderDAO.selectOne(map);
	}

	@Override
	public void insert(Map<String, Object> map) throws Exception {
		
		orderDAO.insert(map);		
	}

	@Override
	public void delete(Map<String, Object> map) throws Exception {

		orderDAO.delete(map);		
	}

}
