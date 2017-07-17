package IMPet.petHotel.petHealing;

import java.io.File;
import java.util.List;
import java.util.Map;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import IMPet.module.CommandMap;
import IMPet.util.ProjectUtil;

@Service(value="petHealingService")
public class PetHealingServiceImpl implements PetHealingService {
	
	ProjectUtil util = new ProjectUtil();
	
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
	public void insert(Map<String, Object> map, HttpServletRequest request) throws Exception {
		
		System.out.println("여기부터 시작입니다.");
		System.out.println("request : "+request.getParameter("healing_IMG"));
		System.out.println("여기부터 끝입니다.");
		
		String uploadPath = util.getPath()+"/IMPet/src/main/webapp/resources/image/hotel/healingImg/";
		
		Map<String,Object> reMap = util.UploadFile(map, request, uploadPath, Integer.parseInt((String) map.get("healing_NO")));
		
		petHealingDAO.insert(reMap);
	}
	
	@Override
	public void update(Map<String, Object> map) throws Exception {
		petHealingDAO.update(map);
	}

	@Override
	public void delete(Map<String, Object> map) throws Exception {
		Map<String, Object> reMap = petHealingDAO.selectOne(map);
		
		String uploadPath = util.getPath()+"/IMPet/src/main/webapp/resources/image/hotel/healingImg/";
		System.out.println(reMap.get("HEALING_IMG").toString());
		File f = new File(uploadPath+reMap.get("HEALING_IMG").toString());
		if(f.delete()){
			System.out.println("이미지 삭제 성공");
		}else{
			System.out.println("이미지 삭제 실패");
		}
		petHealingDAO.delete(map);
	}	
	
}
