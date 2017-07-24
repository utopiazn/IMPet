package IMPet.community.gallery;
import java.util.List;
import java.util.Map;


import javax.annotation.Resource;


import org.springframework.stereotype.Service;


@Service(value="galleryService")
public class GalleryServiceImpl implements GalleryService{

	@Resource(name="galleryDAO")
	private GalleryDAO galleryDAO;
	

	@Override
	public List<Map<String, Object>> selectRangeAll(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return galleryDAO.selectRangeAll(map);
	}

	@Override
	public int selectGalleryCount() throws Exception {
		// TODO Auto-generated method stub
		return galleryDAO.selectGalleryCount();
	}

	@Override
	public void addViewNum(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
		galleryDAO.addViewNum(map);		
	}

	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return galleryDAO.selectOne(map);
	}

	@Override
	public List<Map<String, Object>> selectCommemtList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return galleryDAO.selectCommemtList(map);
	}

	@Override
	public void CommemtGalleryInsert(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		galleryDAO.CommemtGalleryInsert(map);
	}

	@Override
	public void CommemtGalleryDelete(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
		galleryDAO.CommemtGalleryDelete(map);
		
	}
	
}
