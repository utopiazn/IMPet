package IMPet.petShop.item;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface ItemService {
	
	List<Map<String, Object>> selectAll() throws Exception;

	Map<String, Object> selectOne(Map<String,Object> map) throws Exception;
	
	List<Map<String, Object>> selectList(Map<String,Object> map) throws Exception;

}
