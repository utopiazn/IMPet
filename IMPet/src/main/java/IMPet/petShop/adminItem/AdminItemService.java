package IMPet.petShop.adminItem;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface AdminItemService {
	
	// 상품 목록 전체 불러오기
		public List<Map<String, Object>> itemList(Map<String, Object> map) throws Exception;

		public void itemInsert(Map<String, Object> map) throws Exception;


	

}
