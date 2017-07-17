package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;

@Repository(value="receiveDAO")
public class ReceiveDAO extends AbstractDAO {
	
	//배송정보리스트(관리자)
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception {
			
		return selectList("PetReceiveSQL.selectAll", map);
	}
	
	//배송정보조회
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		return (Map<String, Object>) selectOne("PetReceiveSQL.selectOne", map);	
	}
	
	//배송정보추가
	public void insert(Map<String, Object> map) throws Exception {
		
		insert("PetReceiveSQL.receiveInsert", map);
	}
	
	//배송정보수정
	public void update(Map<String, Object> map) throws Exception {
		
		delete("PetReceiveSQL.receiveUpdate", map);
	}
}
