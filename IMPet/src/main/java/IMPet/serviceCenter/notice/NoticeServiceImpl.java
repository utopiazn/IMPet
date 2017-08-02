package IMPet.serviceCenter.notice;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import IMPet.util.ProjectUtil;

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
		
		ProjectUtil util = new ProjectUtil();
		

		
		Map<String,Object> key = noticeDAO.selectKey();
		
		int num = Integer.parseInt(key.get("NOTICE_NO").toString());
		
	
		
		map.put("NOTICE_NO", num);
		
	
		
		noticeDAO.insert(map);
		
	}

	@Override
	public void update(Map<String, Object> map) throws Exception {
		noticeDAO.update(map);
		
	}

	@Override
	public void delete(Map<String, Object> map) throws Exception {
		
		ProjectUtil util = new ProjectUtil();
		
		Map<String, Object> reMap = noticeDAO.selectOne(map);
		
		noticeDAO.delete(map);
		
	}
	
	

}
