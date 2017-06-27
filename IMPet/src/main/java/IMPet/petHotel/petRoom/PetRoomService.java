package IMPet.petHotel.petRoom;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface PetRoomService {

	public List<Map<String, Object>> selectAll() throws Exception;
}
