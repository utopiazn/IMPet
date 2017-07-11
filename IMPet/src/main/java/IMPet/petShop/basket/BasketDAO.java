package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;

@Repository(value="basketDAO")
public class BasketDAO extends AbstractDAO {
	
	//장바구니전체리스트
	public List<Map<String,Object>> selectAll(Map<String, Object> map) throws Exception {
		
		@SuppressWarnings("unchecked")
		List<Map<String, Object>> list = (List<Map<String, Object>>) selectList("PetBasketSQL.selectAll", map);
		
		return list;
	}
	
	//장바구니상세보기
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception{
		
		return (Map<String, Object>) selectOne("PetBasketSQL.selectOne", map);
	}
	
	//장바구니 추가
	public void insert(Map<String, Object> map) throws Exception{
		
		insert("PetBasketSQL.baInsert", map);
	}
	
	//장바구니 삭제
	public void delete(Map<String, Object> map) throws Exception{
		
		delete("PetBasketSQL.badelete", map);
	}
	
	
}
