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

@Service("adminItemService")
public class AdminItemServiceImpl implements AdminItemService{
	
	@Resource(name = "adminItemDAO")
	private AdminItemDAO adminItemDAO;

	//뭔지모르겠
//	@Resource(name = "goodsImageUtils")
//	private GoodsImageUtils goodsImageUtils;

	// 상품 목록 전체 불러오기
	@Override
	public List<Map<String, Object>> goodsList(Map<String, Object> map) throws Exception {

		// Integer countGoodsList=new Integer(adminGoodsDAO.countGoodsList());

		List<Map<String, Object>> goodsList = adminItemDAO.goodsList(map);
		// Map<String, Object> goodsCount=new HashMap<String, Object>();

		// goodsCount.put("count", countGoodsList);

		// goodsList.add(goodsCount);

		return goodsList;

	}

	public Integer countGoodsList() throws Exception {
		return new Integer(adminItemDAO.countGoodsList());
	}

	// 상품 등록 폼으로 이동

	// 상품 등록
	@Override
	public void goodsInsert(Map<String, Object> map, HttpServletRequest request) throws Exception {

		// System.out.println("DB작업전"+map);

		adminItemDAO.goodsInsert(map);

		// System.out.println("썸네일이미지 등록");
		
		//goodsImageUtils주석처리!!!
		//map = goodsImageUtils.goodsThumbnail(map, request);
		adminItemDAO.goodsThumbnailInsert(map);

		// System.out.println(map);
		String[] colors = request.getParameterValues("GOODS_COLOR");
		String[] sizes = request.getParameterValues("GOODS_SIZE");
		String[] amounts = request.getParameterValues("GOODS_AMOUNT");

		for (int i = 0; i < colors.length; i++) {
			map.put("GOODS_COLOR", colors[i]);
			map.put("GOODS_SIZE", sizes[i]);
			map.put("GOODS_AMOUNT", amounts[i]);
			adminItemDAO.goodsKindsInsert(map);
		}

		// System.out.println("이미지 등록");
		
		//goodsImageUtils주석처리!!!
		//List<Map<String, Object>> goodsImageList = goodsImageUtils.parseInsertFileInfo(map, request);

		// System.out.println("goodsImageList : "+goodsImageList);
		// System.out.println("mapImage : "+map.get("IMAGE"));

		
		//goodsImageUtils주석처리!!!
//		if (goodsImageList.size() > 0) {
//			for (int i = 0; i < goodsImageList.size(); i++) {
//				adminItemDAO.goodsImageInsert(goodsImageList.get(i));
//			}
//		}

		
		
		
		/*
		 * for(int i=0; i<colors.length;i++){
		 * System.out.println(colors[i]+" "+sizes[i]+" "+amounts[i]); }
		 */
		// adminGoodsDAO.goodsInsert(map);
	}

	// 상품 수정폼으로 이동
	@Override
	public List<Map<String, Object>> goodsModifyForm(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> goodsDetail = adminItemDAO.goodsModifyForm(map);

		return goodsDetail;
	}

	// 상품 이미지 불러오기
	@Override
	public List<Map<String, Object>> goodsModifyFormImage(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> goodImage = adminItemDAO.goodsModifyFormImage(map);
		return goodImage;
	}

