package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service(value="receiveService")
public class ReceiveServiceImpl implements ReceiveService {
	
	@Resource(name="receiveDAO")
	private ReceiveDAO receiveDAO; 

	//배송정보리스트(관리자)
	@Override
	public List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception {
		
		return receiveDAO.selectAll(map);
	}

	//배송정보조회
	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		return receiveDAO.selectOne(map);
	}

	//배송정보추가
	@Override
	public void insert(Map<String, Object> map) throws Exception {

		receiveDAO.insert(map);
	}

	//배송정보수정
	@Override
	public void update(Map<String, Object> map) throws Exception {
		
		receiveDAO.update(map);
	}

}
