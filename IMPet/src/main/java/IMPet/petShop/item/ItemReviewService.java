package IMPet.petShop.item;

import java.util.List;
import java.util.Map;

public interface ItemReviewService {
	
	Map<String, Object> selectOne(Map<String,Object> map) throws Exception;
	
	Map<String, Object> delete(Map<String, Object> map) throws Exception;
	
	Map<String, Object> update(Map<String, Object> map) throws Exception;
	
	Map<String, Object> insert(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectList(Map<String,Object> map) throws Exception;
}
