package IMPet.petShop.item;

import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;

@Repository(value="itemDAO")
public class ItemDAO extends AbstractDAO {
	
	public Map<String, Object> selectOne(Map<String, Object> map ) throws Exception {
		
		@SuppressWarnings("unchecked")
		Map<String, Object> ma = (Map<String, Object>) selectOne("PetItemSQL.selectOne", map);
		
		return ma;
		
	}
	
}
