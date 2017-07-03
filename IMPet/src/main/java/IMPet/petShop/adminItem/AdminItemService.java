package IMPet.petShop.adminItem;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface AdminItemService {
	
	// 상품 목록 전체 불러오기
		public List<Map<String, Object>> goodsList(Map<String, Object> map) throws Exception;

		// 상품 전체 수 구하기
		public Integer countGoodsList() throws Exception;

		// 상품 등록 폼으로 이동

		// 상품 등록
		public void goodsInsert(Map<String, Object> map, HttpServletRequest request) throws Exception;

		// 상품 세분화 등록
		// void goodsKindsInsert(Map<String, Object> map, HttpServletRequest
		// request) throws Exception;

		// 상품 이미지 등록
		// void goodsImageInsert(Map<String, Object> map, HttpServletRequest
		// request) throws Exception;

		// 상품 수정 폼으로 이동
		public List<Map<String, Object>> goodsModifyForm(Map<String, Object> map) throws Exception;
		
		public List<Map<String, Object>> goodsModifyFormImage(Map<String, Object> map) throws Exception;
		// 상품 수정
		public void goodsModify(Map<String, Object> map, HttpServletRequest request) throws Exception;

		// 상품 삭제
		public void goodsDelete(Map<String, Object> map) throws Exception;
		// 상품 검색(상품 이름)
		public List<Map<String, Object>> adminGoodsSearch0(String isSearch) throws Exception;

		// 상품 검색(상품 번호)
		public List<Map<String, Object>> adminGoodsSearch1(String isSearch) throws Exception;

		// 상품 검색(카테고리 검색)
		public List<Map<String, Object>> adminGoodsSearch2(String isSearch) throws Exception;

		// 상품 검색(판매 활성화 or 비활성화 구분)
		public List<Map<String, Object>> adminGoodsSearch3(String isSearch) throws Exception;

		// 상품 검색(재고가 0인 상품)
		public List<Map<String, Object>> adminGoodsSearch4(String isSearch) throws Exception;
		
		// 상품 정렬(판매량순, 조회순)
		public List<Map<String, Object>> adminGoodsSearch5(String isSearch) throws Exception;
		public List<Map<String, Object>> adminGoodsSearch6(String isSearch) throws Exception;

		//주문취소시 상품 수량 복귀
		public void addAmount(Map<String, Object> map) throws Exception;

}
