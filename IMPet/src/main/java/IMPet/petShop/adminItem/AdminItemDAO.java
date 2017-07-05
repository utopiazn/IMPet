package IMPet.petShop.adminItem;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;

@Repository("adminItemDAO")
public class AdminItemDAO extends AbstractDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	// 상품 목록 전체 불러오기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> itemList(Map<String, Object> map) throws Exception {
		return selectList("PetItemSQL.selectAll");
	}

	// 상품 등록
	public void itemInsert(Map<String, Object> map) throws Exception {
		insert("PetItemSQL.itemInsert", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String,Object> itemSelect(Map<String,Object> map) throws Exception {
		return (Map<String, Object>) selectOne("PetItemSQL.itemSelect", map);
	}



}
