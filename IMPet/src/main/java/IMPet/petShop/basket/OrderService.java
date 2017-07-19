package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface OrderService {
	
	Map<String, Object> selectAll(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	Map<String, Object> selectOne(Map<String, Object> map) throws Exception;
	
	public void insert(Map<String, Object> map) throws Exception;
	
	public void delete(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectList(Map<String, Object> map) throws Exception;

}