	// 상품 수정
	@Override
	public void goodsModify(Map<String, Object> map, HttpServletRequest request) throws Exception {

		// 상품 기본정보 수정
		if (map.get("GOODS_ONOFF") == null) {
			map.put("GOODS_ONOFF", 1);
		}

		// System.out.println("SALEDATE : "+map.get("GOODS_SALEDATE"));
		// System.out.println("SALEDATE2:
		// "+map.get("GOODS_SALEDATE").toString().length());
		if (map.get("GOODS_SALEDATE").toString().length() > 0) {
			Date GOODS_SALEDATE = new SimpleDateFormat("yyyy-MM-dd").parse((String) map.get("GOODS_SALEDATE"));
			map.remove("GOODS_SALEDATE");
			map.put("GOODS_SALEDATE", GOODS_SALEDATE);
			// System.out.println("HELLO");
		}
		// System.out.println("HELLO2");
		adminItemDAO.goodsModify(map);

		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;

		// 상품 썸네일 수정
		if (multipartHttpServletRequest.getFile("GOODS_THUMBNAIL").getSize() > 0) {
			
			//goodsImageUtils주석처리!!!
			//map = goodsImageUtils.parseUpdateThumbImage(map, request);
			
			//System.out.println("썸네일 수정");
			adminItemDAO.goodsThumbnailInsert(map);
		}

		// 상품 종류 수정(기존거 수정/기존거 삭제)
		if (request.getParameterValues("ORIGINAL_GOODS_KINDS_NUMBER") != null) {

			String[] ORIGINAL_GOODS_KINDS_NUMBER = request.getParameterValues("ORIGINAL_GOODS_KINDS_NUMBER");
			List<String> orgList = new ArrayList<String>();

			for (String b : ORIGINAL_GOODS_KINDS_NUMBER) {
				orgList.add(b);
			}

			String[] ORG_COLOR = null;
			String[] ORG_SIZE = null;

			if (request.getParameterValues("ORG_GOODS_COLOR") != null) {
				ORG_COLOR = request.getParameterValues("ORG_GOODS_COLOR");
				ORG_SIZE = request.getParameterValues("ORG_GOODS_SIZE");
			}

			// List<Map<String, Object>> list = new ArrayList<Map<String,
			// Object>>();
			// list.add(kinds);

			// 상품 종류 정보 수정
			for (int i = 0; i < orgList.size(); i++) {
				// System.out.println("ORG : " + orgList.get(i));
				// System.out.println("map : " + map.get(orgList.get(i)));
				// System.out.println("MMM : " + map);

				if (map.get(orgList.get(i)) != null) {
					// System.out.println("수정되는 상품종류 번호 : " + orgList.get(i));
					map.put("GOODS_KINDS_NUMBER", orgList.get(i));
					;
					map.put("MD_GOODS_COLOR", ORG_COLOR[i]);
					map.put("MD_GOODS_SIZE", ORG_SIZE[i]);
					String ADD = "addAmount_" + orgList.get(i);
					// System.out.println("aaa : " + request.getParameter(ADD));
					// System.out.println("ADD : "+ADD);
					if (map.get(ADD).toString().length() > 0) {
						map.put("addAmount", map.get(ADD));
						// System.out.println("ADD쪽 :
						// "+map.get(ADD).toString().length());
					} else {
						// System.out.println("cc쪽");
						int cc = 0;
						map.put("addAmount", cc);
					}
					// System.out.println("addAmount_" + orgList.get(i));
					// System.out.println("수량1 : " + map.get(ADD));
					// System.out.println("수량 : " + map.get("addAmount"));

					adminItemDAO.goodsKindsModify(map);
				} else {
					// System.out.println("삭제되는 상품종류 번호 : " + orgList.get(i));
					map.put("GOODS_KINDS_NUMBER", orgList.get(i));
					adminItemDAO.goodsKindsDelete(map);
				}
			}
		}

		// 새로 입력된 상품 종류 등록

		if (request.getParameterValues("GOODS_COLOR") != null) {
			String[] colors = request.getParameterValues("GOODS_COLOR");
			String[] sizes = request.getParameterValues("GOODS_SIZE");
			String[] amounts = request.getParameterValues("GOODS_AMOUNT");

			//System.out.println("COLOR : " + colors[0]);

			for (int i = 0; i < colors.length; i++) {
				map.put("GOODS_NUMBER", map.get("GOODS_NUMBER"));
				map.put("GOODS_COLOR", colors[i]);
				map.put("GOODS_SIZE", sizes[i]);
				map.put("GOODS_AMOUNT", amounts[i]);
				adminItemDAO.goodsKindsInsert(map);
			}
		}

		// 상픔 이미지 수정, 삭제
		//System.out.println("이미지 : " + map.get("ORIGINAL_IMAGE"));
		if (map.get("ORIGINAL_IMAGE") != null) {

			
			//goodsImageUtils주석처리!!!
			//List<Map<String, Object>> goodsImageList = goodsImageUtils.parseUpdateImages(map, request);

//			if (goodsImageList.size() > 0) {
//				for (int i = 0; i < goodsImageList.size(); i++) {
//					adminItemDAO.goodsImageModify(goodsImageList.get(i));
//				}
//			}

			String[] ORIGINAL_IMAGE = request.getParameterValues("ORIGINAL_IMAGE");
			Map<String, Object> deleteImage = new HashMap<String, Object>();

			for (String a : ORIGINAL_IMAGE) {
				if (map.get(a) == null) {
					deleteImage.put("IMAGE", a);
					adminItemDAO.goodsImageDelete(deleteImage);
				}
			}
		}

		// 새로 입력된 이미지 등록
		//goodsImageUtils주석처리!!!
		//List<MultipartFile> IMAGES= multipartHttpServletRequest.getFiles("IMAGE");
			//System.out.println("MAP이미지1 : " + multipartHttpServletRequest.getFile("IMAGE"));
			//System.out.println("MAP이미지 : " + multipartHttpServletRequest.getFiles("IMAGE"));
			//System.out.println("SIZE : "+IMAGES.size());
			//if (IMAGES.size()>0) {
				//List<Map<String, Object>> goodsImageList = goodsImageUtils.parseInsertFileInfo(map, request);

				// System.out.println("goodsImageList : "+goodsImageList);
				// System.out.println("mapImage : "+map.get("IMAGE"));

				//for (int i = 0; i < goodsImageList.size(); i++) {
					//adminItemDAO.goodsImageInsert(goodsImageList.get(i));
				}
			//}
		//}
	

