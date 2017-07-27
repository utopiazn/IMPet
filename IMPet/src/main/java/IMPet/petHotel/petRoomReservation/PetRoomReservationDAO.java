package IMPet.petHotel.petRoomReservation;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;
import IMPet.module.CommandMap;

@Repository(value="petRoomReservationDAO")
public class PetRoomReservationDAO extends AbstractDAO{
	
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> searchDate(Map<String, Object> map) throws Exception {
		
		System.out.println("DAO:"+map);
		
		Map<String, Object> view= (Map<String, Object>)selectOne(
				"PetRoomReservationSQL.searchDate", map);
		
		System.out.println("반환값 : "+view);
		
		return view;
	}
	
	public void resInsert(Map<String, Object> map) throws Exception {
		
		System.out.println("DAO:"+map);
		
		insert("PetRoomReservationSQL.insert", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectUserList(Map<String, Object> map, String str) throws Exception {
		
		map.put("member_ID", str);
		
		List<Map<String, Object>> list= (List<Map<String, Object>>)selectList("PetRoomReservationSQL.selectUserList", map);
		
		return list;  
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAllList(Map<String, Object> map) throws Exception {
		
		System.out.println("DAO"+map);
		
		List<Map<String, Object>> list= (List<Map<String, Object>>)selectList("PetRoomReservationSQL.selectAllList", map);
		
		return list;  
	}
	
	public void resPayment(Map<String, Object> map) throws Exception {
		
		System.out.println(map);
		
		update("PetRoomReservationSQL.resPayment", map);
	}
	
	public void resDelete(Map<String, Object> map) throws Exception {
		
		System.out.println(map);
		
		delete("PetRoomReservationSQL.delete", map);
	}
	
	@SuppressWarnings("unchecked")
	public int selectResAdminCount() throws Exception {
		
		Map<String, Object> view= (Map<String, Object>)selectOne("PetRoomReservationSQL.selectResAdminCount");
			
		int count = Integer.parseInt(view.get("COUNT").toString());		
		
		return count;
	}
	
	@SuppressWarnings("unchecked")
	public int selectResCount(String id) throws Exception {
		
		Map<String, Object> view= (Map<String, Object>)selectOne("PetRoomReservationSQL.selectResCount", id);
			
		int count = Integer.parseInt(view.get("COUNT").toString());		
		
		return count;
	}
	
}