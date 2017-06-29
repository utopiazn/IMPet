package IMPet.petHotel.petHealing;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;
import IMPet.module.CommandMap;

@Repository(value="petHealingDAO")
public class PetHealingDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAll() throws Exception {
		
		List<Map<String, Object>> list= (List<Map<String, Object>>)selectList("PetHealingSQL.selectAll");
		
		return list;  
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		System.out.println(map);
		
		Map<String, Object> view= (Map<String, Object>)selectOne("PetHealingSQL.selectOne", map);
		
		return view;
	}

	public void insert(Map<String, Object> map) throws Exception {
		
		System.out.println(map);
		
		insert("PetHealingSQL.insert", map);
	}
	
	public void update(Map<String, Object> map) throws Exception {
		
		System.out.println(map);
		
		insert("PetHealingSQL.update", map);
	}
	
	public void delete(Map<String, Object> map) throws Exception {
		
		System.out.println(map);
		
		insert("PetHealingSQL.delete", map);
	}	
	
}