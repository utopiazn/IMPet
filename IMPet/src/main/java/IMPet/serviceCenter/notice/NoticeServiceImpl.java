package IMPet.serviceCenter.notice;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

@Service(value = "noticeService")
public class NoticeServiceImpl implements NoticeService {

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "noticeDAO")
	private NoticeDAO noticeDAO;

	@Override
	public List<Map<String, Object>> selectAll() throws Exception {

		return noticeDAO.selectAll();
	}

	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		return noticeDAO.selectOne(map);
	}

	@Override
	public void insert(Map<String, Object> map) throws Exception {
		noticeDAO.insert(map);
		
	}

	@Override
	public void delete(Map<String, Object> map) throws Exception {
		noticeDAO.delete(map);
		
	}
	
	

}
