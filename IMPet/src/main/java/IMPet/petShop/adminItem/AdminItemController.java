package IMPet.petShop.adminItem;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;
import IMPet.module.Paging;
import IMPet.util.ProjectUtil;

@Controller
@RequestMapping(value="/PetShop")
public class AdminItemController {
	
	ModelAndView mav = new ModelAndView();
	
	ProjectUtil util = new ProjectUtil();
	
	@Resource(name="adminItemService")
	private AdminItemService adminItemService;
	
	private int searchNum; // 검색 유형
	private Integer posting; 
	private String isSearch; // 검색어
	private int currentPage; // 현재 페이지
	private int totalCount; // 총 게시글 수
	private int blockCount = 10; // 한 화면에 보여줄 게시글 수
	private int blockPage = 5; // 한 화면에 보여줄 페이지 수 
	private String pagingHtml;
	private Paging page;
	
	
	//펫샵관리자상품리스트
	@RequestMapping(value="/AdminItemList")
	public ModelAndView AdminItemList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		
		ModelAndView mav = new ModelAndView("AdminItemList");
		
		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		System.out.println("111111111111111111111111111111");
		System.out.println("search"+request.getParameter("isSearch"));
		isSearch = request.getParameter("isSearch");
		
		List<Map<String,Object>> itemList = adminItemService.itemList(commandMap.getMap()); 
		System.out.println("list"+itemList.size());
		
		if (isSearch != null) {
			System.out.println("22222222222222");
			
			searchNum = Integer.parseInt(request.getParameter("searchNum"));

			System.out.println("getMap : " + commandMap.getMap());
			
			if (searchNum == 0){ // 상품명
				System.out.println("333333");
				itemList = adminItemService.itemSearch1(isSearch);
			}
			else if (searchNum == 1) // 상품 번호
				itemList = adminItemService.itemSearch2(isSearch);
			else if (searchNum == 2) // 카테고리
				itemList = adminItemService.itemSearch3(isSearch);
			else if (searchNum == 3) // 판매중
				itemList = adminItemService.itemSearch4(isSearch);
			else if (searchNum == 4) // 품절
				itemList = adminItemService.itemSearch5(isSearch);
			else if (searchNum == 5) // 재고량 적은순(품절 임박)
				itemList = adminItemService.itemSearch6(isSearch);
			else if (searchNum == 6) // 판매량 높은 순
				itemList = adminItemService.itemSearch7(isSearch);
			else 
				adminItemService.itemList(commandMap.getMap());
			
			totalCount = itemList.size();
			page = new Paging(currentPage, totalCount, blockCount, blockPage, "AdminItemList",searchNum, isSearch);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			itemList = itemList.subList(page.getStartCount(), lastCount);


			mav.addObject("totalCount", totalCount);
			mav.addObject("pagingHtml", pagingHtml);
			mav.addObject("currentPage", currentPage);
			mav.addObject("itemList", itemList);

			return mav;

		} else {

			posting = 0;
			searchNum = 0;
				
			totalCount = itemList.size();

			page = new Paging(currentPage, totalCount, blockCount, blockPage, "AdminItemList",searchNum, isSearch);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			itemList = itemList.subList(page.getStartCount(), lastCount);

			mav.addObject("posting", posting);
			mav.addObject("totalCount", totalCount);
			mav.addObject("pagingHtml", pagingHtml);
			mav.addObject("currentPage", currentPage);
			mav.addObject("itemList", itemList);

			return mav;
		}
		
	}
	
	//펫샵관리자상품추가폼
	@RequestMapping(value="/AdminItemWriteForm")
	public ModelAndView AdminItemWriteForm() throws Exception {

		 
		mav.setViewName("AdminItemWriteForm");
		return mav;
	}
	
	//펫샵관리자상품추가
	@RequestMapping(value="/AdminItemWrite")
	public ModelAndView AdminItemWrite(CommandMap commandMap ,HttpServletRequest request) throws Exception {
		
		String uploadPath = util.getPath()+"/IMPet/src/main/webapp/resources/image/itemImg/";
	
		Map<String,Object> map = util.UploadFile(commandMap.getMap(), request, uploadPath,0);
		
		adminItemService.itemInsert(map);
		
		mav.setViewName("redirect:/PetShop/AdminItemList");
		
		return mav;
	}
	
	//펫샵관리자상품수정폼
	@RequestMapping(value="/AdminItemModifyForm")
	public ModelAndView AdminItemModifyForm(CommandMap commandMap) throws Exception {

		
		Map<String,Object> map = adminItemService.itemSelect(commandMap.getMap());
	
		mav.addObject("itemList", map);
		mav.setViewName("AdminItemModifyForm");
		return mav;
	}
	
	//펫샵관리자상품수정
	@RequestMapping(value="/AdminItemModify")
	public ModelAndView AdminItemModify(CommandMap commandMap, HttpServletRequest request)  throws Exception {

		
		String uploadPath = util.getPath()+"/IMPet/src/main/webapp/resources/image/itemImg/";
	
		Map<String,Object> map = util.UpdateFile(commandMap.getMap(), request, uploadPath);
	
		adminItemService.itemUpdate(map);
		
		mav.setViewName("redirect:/PetShop/AdminItemList");
		return mav;
	}
	
	//펫샵관리자상품삭제
	@RequestMapping(value="/AdminItemDelete")
	public ModelAndView AdminItemDelete() throws Exception  {

		
		System.out.println("펫샵관리자상품삭제");
	
		
		mav.setViewName("AdminItemDelete");
		return mav;
	}
	
	//관리자회원주문내역리스트
	@RequestMapping(value="/AdminOrderList")
	public ModelAndView AdminOrderList() {

		
		System.out.println("관리자회원주문내역리스트");
	
		
		mav.setViewName("AdminOrderList");
		return mav;
	}
	
	//관리자회원주문결제상태
	@RequestMapping(value="/AdminOrderPay")
	public ModelAndView AdminOrderPay() {

		
		System.out.println("관리자회원주문결제상태");
	
		
		mav.setViewName("AdminOrderPay");
		return mav;
	}

}
