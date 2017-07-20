package IMPet.community.gallery;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface GalleryService {
	
	
	//갤러리 특정 범위 리스트
	public List<Map<String, Object>> selectRangeAll(Map<String, Object> map) throws Exception;
	
	//갤러리 전체 리스트
	public int  selectGalleryCount() throws Exception;

	//갤러리 상세보기 본 횟수
	public void addViewNum(Map<String, Object> map) throws Exception;
	
	//갤러리 상세 정보
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception;
		
		
	
}
