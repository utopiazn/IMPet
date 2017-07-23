package IMPet.community.event;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;



@Repository(value="EventDAO")
public class EventDAO extends AbstractDAO{
	
	

	
	//이벤투 특정 범위 리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectRangeAll(Map<String, Object> map) throws Exception{
		
		List<Map<String, Object>> list= (List<Map<String, Object>>)selectList("EventSQL.selectRangeAll",map);
		
		return list;
	}
	
	
	//이벤트 전체 리스트
	public int selectEventCount() throws Exception {
		
		Map<String, Object> view= (Map<String, Object>)selectOne("EventSQL.selectEventCount");
			
		int count = Integer.parseInt(view.get("COUNT").toString());		
		
		return count;
	}
	
	
	//이벤트 상세보기 본 횟수 
	public void addViewNum(Map<String, Object> map) throws Exception {
		
		update("EventSQL.addViewNum", map);
		
	}
	
	//갤러리 상세 정보
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		Map<String, Object> view= (Map<String, Object>)selectOne("EventSQL.selectOne", map);
		
		return view;
	}
	
	
	//이벤트 키 가져오기
	public int selectKey() throws Exception {
		
		Map<String, Object> view=  selectOne("EventSQL.selectKey");
		
		int key = Integer.parseInt(view.get("ITEM_NO").toString());		
		
		
		return  key;
	}
	
	
	
	// 이벤트 추가
	public void insert(Map<String, Object> map) throws Exception {
		insert("EventSQL.insert", map);
	}
	
	
	// 이벤트 추가
	public void update(Map<String, Object> map) throws Exception {
		insert("EventSQL.update", map);
	}
	
	//이벤트 삭제
	public void delete(Map<String, Object> map) throws Exception{
		delete("EventSQL.delete", map);
		
	}
	
}
