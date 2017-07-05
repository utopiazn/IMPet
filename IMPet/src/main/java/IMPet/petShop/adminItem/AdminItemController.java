package IMPet.petShop.adminItem;

import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;
import IMPet.util.ProjectUtil;

@Controller
@RequestMapping(value="/PetShop")
public class AdminItemController {
	
	ModelAndView mav = new ModelAndView();
	
	ProjectUtil util = new ProjectUtil();
	
	public static String getRandomString() {
		return UUID.randomUUID().toString().replace("-", "");
	}
	
	@Resource(name="adminItemService")
	private AdminItemService adminItemService;
	
	//펫샵관리자상품리스트
	@RequestMapping(value="/AdminItemList")
	public ModelAndView AdminItemList(CommandMap commandMap) throws Exception {
		
		ModelAndView mav = new ModelAndView("AdminItemList");
		
		List<Map<String,Object>> itemList = adminItemService.itemList(commandMap.getMap()); 
		
		int count = itemList.size();
		mav.addObject("itemList", itemList);
		mav.addObject("totalCount", count);
		return mav;
		
		
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
	
		
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		MultipartFile multipartFile = null;
		String originalFileName = null;

			///
		while(iterator.hasNext()) {
			
		
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			System.out.println("파일이름"+multipartFile.getName());
			if (multipartFile.isEmpty() == false) {
				originalFileName = multipartFile.getOriginalFilename();			
				File file = new File(uploadPath + originalFileName);
				multipartFile.transferTo(file);
				
				commandMap.put(multipartFile.getName(), originalFileName);			
		
			}
		}
		System.out.println(commandMap.getMap().toString());
		
		adminItemService.itemInsert(commandMap.getMap());
		
		mav.setViewName("redirect:/PetShop/AdminItemList");
		return mav;
	}
	
	//펫샵관리자상품수정폼
	@RequestMapping(value="/AdminItemModifyForm")
	public ModelAndView AdminItemModifyForm() throws Exception {

		
		System.out.println("펫샵관리자상품수정폼");
	
		
		mav.setViewName("AdminItemModifyForm");
		return mav;
	}
	
	//펫샵관리자상품수정
	@RequestMapping(value="/AdminItemModify")
	public ModelAndView AdminItemModify()  throws Exception {

		
		System.out.println("펫샵관리자상품수정");
	
		
		mav.setViewName("AdminItemModify");
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
