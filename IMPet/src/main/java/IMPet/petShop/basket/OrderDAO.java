package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;

@Repository(value="orderDAO")
public class OrderDAO extends AbstractDAO {
	
	//장바구니전체주문
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception {	
		
		return selectList("PetOrderSQL.selectAll", map);
	}
	
	//상품바로주문
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		return (Map<String, Object>) selectOne("PetOrderSQL.selectOne", map);	
	}
	
	//결제정보추가
	public void insert(Map<String, Object> map) throws Exception {
		
		insert("PetOrderSQL.odInsert", map);
	}
	
	//결제취소
	public void delete(Map<String, Object> map) throws Exception {
		
		delete("PetOrderSQL.odDelete", map);
	}

}
