package IMPet.petHotel.petRoom;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;
import IMPet.module.CommandMap;

@Repository(value="petRoomDAO")
public class PetRoomDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAll() throws Exception {
		
		List<Map<String, Object>> list= (List<Map<String, Object>>)selectList("PetRoomSQL.selectAll");
		
		return list;  
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		System.out.println(map);
		
		Map<String, Object> view= (Map<String, Object>)selectOne("PetRoomSQL.selectOne", map);
		
		return view;
	}
	
	public void insert(Map<String, Object> map) throws Exception {
		
		System.out.println(map);
		
		insert("PetRoomSQL.insert", map);
	}
	
	public void update(Map<String, Object> map) throws Exception {
		
		System.out.println(map);
		
		insert("PetRoomSQL.update", map);
	}
	
	public void delete(Map<String, Object> map) throws Exception {
		
		System.out.println(map);
		
		insert("PetRoomSQL.delete", map);
	}
	
}