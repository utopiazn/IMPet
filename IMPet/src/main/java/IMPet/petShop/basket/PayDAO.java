package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;

@Repository(value="payDAO")
public class PayDAO extends AbstractDAO {
	
	//주문목록전체결제
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception {
		
		
		return selectList("PetPaySQL.selectAll", map);
	}
	
	//상품결제
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		return (Map<String, Object>) selectOne("PetPaySQL.selectOne", map);	
	}
	
	//결제정보추가
	public void insert(Map<String, Object> map) throws Exception {
		
		insert("PetPaySQL.payInsert", map);
	}
	
	//결제취소
	public void delete(Map<String, Object> map) throws Exception {
		
		delete("PetPaySQL.payDelete", map);
	}

}
