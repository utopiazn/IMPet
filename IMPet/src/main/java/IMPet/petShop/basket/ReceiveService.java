package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

public interface ReceiveService {
	
	//배송정보리스트(관리자)
	List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception;
	
	//배송정보조회
	Map<String, Object> selectOne(Map<String, Object> map) throws Exception;
	
	//배송정보추가
	public void insert(Map<String, Object> map) throws Exception;
	
	//배송정보수정
	public void update(Map<String, Object> map) throws Exception;

}
