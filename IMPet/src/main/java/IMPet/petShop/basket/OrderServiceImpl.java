package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service(value="orderService")
public class OrderServiceImpl implements OrderService {
	
	@Resource(name="orderDAO")
	private OrderDAO orderDAO;

	@Override
	public List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception {
		
		return orderDAO.selectAll(map);
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
