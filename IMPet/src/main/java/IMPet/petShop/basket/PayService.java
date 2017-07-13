package IMPet.petShop.basket;

import java.util.Map;

public interface PayService {
	
	Map<String, Object> selectAll(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectOne(Map<String, Object> map) throws Exception;
	
	public void insert(Map<String, Object> map) throws Exception;
	
	public void delete(Map<String, Object> map) throws Exception;

}
