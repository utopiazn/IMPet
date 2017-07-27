package IMPet.petHotel.petRoomReservation;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;


import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;


@Service(value="petRoomReservationService")
public class PetRoomReservationServiceImpl implements PetRoomReservationService {
	
	Logger log = Logger.getLogger(this.getClass());
    
	@Resource(name="petRoomReservationDAO")
    private PetRoomReservationDAO petRoomReservationDAO;

	@Override
	public Map<String, Object> searchDate(Map<String, Object> map) throws Exception {

		return petRoomReservationDAO.searchDate(map);
	}

	@Override
	public void resInsert(Map<String, Object> map) throws Exception {
		
		petRoomReservationDAO.resInsert(map);
	}
	
	@Override
	public void resPayment(Map<String, Object> map) throws Exception {
		
		petRoomReservationDAO.resPayment(map);
	}

	@Override
	public void resDelete(Map<String, Object> map) throws Exception {
		petRoomReservationDAO.resDelete(map);
	}

	@Override
	public List<Map<String, Object>> selectUserList(Map<String, Object> map, String str) throws Exception {
		
		List<Map<String, Object>> list = petRoomReservationDAO.selectUserList(map, str); 
		
		//DB에 들어간 날짜들 표출할때 시간빼고 yyyy-MM-dd 형식으로 만듬
		for(int i=0; i<list.size(); i++){
			Date date1 = (Date)list.get(i).get("RES_FIRSTDATE");
			String day1 = new SimpleDateFormat("yyyy-MM-dd").format(date1);
			list.get(i).put("RES_FIRSTDATE", day1);
			
			Date date2 = (Date)list.get(i).get("RES_LASTDATE");
			String day2 = new SimpleDateFormat("yyyy-MM-dd").format(date2);
			list.get(i).put("RES_LASTDATE", day2);
		};
		
		return list;
	}

	@Override
	public List<Map<String, Object>> selectAllList(Map<String, Object> map) throws Exception {
		
		System.out.println("서비스"+map);
		
		List<Map<String, Object>> list = petRoomReservationDAO.selectAllList(map); 
		
		//DB에 들어간 날짜들 표출할때 시간빼고 yyyy-MM-dd 형식으로 만듬
		for(int i=0; i<list.size(); i++){
			Date date1 = (Date)list.get(i).get("RES_FIRSTDATE");
			String day1 = new SimpleDateFormat("yyyy-MM-dd").format(date1);
			list.get(i).put("RES_FIRSTDATE", day1);
			
			Date date2 = (Date)list.get(i).get("RES_LASTDATE");
			String day2 = new SimpleDateFormat("yyyy-MM-dd").format(date2);
			list.get(i).put("RES_LASTDATE", day2);
		};
		
		return list;
	}
	
	@Override
	public int selectResCount() throws Exception {
		// TODO Auto-generated method stub
		return petRoomReservationDAO.selectResCount();
	}
	
}
