package IMPet.petShop.adminItem;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface AdminItemService {
	
	// 상품 목록 전체 불러오기
		public List<Map<String, Object>> itemList(Map<String, Object> map) throws Exception;
		
		//상품 추가
		public void itemInsert(Map<String, Object> map) throws Exception;
		
		//상품 수정
		public void itemUpdate(Map<String, Object> map) throws Exception;
		
		// 상품 하나 가져오기
		public Map<String,Object> itemSelect(Map<String, Object> map) throws Exception;
		
		// 상품 설명 검색
		public List<Map<String, Object>> itemSearch1(String isSearch) throws Exception;
		
		// 상품 번호 검색
		public List<Map<String, Object>> itemSearch2(String isSearch) throws Exception;
		
		// 상품 타입 검색
		public List<Map<String, Object>> itemSearch3(String isSearch) throws Exception;
		
		// 상품 판매중
		public List<Map<String, Object>> itemSearch4(String isSearch) throws Exception;
		
		// 상품 품절
		public List<Map<String, Object>> itemSearch5(String isSearch) throws Exception;
		
		// 상품 재고량 적은순
		public List<Map<String, Object>> itemSearch6(String isSearch) throws Exception;
		
		// 상품 판매량 많은순
		public List<Map<String, Object>> itemSearch7(String isSearch) throws Exception;
		

}
