package IMPet.petShop.item;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service(value="itemService")
public class ItemServiceImpl implements ItemService{

	@Resource(name="itemDAO")
	private ItemDAO itemDAO;
	
	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		return itemDAO.selectOne(map);	
	}

	@Override
	public void itemInsert(Map<String, Object> map, HttpServletRequest request) throws Exception {
		
		itemDAO.itemInsert(map);
		
	}

	@Override
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception {
		
		return itemDAO.selectList(map);
	}
	
	
	
	
	
}
