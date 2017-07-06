package IMPet.petShop.item;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service(value="itemReviewService")
public class ItemReviewServiceImpl implements ItemReviewService{

	@Resource(name="itemReviewDAO")
	private ItemReviewDAO itemReviewDAO;
	
	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		return itemReviewDAO.selectOne(map);
	}

	@Override
	public Map<String, Object> delete(Map<String, Object> map) throws Exception {

		return itemReviewDAO.delete(map);
	}
	
	@Override
	public Map<String, Object> update(Map<String, Object> map) throws Exception {

		return itemReviewDAO.update(map);
	}
	
	@Override
	public Map<String, Object> insert(Map<String, Object> map) throws Exception {
		
		return itemReviewDAO.insert(map);
		
	}

	@Override
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception {
	
		return itemReviewDAO.selectList(map);
	}
	
}
