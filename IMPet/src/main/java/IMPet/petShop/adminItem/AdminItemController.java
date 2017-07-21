package IMPet.petShop.adminItem;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;
import IMPet.module.Paging;
import IMPet.util.ProjectUtil;

@Controller
@RequestMapping(value="/PetShop")
public class AdminItemController {
	

	

	
	@Resource(name="adminItemService")
	private AdminItemService adminItemService;
	

	
	//펫샵관리자상품리스트
	@RequestMapping(value="/AdminItemList")
	public ModelAndView AdminItemList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		
		int searchNum; // 검색 유형
		String isSearch; // 검색어
		int currentPage; // 현재 페이지
		int totalCount; // 총 게시글 수
		int blockCount = 10; // 한 화면에 보여줄 게시글 수
		int blockPage = 5; // 한 화면에 보여줄 페이지 수 
		String pagingHtml;
		Paging page;
		
		
		ModelAndView mav = new ModelAndView("AdminPage");
		
		//관리자페이지 통합코드
		int adminCode = 5;
		mav.addObject("adminCode", adminCode);
		
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
			
			System.out.println("itemList"+itemList.size());

			return mav;

		} else {

			searchNum = 0;
				
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
		}
		
	}
	
	//펫샵관리자상품추가폼
	@RequestMapping(value="/AdminItemWriteForm")
	public ModelAndView AdminItemWriteForm() throws Exception {
		ModelAndView mav = new ModelAndView();
		
		//관리자페이지 통합코드
		int adminCode = 6;
		mav.addObject("adminCode", adminCode);
		
		mav.setViewName("AdminPage");
		return mav;
	}
	
	//펫샵관리자상품추가
	@RequestMapping(value="/AdminItemWrite")
	public ModelAndView AdminItemWrite(CommandMap commandMap ,HttpServletRequest request) throws Exception {
		
		
		ModelAndView mav = new ModelAndView();
		
		adminItemService.itemInsert(commandMap.getMap(), request);
		
		mav.setViewName("redirect:/PetShop/AdminItemList");
		
		return mav;
	}
	
	//펫샵관리자상품수정폼
	@RequestMapping(value="/AdminItemModifyForm")
	public ModelAndView AdminItemModifyForm(CommandMap commandMap) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		Map<String,Object> map = adminItemService.itemSelect(commandMap.getMap());
	
		mav.addObject("itemList", map);
		mav.setViewName("AdminItemModifyForm");
		return mav;
	}
	
	//펫샵관리자상품수정
	@RequestMapping(value="/AdminItemModify")
	public ModelAndView AdminItemModify(CommandMap commandMap, HttpServletRequest request)  throws Exception {
		ModelAndView mav = new ModelAndView();
		
		ProjectUtil util = new ProjectUtil();
		
		String uploadPath = util.getPath()+"/IMPet/src/main/webapp/resources/image/itemImg/";
	
		Map<String,Object> map = util.UpdateFile(commandMap.getMap(), request, uploadPath);
	
		adminItemService.itemUpdate(map);
		
		mav.setViewName("redirect:/PetShop/AdminItemList");
		return mav;
	}
	
	//펫샵관리자상품삭제
	@RequestMapping(value="/AdminItemDelete")
	public ModelAndView AdminItemDelete(CommandMap commandMap) throws Exception  {
		ModelAndView mav = new ModelAndView();
		
		adminItemService.itemDelete(commandMap.getMap());
		
		
		mav.setViewName("redirect:/PetShop/AdminItemList");
		return mav;
	}
	
	//관리자회원주문내역리스트
	@RequestMapping(value="/AdminOrderList")
	public ModelAndView AdminOrderList(CommandMap commandMap, HttpServletRequest request) throws Exception {

			
		int searchNum; // 검색 유형
		String isSearch; // 검색어
		int currentPage; // 현재 페이지
		int totalCount; // 총 게시글 수
		int blockCount = 10; // 한 화면에 보여줄 게시글 수
		int blockPage = 5; // 한 화면에 보여줄 페이지 수 
		String pagingHtml;
		Paging page;
		
		
		ModelAndView mav = new ModelAndView("AdminPage");
		
		//관리자페이지 통합코드
		int adminCode = 12;
		mav.addObject("adminCode", adminCode);
		
		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		//-----------------------------------------------------------
		System.out.println("111111111111111111111111111111");
		System.out.println("search"+request.getParameter("isSearch"));
		
		isSearch = request.getParameter("isSearch");
		
		List<Map<String,Object>> orderList = adminItemService.orderList(commandMap.getMap());
		System.out.println("list"+orderList.size());
		
		if (isSearch != null) {
		
			searchNum = Integer.parseInt(request.getParameter("searchNum"));

			System.out.println("getMap : " + commandMap.getMap());
			
			if (searchNum == 0){ // 아이디
				orderList = adminItemService.itemSearch1(isSearch);
			}
			else if (searchNum == 1) // 상품명
				orderList = adminItemService.itemSearch2(isSearch);
			else if (searchNum == 2) // 주문 상태
				orderList = adminItemService.itemSearch3(isSearch);
			else if (searchNum == 3) // 주문 번호
				orderList = adminItemService.itemSearch4(isSearch);
			else if (searchNum == 4) // 주문 날짜
				orderList = adminItemService.itemSearch5(isSearch);


			
			totalCount = orderList.size();
			page = new Paging(currentPage, totalCount, blockCount, blockPage, "AdminOrderList",searchNum, isSearch);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			orderList = orderList.subList(page.getStartCount(), lastCount);


			mav.addObject("totalCount", totalCount);
			mav.addObject("pagingHtml", pagingHtml);
			mav.addObject("currentPage", currentPage);
			mav.addObject("orderList", orderList);
			
			System.out.println("itemList"+orderList.size());

			return mav;

		} else {

			searchNum = 0;
				
			totalCount = orderList.size();

			page = new Paging(currentPage, totalCount, blockCount, blockPage, "AdminOrderList",searchNum, isSearch);
			pagingHtml = page.getPagingHtml().toString();

			int lastCount = totalCount;

			if (page.getEndCount() < totalCount)
				lastCount = page.getEndCount() + 1;

			orderList = orderList.subList(page.getStartCount(), lastCount);
			
			
			mav.addObject("totalCount", totalCount);
			mav.addObject("pagingHtml", pagingHtml);
			mav.addObject("currentPage", currentPage);
			mav.addObject("orderList", orderList);

			return mav;
		}
		
	}
	
	
	
	//관리자회원주문결제상태
	@RequestMapping(value="/AdminOrderPay")
	public ModelAndView AdminOrderPay() {
		ModelAndView mav = new ModelAndView();
		
		System.out.println("관리자회원주문결제상태");
	
		
		mav.setViewName("AdminOrderPay");
		return mav;
	}

}
