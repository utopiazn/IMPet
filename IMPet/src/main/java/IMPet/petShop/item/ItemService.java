package IMPet.petShop.item;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface ItemService {
	
	Map<String,Object> selectOne(Map<String,Object> map) throws Exception;
	
	void itemInsert(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	List<Map<String,Object>> selectList(Map<String,Object> map) throws Exception;
	
}
