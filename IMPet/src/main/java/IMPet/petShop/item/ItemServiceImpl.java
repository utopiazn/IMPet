package IMPet.petShop.item;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service(value="itemService")
public class ItemServiceImpl implements ItemService{

	@Resource(name="itemDAO")
	private ItemDAO itemDAO;
	
	@Resource(name="itemReviewDAO")
	private ItemReviewDAO itemReviewDAO;

	
	@Override
	public List<Map<String, Object>> selectAll() throws Exception {
	
		return itemDAO.selectAll();
	}
	
	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		Map<String,Object> resultMap = new HashMap<String,Object>();
		Map<String,Object> viewMap = itemDAO.selectOne(map);
		
		List<Map<String,Object>> commentMap = itemReviewDAO.selectAll();
		
		resultMap.put("view", viewMap);
		resultMap.put("commentMap", commentMap);
		
		return resultMap;
	}

	@Override
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return itemDAO.selectList(map);
	}

}
