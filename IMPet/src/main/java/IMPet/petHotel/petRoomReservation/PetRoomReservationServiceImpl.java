package IMPet.petHotel.petRoomReservation;

import java.util.List;
import java.util.Map;


import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import IMPet.module.CommandMap;

@Service(value="petRoomReservationService")
public class PetRoomReservationServiceImpl implements PetRoomReservationService {
	
	Logger log = Logger.getLogger(this.getClass());
    
	@Resource(name="petRoomReservationDAO")
    private PetRoomReservationDAO petRoomReservationDAO;

	@Override
	public Map<String, Object> searchDate(Map<String, Object> map) throws Exception {

		return petRoomReservationDAO.searchDate(map);
	}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
  


	@Override
	public List<Map<String, Object>> selectAll() throws Exception {
		return petRoomReservationDAO.selectAll();
	}	
	
	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		return petRoomReservationDAO.selectOne(map);
	}

	@Override
	public void insert(Map<String, Object> map) throws Exception {
		petRoomReservationDAO.insert(map);
	}
	
	@Override
	public void update(Map<String, Object> map) throws Exception {
		petRoomReservationDAO.update(map);
	}

	@Override
	public void delete(Map<String, Object> map) throws Exception {
		petRoomReservationDAO.delete(map);
	}
	
	
}
