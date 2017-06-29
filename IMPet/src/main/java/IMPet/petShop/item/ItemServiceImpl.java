package IMPet.petShop.item;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service(value="itemService")
public class ItemServiceImpl implements ItemService{

	@Resource(name="itemDAO")
	private ItemDAO itemDAO;

	
	@Override
	public List<Map<String, Object>> selectAll() throws Exception {
	
		return itemDAO.selectAll();
	}
	
	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		return itemDAO.selectOne(map);	
	}

	@Override
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return itemDAO.selectList(map);
	}

}
