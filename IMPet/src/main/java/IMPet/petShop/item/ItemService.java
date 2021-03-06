package IMPet.petShop.item;

import java.util.List;
import java.util.Map;

public interface ItemService {
	
	List<Map<String, Object>> selectAll() throws Exception;

	Map<String, Object> selectOne(Map<String,Object> map) throws Exception;
	
	List<Map<String, Object>> selectList(Map<String,Object> map) throws Exception;

	Map<String, Object> selectItem(Map<String,Object> map) throws Exception;

	List<Map<String, Object>> selectBestMain() throws Exception;
}
