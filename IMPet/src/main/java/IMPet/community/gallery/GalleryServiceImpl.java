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

	@Override
	public int selectCommemtCount(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return galleryDAO.selectCommemtCount(map);
	}

	@Override
	public int selectKey() throws Exception {
		// TODO Auto-generated method stub
		return galleryDAO.selectKey();
	}

	@Override
	public void insert(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		galleryDAO.insert(map);
	}
	
	@Override
	public List<Map<String, Object>> selectMy(String id) throws Exception {
		return galleryDAO.selectMy(id);
	}

	@Override
	public void update(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		galleryDAO.update(map);
	}

	@Override
	public void delete(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		galleryDAO.delete(map);
	}

	@Override
	public List<Map<String, Object>> selectSearchRangeAll(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return galleryDAO.selectSearchRangeAll(map);
	}

	@Override
	public int selectSearchGalleryCount(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return galleryDAO.selectSearchGalleryCount(map);
	}
	
}
