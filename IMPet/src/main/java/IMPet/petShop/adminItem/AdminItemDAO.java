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
	
	public Map<String,Object> selectKey() throws Exception {
		return selectOne("PetItemSQL.selectKey");
	}
	// 상품 등록
	public void itemInsert(Map<String, Object> map) throws Exception {
		insert("PetItemSQL.itemInsert", map);
	}
	
	public void itemUpdate(Map<String, Object> map) throws Exception {
		update("PetItemSQL.itemUpdate", map);
	}
	
	public void itemDelete(Map<String, Object> map) throws Exception {
		delete("PetItemSQL.itemDelete", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String,Object> itemSelect(Map<String,Object> map) throws Exception {
		return selectOne("PetItemSQL.itemSelect", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> itemSearch1(String isSearch) throws Exception {
		return itemSearch("PetItemSQL.itemSearch1",isSearch);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> itemSearch2(String isSearch) throws Exception {
		return itemSearch("PetItemSQL.itemSearch2",isSearch);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> itemSearch3(String isSearch) throws Exception {
		return itemSearch("PetItemSQL.itemSearch3",isSearch);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> itemSearch4(String isSearch) throws Exception {
		return itemSearch("PetItemSQL.itemSearch4",isSearch);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> itemSearch5(String isSearch) throws Exception {
		return itemSearch("PetItemSQL.itemSearch5",isSearch);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> itemSearch6(String isSearch) throws Exception {
		return itemSearch("PetItemSQL.itemSearch6",isSearch);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> itemSearch7(String isSearch) throws Exception {
		return itemSearch("PetItemSQL.itemSearch7",isSearch);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> orderList(Map<String,Object> map) throws Exception {
		
		return selectList("PetOrderSQL.adminOdList", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> orderSearch1(String isSearch) throws Exception {
		return itemSearch("PetOrderSQL.orderSearch1",isSearch);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> orderSearch2(String isSearch) throws Exception {
		return itemSearch("PetOrderSQL.orderSearch2",isSearch);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> orderSearch3(String isSearch) throws Exception {
		return itemSearch("PetOrderSQL.orderSearch3",isSearch);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> orderSearch4(String isSearch) throws Exception {
		return itemSearch("PetOrderSQL.orderSearch4",isSearch);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> orderSearch5(String isSearch) throws Exception {
		return itemSearch("PetOrderSQL.orderSearch5",isSearch);
	}
	
	public void orderType(Map<String,Object> map) throws Exception {
		update("PetOrderSQL.orderType", map);
	}


}
