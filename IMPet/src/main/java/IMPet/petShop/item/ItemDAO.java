package IMPet.petShop.item;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;

@Repository(value="itemDAO")
public class ItemDAO extends AbstractDAO {
	
	//상품리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAll() throws Exception{
		
		return (List<Map<String, Object>>) selectList("PetItemSQL.selectAll");
	}
	
	//상품상세보기
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectOne(Map<String, Object> map ) throws Exception{
		
		return (Map<String, Object>) selectOne("PetItemSQL.itemSelect", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("PetItemSQL.selectList", map);
	}

}
