package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;

@Repository(value="basketDAO")
public class BasketDAO extends AbstractDAO {
	
	public List<Map<String,Object>> selectAll() throws Exception {
		
		@SuppressWarnings("unchecked")
		List<Map<String, Object>> list = (List<Map<String, Object>>) selectList("PetItemBasketSQL.selectAll");
		
		return list;
	}
}
