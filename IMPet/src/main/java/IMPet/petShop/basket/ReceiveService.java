package IMPet.petShop.basket;

import java.util.Map;

public interface ReceiveService {
	
	Map<String, Object> selectAll(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectOne(Map<String, Object> map) throws Exception;
	
	public void insert(Map<String, Object> map) throws Exception;
	
	public void update(Map<String, Object> map) throws Exception;

}