	// 상품 삭제
	@Override
	public void goodsDelete(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> listMap=new ArrayList<Map<String, Object>>();
		
		listMap=adminItemDAO.goodsModifyForm(map);	
		
		//goodsImageUtils주석처리!!!
		//goodsImageUtils.parseDeleteThumbnail(listMap.get(0));
		
		listMap=adminItemDAO.goodsModifyFormImage(map);
		for(int i=0; i<listMap.size();i++)
		
			//goodsImageUtils주석처리!!!
			//goodsImageUtils.parseDeleteImages(listMap.get(i));
		
		adminItemDAO.goodsDelete(map);
	}

	// 상품 검색(상품명)
	@Override
	public List<Map<String, Object>> adminGoodsSearch0(String isSearch) throws Exception {

		List<Map<String, Object>> goodsList = adminItemDAO.adminGoodsSearch0(isSearch);
		return goodsList;
	}

	// 상품 검색(상품 번호)
	@Override
	public List<Map<String, Object>> adminGoodsSearch1(String isSearch) throws Exception {

		List<Map<String, Object>> goodsList = adminItemDAO.adminGoodsSearch1(isSearch);
		return goodsList;
	}

	// 상품 검색(카테고리 검색)
	@Override
	public List<Map<String, Object>> adminGoodsSearch2(String isSearch) throws Exception {

		List<Map<String, Object>> goodsList = adminItemDAO.adminGoodsSearch2(isSearch);
		return goodsList;
	}

	// 상품 검색(판매 활성화 or 비활성화 구분)
	@Override
	public List<Map<String, Object>> adminGoodsSearch3(String isSearch) throws Exception {

		List<Map<String, Object>> goodsList = adminItemDAO.adminGoodsSearch3(isSearch);
		return goodsList;
	}

	// 상품 검색(재고가 0인 상품)
	@Override
	public List<Map<String, Object>> adminGoodsSearch4(String isSearch) throws Exception {

		List<Map<String, Object>> goodsList = adminItemDAO.adminGoodsSearch4(isSearch);
		return goodsList;
	}

	// 상품 정렬(판매량순)
	@Override
	public List<Map<String, Object>> adminGoodsSearch5(String isSearch) throws Exception {
		List<Map<String, Object>> goodsList = adminItemDAO.adminGoodsSearch5(isSearch);
		return goodsList;
	}

	// 상품 정렬(조회순)
	@Override
	public List<Map<String, Object>> adminGoodsSearch6(String isSearch) throws Exception {
		List<Map<String, Object>> goodsList = adminItemDAO.adminGoodsSearch6(isSearch);
		return goodsList;
	}
	//주문취소시 상품 수량 복귀
	public void addAmount(Map<String, Object> map) throws Exception{
		adminItemDAO.addAmount(map);
	}

}
