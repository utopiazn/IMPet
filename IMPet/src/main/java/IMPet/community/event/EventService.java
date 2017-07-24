package IMPet.community.event;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface EventService {
	
	
	//이벤트 특정 범위 리스트
	public List<Map<String, Object>> selectRangeAll(Map<String, Object> map) throws Exception;
	
	//이벤트 전체 리스트
	public int  selectEventCount() throws Exception;

	//이벤트 상세보기 본 횟수
	public void addViewNum(Map<String, Object> map) throws Exception;
	
	//이벤트 상세 정보
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception;
		
	//이벤트 키 가져오기
	public int selectKey() throws Exception; 	
	
	//이벤트 추가
	public void insert(Map<String, Object> map) throws Exception; 
	
	//이벤트 추가
	public void update(Map<String, Object> map) throws Exception;
	
	//이벤트 추가
	public void delete(Map<String, Object> map) throws Exception;
	
}
