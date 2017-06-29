package IMPet.petHotel.petHealing;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.CommandMap;

@Repository
public interface PetHealingService {

	public List<Map<String, Object>> selectAll() throws Exception;
	
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception;
	
	public void insert(Map<String, Object> map) throws Exception;
	
	public void update(Map<String, Object> map) throws Exception;
	
	public void delete(Map<String, Object> map) throws Exception;

}
