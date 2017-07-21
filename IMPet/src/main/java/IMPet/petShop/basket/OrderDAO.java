package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;

@Repository(value="orderDAO")
public class OrderDAO extends AbstractDAO {
	
	//장바구니전체주문
	public Map<String, Object> selectAll(Map<String, Object> map) throws Exception {
			
		return selectOne("PetOrderSQL.selectAll", map);
	}
	
	//상품바로주문
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		return selectOne("PetOrderSQL.selectOne", map);	
	}
	
	//주문추가
	public void insert(Map<String, Object> map) throws Exception {
		
		insert("PetOrderSQL.odInsert", map);
	}
	
	//펫샵구매취소
	public void delete(Map<String, Object> map) throws Exception {
		
		delete("PetOrderSQL.odDelete", map);
	}
	
	//펫샵구매내역
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception {
		
		@SuppressWarnings("unchecked")
		List<Map<String, Object>> list = (List<Map<String, Object>>) selectList("PetOrderSQL.odList", map);
		
		return list;
	}
	
	
	//주문확인
	public List<Map<String, Object>> selectTwo(Map<String, Object> map) throws Exception {
		
		@SuppressWarnings("unchecked")
		List<Map<String, Object>> two = (List<Map<String, Object>>) selectList("PetOrderSQL.selectTwo", map);
		
		return two;	
	}

}
