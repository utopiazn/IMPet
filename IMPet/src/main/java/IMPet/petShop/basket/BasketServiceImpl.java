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
	public List<Map<String, Object>> selectAll() throws Exception {
		
		return basketDAO.selectAll();
	}

	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> insert(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> delete(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}




}
