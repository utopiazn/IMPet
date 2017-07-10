package IMPet.petShop.item;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;

@Repository(value="itemReviewDAO")
public class ItemReviewDAO extends AbstractDAO {
	
	//후기삭제
	@SuppressWarnings("unchecked")
	public Map<String, Object> delete(Map<String, Object> map) throws Exception{
		
		return (Map<String, Object>) delete("PetReviewSQL.delete", map);
	}
	
	//후기수정
	@SuppressWarnings("unchecked")
	public Map<String, Object> update(Map<String, Object> map) throws Exception{
		
		return (Map<String, Object>) update("PetReviewSQL.update", map);
	}
	
	//후기등록
	public void insert(Map<String, Object> map) throws Exception{
		
		System.out.print("dao:"+map);
		
		insert("PetReviewSQL.reInsert", map);
	}
	
	//후기상세보기
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception{
		
		return (Map<String, Object>) selectOne("PetReviewSQL.selectOne", map);
	}
	
	//후기리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception{
		
		return (List<Map<String, Object>>) selectList("PetReviewSQL.selectList", map);
	}
	
}
