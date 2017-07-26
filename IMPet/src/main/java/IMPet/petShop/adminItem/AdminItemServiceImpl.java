package IMPet.petShop.adminItem;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import IMPet.petShop.basket.OrderDAO;
import IMPet.util.ProjectUtil;

@Service("adminItemService")
public class AdminItemServiceImpl implements AdminItemService{
	
	@Resource(name = "adminItemDAO")
	private AdminItemDAO adminItemDAO;
	
	@Resource(name="orderDAO")
	private OrderDAO orderDAO;

	//뭔지모르겠
//	@Resource(name = "goodsImageUtils")
//	private GoodsImageUtils goodsImageUtils;
 
	// 상품 목록 전체 불러오기
	@Override
	public List<Map<String, Object>> itemList(Map<String, Object> map) throws Exception {

		return adminItemDAO.itemList(map);
	}
	
	//상품 추가
	@Override
	public void itemInsert(Map<String, Object> map, HttpServletRequest request) throws Exception {
		ProjectUtil util = new ProjectUtil();
		
		
		
		Map<String,Object> key = adminItemDAO.selectKey();
		
		int num = Integer.parseInt(key.get("ITEM_NO").toString());
		
		System.out.println("key"+num);
		
		map.put("ITEM_NO", num);
		
		String uploadPath = util.getPath()+"/IMPet/src/main/webapp/resources/image/itemImg/";
			
		Map<String,Object> resultMap = util.UploadFile(map, request, uploadPath,num);
		
		adminItemDAO.itemInsert(resultMap);
		
		
	}
	
	
	@Override
	public void itemUpdate(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminItemDAO.itemUpdate(map);
		
	}
	

	@Override
	public void itemDelete(Map<String, Object> map) throws Exception {
		adminItemDAO.itemDelete(map);
		
	}

	// 상품 선택
	@Override
	public Map<String, Object> itemSelect(Map<String, Object> map) throws Exception {
		
		return adminItemDAO.itemSelect(map);
	}
	
	// 상품 설명 검색
	@Override
	public List<Map<String, Object>> itemSearch1(String isSearch) throws Exception {
		// TODO Auto-generated method stub
		return adminItemDAO.itemSearch1(isSearch);
	}
	
	// 상품 번호 검색
	@Override
	public List<Map<String, Object>> itemSearch2(String isSearch) throws Exception {
		// TODO Auto-generated method stub
		return adminItemDAO.itemSearch2(isSearch);
	}
	
	// 상품 타입 검색
	@Override
	public List<Map<String, Object>> itemSearch3(String isSearch) throws Exception {
		// TODO Auto-generated method stub
		return adminItemDAO.itemSearch3(isSearch);
	}
	
	// 상품 판매중 
	@Override
	public List<Map<String, Object>> itemSearch4(String isSearch) throws Exception {
		// TODO Auto-generated method stub
		return adminItemDAO.itemSearch4(isSearch);
	}
	
	// 상품 품절
	@Override
	public List<Map<String, Object>> itemSearch5(String isSearch) throws Exception {
		// TODO Auto-generated method stub
		return adminItemDAO.itemSearch5(isSearch);
	}
	
	// 상품 재고 적은순
	@Override
	public List<Map<String, Object>> itemSearch6(String isSearch) throws Exception {
		// TODO Auto-generated method stub
		return adminItemDAO.itemSearch6(isSearch);
	}
	
	// 상품 판매량 많은 순
	@Override
	public List<Map<String, Object>> itemSearch7(String isSearch) throws Exception {
		// TODO Auto-generated method stub
		return adminItemDAO.itemSearch7(isSearch);
	}

	@Override
	public List<Map<String, Object>> orderList(Map<String, Object> map) throws Exception {
		
		return adminItemDAO.orderList(map);
	}

	@Override
	public List<Map<String, Object>> orderSearch1(String isSearch) throws Exception {
		// TODO Auto-generated method stub
		return adminItemDAO.orderSearch1(isSearch);
	}

	@Override
	public List<Map<String, Object>> orderSearch2(String isSearch) throws Exception {
		// TODO Auto-generated method stub
		return adminItemDAO.orderSearch2(isSearch);
	}

	@Override
	public List<Map<String, Object>> orderSearch3(String isSearch) throws Exception {
		// TODO Auto-generated method stub
		return adminItemDAO.orderSearch3(isSearch);
	}

	@Override
	public List<Map<String, Object>> orderSearch4(String isSearch) throws Exception {
		// TODO Auto-generated method stub
		return adminItemDAO.orderSearch4(isSearch);
	}

	@Override
	public List<Map<String, Object>> orderSearch5(String isSearch) throws Exception {
		// TODO Auto-generated method stub
		return adminItemDAO.orderSearch5(isSearch);
	}

	@Override
	public void orderType(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminItemDAO.orderType(map);
	}

	@Override
	public void orderDelete(Map<String, Object> map) throws Exception {
		
		adminItemDAO.orderDelete(map);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	


}
