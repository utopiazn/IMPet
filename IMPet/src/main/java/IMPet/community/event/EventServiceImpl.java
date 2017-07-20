package IMPet.community.event;
import java.util.List;
import java.util.Map;


import javax.annotation.Resource;


import org.springframework.stereotype.Service;


@Service(value="eventService")
public class EventServiceImpl implements EventService{

	@Resource(name="EventDAO")
	private EventDAO EventDAO;

	@Override
	public List<Map<String, Object>> selectRangeAll(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return EventDAO.selectRangeAll(map);
	}

	@Override
	public int selectEventCount() throws Exception {
		// TODO Auto-generated method stub
		return EventDAO.selectEventCount();
	}

	@Override
	public void addViewNum(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
		EventDAO.addViewNum(map);		
	}

	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return EventDAO.selectOne(map);
	}
	
}
