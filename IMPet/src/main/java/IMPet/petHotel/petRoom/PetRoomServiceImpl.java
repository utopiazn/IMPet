package IMPet.petHotel.petRoom;

import java.util.List;
import java.util.Map;


import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

@Service(value="PetRoomService")
public class PetRoomServiceImpl implements PetRoomService {
	
	Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="PetRoomDAO")
    private PetRoomDAO petRoomDAO;

	@Override
	public List<Map<String, Object>> selectAll() throws Exception {
		
		return  petRoomDAO.selectAll();
	}

}
