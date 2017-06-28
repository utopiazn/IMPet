package IMPet.petHotel.petRoom;

import java.util.List;
import java.util.Map;


import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import IMPet.module.CommandMap;

@Service(value="petRoomService")
public class PetRoomServiceImpl implements PetRoomService {
	
	Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="petRoomDAO")
    private PetRoomDAO petRoomDAO;

	@Override
	public List<Map<String, Object>> selectAll() throws Exception {
		
		return petRoomDAO.selectAll();
	}
	
	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		return petRoomDAO.selectOne(map);
	}

	@Override
	public void insert(Map<String, Object> map) throws Exception {
		petRoomDAO.insert(map);
	}
	
	@Override
	public void update(Map<String, Object> map) throws Exception {
		petRoomDAO.update(map);
	}

	@Override
	public void delete(Map<String, Object> map) throws Exception {
		petRoomDAO.delete(map);
	}
	
	
}
