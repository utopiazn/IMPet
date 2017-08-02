package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

public interface BasketService {
	
	//장바구니전체리스트
	List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception;
	
	//장바구니상세보기
	Map<String, Object> selectOne(Map<String, Object> map) throws Exception;
	
	//장바구니 추가
	public void insert(Map<String, Object> map) throws Exception;
	
	//장바구니 삭제
	public void delete(Map<String, Object> map) throws Exception;

}
