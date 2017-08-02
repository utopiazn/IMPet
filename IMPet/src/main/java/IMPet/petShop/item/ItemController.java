package IMPet.petShop.item;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;

@Controller
@RequestMapping(value="/PetShop")
public class ItemController {
	
	ModelAndView mav = new ModelAndView();
	
	@Resource(name="itemService")
	private ItemService itemService;
	
	@Resource(name="itemReviewService")
	private ItemReviewService itemReviewService;
	
	
	//펫샵메인(베스트셀러)
	@RequestMapping(value="/Main")
	public ModelAndView Main(CommandMap commandMap) throws Exception {

		
		mav.setViewName("PetShop");
		return mav;
	}
	
	
	//펫샵상품리스트
	@RequestMapping(value="/ItemList")
	public ModelAndView ItemList(CommandMap commandMap) throws Exception {
		
		Map<String,Object> map = itemService.selectItem(commandMap.getMap());
		
		mav.addObject("bestList", map.get("bestList"));
		mav.addObject("itemList", map.get("typeList"));
		mav.setViewName("petShop/item/itemList");
		
		System.out.println(map.get("typeList"));
		return mav;
	}
	
	
	//펫샵상품상세보기(+댓글리스트)
	@RequestMapping(value="/ItemView")
	public ModelAndView ItemView(CommandMap commandMap) throws Exception {

		Map<String, Object> map = itemService.selectOne(commandMap.getMap());
		
		
		mav.addObject("view", map.get("view"));
		mav.addObject("comment", map.get("comment"));
		mav.setViewName("ItemView");
		return mav;
	
	}
	
	
	//펫샵후기등록
	@RequestMapping(value="/ItemComment")
	public ModelAndView ItemComment(CommandMap commandMap) throws Exception {

		itemReviewService.insert(commandMap.getMap());
	
		mav.setViewName("redirect:ItemView?ITEM_NO="+commandMap.get("ITEM_NO"));
		return mav;
	}
	

	//펫샵상품후기삭제
	@RequestMapping(value="/ItemCommentDelete")
	public ModelAndView ItemCommentDelete(CommandMap commandMap) throws	Exception {
		
		itemReviewService.delete(commandMap.getMap());

		mav.setViewName("redirect:ItemView?ITEM_NO="+commandMap.get("ITEM_NO"));
		return mav;
	}
	
}
