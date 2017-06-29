package IMPet.petShop.item;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;

@Repository(value="itemDAO")
public class ItemDAO extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectOne(Map<String, Object> map ) throws Exception {

		return (Map<String, Object>) selectOne("PetItemSQL.selectOne", map);
		
	}
	
	public void itemInsert(Map<String, Object> map ) throws Exception {
		insert("PetItemSQL.itemInsert", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectList(Map<String, Object> map) throws Exception {
		
		return (List<Map<String,Object>>) selectList1("PetItemSQL.selectList", map);
	}
	
}
