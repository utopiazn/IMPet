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
	public void insert(Map<String, Object> map, HttpServletRequest request) throws Exception {
		
		ProjectUtil util = new ProjectUtil();
		
		System.out.println("여기부터 시작입니다.");
		
		Map<String,Object> key = noticeDAO.selectKey();
		
		int num = Integer.parseInt(key.get("NOTICE_NO").toString());
		
		System.out.println("key"+num);
		
		map.put("NOTICE_NO", num);
		
		String uploadPath = util.getPath()+"/IMPet/src/main/webapp/resources/image/notice/";
		
		Map<String,Object> reMap = util.UploadFile(map, request, uploadPath, num);
		
		System.out.println("여기부터 끝입니다.");
		
		noticeDAO.insert(reMap);
		
	}

	@Override
	public void update(Map<String, Object> map) throws Exception {
		noticeDAO.update(map);
		
	}

	@Override
	public void delete(Map<String, Object> map) throws Exception {
		
		ProjectUtil util = new ProjectUtil();
		
		Map<String, Object> reMap = noticeDAO.selectOne(map);
		
		String uploadPath = util.getPath()+"/IMPet/src/main/webapp/resources/image/notice/";
		System.out.println(reMap.get("NOTICE_IMG").toString());
		File f = new File(uploadPath+reMap.get("NOTICE_IMG").toString());
		if(f.delete()){
			System.out.println("이미지 삭제 성공");
		}else{
			System.out.println("이미지 삭제 실패");
		}
		noticeDAO.delete(map);
		
	}
	
	

}
