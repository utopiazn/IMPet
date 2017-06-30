package IMPet.petHotel.petHealing;

import java.util.List;
import java.util.Map;


import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import IMPet.module.CommandMap;

@Service(value="petHealingService")
public class PetHealingServiceImpl implements PetHealingService {
	
	Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="petHealingDAO")
    private PetHealingDAO petHealingDAO;

	@Override
	public List<Map<String, Object>> selectAll() throws Exception {
		
		return petHealingDAO.selectAll();
	}
	
	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		return petHealingDAO.selectOne(map);
	}
	
	@Override
	public void insert(Map<String, Object> map) throws Exception {
		petHealingDAO.insert(map);
	}
	
	@Override
	public void update(Map<String, Object> map) throws Exception {
		petHealingDAO.update(map);
	}

	@Override
	public void delete(Map<String, Object> map) throws Exception {
		petHealingDAO.delete(map);
	}	
	
}
