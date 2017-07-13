package IMPet.petShop.item;

import java.util.List;
import java.util.Map;

public interface ItemReviewService {
	
	public Map<String, Object> selectOne(Map<String,Object> map) throws Exception;
	
	public void delete(Map<String, Object> map) throws Exception;
	
	public void update(Map<String, Object> map) throws Exception;
	
	public void insert(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectList(Map<String,Object> map) throws Exception;
	

}
