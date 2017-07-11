package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service(value="basketService")
public class BasketServiceImpl implements BasketService {
	
	@Resource(name="basketDAO")
	private BasketDAO basketDAO;

	@Override
	public List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception {
		
		return basketDAO.selectAll(map);
	}

	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		return basketDAO.selectOne(map);
	}

	@Override
	public void insert(Map<String, Object> map) throws Exception {
		
		basketDAO.insert(map);
	}

	@Override
	public void delete(Map<String, Object> map) throws Exception {
		
		basketDAO.delete(map);
	}

}
