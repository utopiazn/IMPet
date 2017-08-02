package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface OrderService {
	
	//장바구니주문
	Map<String, Object> selectAll(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	// 상품바로주문
	Map<String, Object> selectOne(Map<String, Object> map) throws Exception;
	
	//주문추가
	public void insert(Map<String,Object> map, HttpSession session) throws Exception;
	
	//펫샵구매취소
	public void delete(Map<String, Object> map) throws Exception;
	
	//펫샵구매내역
	List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception;
		
	//주문확인
	List<Map<String, Object>> selectTwo(Map<String, Object> map) throws Exception;
	
	//구매내역페이징
	public int selectCount(Map<String, Object> map) throws Exception;


}
