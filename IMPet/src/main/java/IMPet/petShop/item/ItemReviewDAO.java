package IMPet.petShop.item;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;

@Repository(value="itemReviewDAO")
public class ItemReviewDAO extends AbstractDAO {
	
	//후기삭제
	public void delete(Map<String, Object> map) throws Exception{
		
		System.out.print("dao:"+map);
		
		delete("PetReviewSQL.reDelete", map);
	}
	
	//후기수정
	public void update(Map<String, Object> map) throws Exception{
		
		System.out.print("dao:"+map);
		
		update("PetReviewSQL.reUpdate", map);
	}
	
	//후기등록
	public void insert(Map<String, Object> map) throws Exception{
		
		System.out.print("dao:"+map);
		
		insert("PetReviewSQL.reInsert", map);
	}
	
	//후기상세보기
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception{
		
		return (Map<String, Object>) selectOne("PetReviewSQL.selectOne", map);
	}
	
	//후기리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception{
		
		return (List<Map<String, Object>>) selectList("PetReviewSQL.selectList", map);
	}
	
}
