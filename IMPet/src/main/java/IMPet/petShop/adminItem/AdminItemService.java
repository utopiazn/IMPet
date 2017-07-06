package IMPet.petShop.adminItem;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface AdminItemService {
	
	// 상품 목록 전체 불러오기
		public List<Map<String, Object>> itemList(Map<String, Object> map) throws Exception;

		public void itemInsert(Map<String, Object> map) throws Exception;
		
		public Map<String,Object> itemSelect(Map<String, Object> map) throws Exception;
		
		public List<Map<String, Object>> itemSearch1(String isSearch) throws Exception;
		
		public List<Map<String, Object>> itemSearch2(String isSearch) throws Exception;
		
		public List<Map<String, Object>> itemSearch3(String isSearch) throws Exception;
		
		public List<Map<String, Object>> itemSearch4(String isSearch) throws Exception;
		
		public List<Map<String, Object>> itemSearch5(String isSearch) throws Exception;
		
		public List<Map<String, Object>> itemSearch6(String isSearch) throws Exception;
		
		public List<Map<String, Object>> itemSearch7(String isSearch) throws Exception;
		

}
