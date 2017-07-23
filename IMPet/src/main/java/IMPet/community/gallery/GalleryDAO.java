package IMPet.community.gallery;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;


@Repository(value="galleryDAO")
public class GalleryDAO extends AbstractDAO{
	
	
	
	
	//갤러리 특정 범위 리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectRangeAll(Map<String, Object> map) throws Exception{
		
		List<Map<String, Object>> list= (List<Map<String, Object>>)selectList("GallerySQL.selectRangeAll",map);
		
		return list;
	}
	
	
	//갤러리 전체 리스트
	public int selectGalleryCount() throws Exception {
		
		Map<String, Object> view= (Map<String, Object>)selectOne("GallerySQL.selectGalleryCount");
			
		int count = Integer.parseInt(view.get("COUNT").toString());		
		
		return count;
	}
	
	
	//갤러리 상세보기 본 횟수 
	public void addViewNum(Map<String, Object> map) throws Exception {
		
		update("GallerySQL.addViewNum", map);
		
	}
	
	//갤러리 상세 정보
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		Map<String, Object> view= (Map<String, Object>)selectOne("GallerySQL.selectOne", map);
		
		return view;
	}
	
	//댓글 리스트
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCommemtList(Map<String, Object> map) throws Exception {
		
		System.out.println(map);
		
		List<Map<String, Object>> list= (List<Map<String, Object>>) selectList("CommemtGallerySQL.selectCommemtList",map);
		
		return list;
	}
	
	
	//댓글 추가
	public void CommemtGalleryInsert(Map<String, Object> map) throws Exception {
		insert("CommemtGallerySQL.CommemtGalleryInsert", map);
	}
	

	//댓글 삭제
	public void CommemtGalleryDelete(Map<String, Object> map) throws Exception{
		delete("CommemtGallerySQL.CommemtGalleryDelete", map);
		
	}
	
	
}