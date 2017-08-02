package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service(value="basketService")
public class BasketServiceImpl implements BasketService {
	
	@Resource(name="basketDAO")
	private BasketDAO basketDAO;

	//장바구니전체리스트
	@Override
	public List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception {
		
		return basketDAO.selectAll(map);
	}

	//장바구니상세보기
	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		return basketDAO.selectOne(map);
	}

	//장바구니 추가
	@Override
	public void insert(Map<String, Object> map) throws Exception {
		
		basketDAO.insert(map);
	}

	//장바구니 삭제
	@Override
	public void delete(Map<String, Object> map) throws Exception {
		
		basketDAO.delete(map);
	}

}
