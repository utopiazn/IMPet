package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service(value="receiveService")
public class ReceiveServiceImpl implements ReceiveService {
	
	@Resource(name="receiveDAO")
	private ReceiveDAO receiveDAO; 

	@Override
	public List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception {
		
		return receiveDAO.selectAll(map);
	}

	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		return receiveDAO.selectOne(map);
	}

	@Override
	public void insert(Map<String, Object> map) throws Exception {

		receiveDAO.insert(map);
	}

	@Override
	public void update(Map<String, Object> map) throws Exception {
		
		receiveDAO.update(map);
	}

}
