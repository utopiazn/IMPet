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
	
	
}