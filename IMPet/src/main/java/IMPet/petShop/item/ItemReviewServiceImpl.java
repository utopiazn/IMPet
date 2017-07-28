package IMPet.petShop.item;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service(value="itemReviewService")
public class ItemReviewServiceImpl implements ItemReviewService{

	@Resource(name="itemReviewDAO")
	private ItemReviewDAO itemReviewDAO;
	
	//후기상세보기
	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		return itemReviewDAO.selectOne(map);
	}

	//후기삭제
	@Override
	public void delete(Map<String, Object> map) throws Exception {

		itemReviewDAO.delete(map);
	}
	
	//후기수정
	@Override
	public void update(Map<String, Object> map) throws Exception {

		itemReviewDAO.update(map);
	}
	
	//후기등록
	@Override
	public void insert(Map<String, Object> map) throws Exception {
		itemReviewDAO.insert(map);
	}

	//후기리스트
	@Override
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception {
	
		return itemReviewDAO.selectList(map);
	}
	
}
