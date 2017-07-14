package IMPet.petHotel.petRoom;

import java.util.List;
import java.util.Map;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import IMPet.module.CommandMap;
import IMPet.util.ProjectUtil;

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
	public void insert(Map<String, Object> map, HttpServletRequest request) throws Exception {
		

		ProjectUtil util = new ProjectUtil();
		
		System.out.println("여기부터 시작입니다.");
		System.out.println("request : "+request.getParameter("room_IMG"));
		System.out.println("여기부터 끝입니다.");
		
		String uploadPath = util.getPath()+"/IMPet/src/main/webapp/resources/image/hotel/roomImg/";
		
		Map<String,Object> reMap = util.UploadFile(map, request, uploadPath, Integer.parseInt((String) map.get("room_NO")));
			
		petRoomDAO.insert(reMap);
		
		
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
