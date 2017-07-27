package IMPet.petHotel.petRoomReservation;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.CommandMap;

@Repository
public interface PetRoomReservationService {

	public Map<String, Object> searchDate(Map<String, Object> map) throws Exception;
	
	public void resInsert(Map<String, Object> map) throws Exception;
	
	public void resPayment(Map<String, Object> map) throws Exception;

	public void resDelete(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectUserList(Map<String, Object> map, String str) throws Exception;
	
	public List<Map<String, Object>> selectAllList(Map<String, Object> map) throws Exception;

	int selectResCount() throws Exception;

}
