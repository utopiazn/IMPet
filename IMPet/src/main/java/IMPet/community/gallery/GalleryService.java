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
	
	//갤러리 검색 특정 범위 리스트
	public List<Map<String, Object>> selectSearchRangeAll(Map<String, Object> map) throws Exception;
		
	
	//갤러리 검색전체 리스트
	public int  selectSearchGalleryCount(Map<String, Object> map) throws Exception;

	//갤러리 상세보기 본 횟수
	public void addViewNum(Map<String, Object> map) throws Exception;
	
	//갤러리 상세 정보
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception;
	
	
	//댓글 리스트
	public List<Map<String, Object>> selectCommemtList(Map<String, Object> map) throws Exception;	
	
	//댓글 추가
	public void CommemtGalleryInsert(Map<String, Object> map) throws Exception;
	
	//댓글 삭제
	public void CommemtGalleryDelete(Map<String, Object> map) throws Exception;
	
	//댓글 카운터
	public int selectCommemtCount(Map<String, Object> map) throws Exception;
	
	
	//갤러리 키 가져오기
	public int selectKey() throws Exception; 	
		
	//갤러리 추가
	public void insert(Map<String, Object> map) throws Exception;
	
	//갤러리 마이페이지 본인 글 보기
	public List<Map<String, Object>> selectMy(String id) throws Exception; 
	
	

	//갤러리 수정
	public void update(Map<String, Object> map) throws Exception;
	
	//갤러리 삭제
	public void delete(Map<String, Object> map) throws Exception;
	
}
