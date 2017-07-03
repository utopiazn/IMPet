package IMPet.petShop.adminItem;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("adminItemDAO")
public class AdminItemDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	// 상품 목록 전체 불러오기
	public List<Map<String, Object>> goodsList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("adminGoods.selectAdminGoodsList");
	}

	// 등록된 상품 목록 수 구하기
	public int countGoodsList() throws Exception {
		return sqlSession.selectOne("adminGoods.countAdminGoods");
	}

	// 상품 등록 폼으로 이동

	// 상품 등록
	public void goodsInsert(Map<String, Object> map) throws Exception {
		sqlSession.insert("adminGoods.insertAdminGoods", map);
	}

	// 상품 세분화 등록
	public void goodsKindsInsert(Map<String, Object> map) throws Exception {
		sqlSession.insert("adminGoods.insertAdminGoodsKinds", map);
	}

	// 상품 썸네일 이미지 등록
	public void goodsThumbnailInsert(Map<String, Object> map) throws Exception {
		sqlSession.update("adminGoods.insertGoodsThumbnail", map);
	}

	// 상품 이미지 등록
	public void goodsImageInsert(Map<String, Object> map) throws Exception {
		sqlSession.insert("adminGoods.insertAdminGoodsImage", map);
	}

	// 상품 수정 폼으로 이동(데이터 들고가야함)
	public List<Map<String, Object>> goodsModifyForm(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminGoods.selectOneGoods", map);
	}
	
	// 상품 이미지 정보 불러오기
	public List<Map<String, Object>> goodsModifyFormImage(Map<String, Object> map) throws Exception{
		return sqlSession.selectList("adminGoods.selectOneGoodsImage", map);
	}
	
	// 상품 수정
	public void goodsModify(Map<String, Object> map) throws Exception {
		sqlSession.update("adminGoods.modifyGoods", map);
	}
	
	//상품 수정(NO DC)
	public void goodsModify2(Map<String,Object> map) throws Exception{
		sqlSession.update("adminGoods.modifyGoodsNoDC",map);
	}
	
	// 상품 종류 수정
	public void goodsKindsModify(Map<String, Object> map) throws Exception{
		sqlSession.update("adminGoods.modifyGoodsKinds", map);
	}
	
	// 상품 이미지 수정
	public void goodsImageModify(Map<String, Object> map) throws Exception{
		sqlSession.update("adminGoods.modifyGoodsImage", map);
	}
	
	//상품 종류 삭제
	public void goodsKindsDelete(Map<String, Object> map) throws Exception{
		sqlSession.delete("adminGoods.deleteGoodsKinds", map);
	}
	
	//상품 이미지 삭제
	public void goodsImageDelete(Map<String, Object> map) throws Exception{
		sqlSession.delete("adminGoods.deleteGoodsImage", map);
	}

	// 상품 수정 OFF시, 장바구니와 위시리스트에서 제외

	// 상품 삭제
	public void goodsDelete(Map<String, Object> map) throws Exception {
		sqlSession.delete("adminGoods.deleteAdminGoods", map);
	}

	// 상품 검색(상품 이름)
	public List<Map<String, Object>> adminGoodsSearch0(String isSearch) throws Exception {
		return sqlSession.selectList("adminGoods.adminGoodsSearch0",isSearch);
	}

	// 상품 검색(상품 번호)
	public List<Map<String, Object>> adminGoodsSearch1(String isSearch) throws Exception {
		return sqlSession.selectList("adminGoods.adminGoodsSearch1",isSearch);
	}

	// 상품 검색(카테고리 검색)
	public List<Map<String, Object>> adminGoodsSearch2(String isSearch) throws Exception {
		return sqlSession.selectList("adminGoods.adminGoodsSearch2",isSearch);
	}

	// 상품 검색(판매 활성화 or 비활성화 구분)
	public List<Map<String, Object>> adminGoodsSearch3(String isSearch) throws Exception {
		return sqlSession.selectList("adminGoods.adminGoodsSearch3",isSearch);
	}

	// 상품 검색(재고가 0인 상품)
	public List<Map<String, Object>> adminGoodsSearch4(String isSearch) throws Exception {
		return sqlSession.selectList("adminGoods.adminGoodsSearch4");
	}

	// 상품 검색(판매량 많은 순, 조회수 많은 순)
	public List<Map<String, Object>> adminGoodsSearch5(String isSearch) throws Exception {
		return sqlSession.selectList("adminGoods.adminGoodsSearch5",isSearch);
	}
	public List<Map<String, Object>> adminGoodsSearch6(String isSearch) throws Exception {
		return sqlSession.selectList("adminGoods.adminGoodsSearch6",isSearch);
	}
	
	//주문취소시 상품 수량 복귀
	public void addAmount(Map<String, Object> map) throws Exception{
		sqlSession.update("adminGoods.addAmount",map);
	}

}
