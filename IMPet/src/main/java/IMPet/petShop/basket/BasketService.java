package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

public interface BasketService {
	
	List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectOne(Map<String, Object> map) throws Exception;
	
	Map<String, Object> insert(Map<String, Object> map) throws Exception;
	
	Map<String, Object> delete(Map<String, Object> map) throws Exception;

}
