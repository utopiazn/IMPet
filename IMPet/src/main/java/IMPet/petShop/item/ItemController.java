package IMPet.petShop.item;

import java.util.List;
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
	
	
	//펫샵메인
	@RequestMapping(value="/Main")
	public ModelAndView Main() throws Exception {

		System.out.println("펫샵메인");
		List<Map<String, Object>> list = itemService.selectAll();
		
		mav.addObject("list", list);
		mav.setViewName("ItemList");
		return mav;
	}
	
	
	//펫샵상품리스트
	@RequestMapping(value="/ItemList")
	public ModelAndView ItemList() throws Exception {

		System.out.println("펫샵상품리스트");
		List<Map<String, Object>> list = itemService.selectAll();
	
		mav.addObject("list", list);
		mav.setViewName("ItemList");
		return mav;
	}
	
	
	//펫샵상품상세보기
	@RequestMapping(value="/ItemView")
	public ModelAndView ItemView(CommandMap commandMap) throws Exception {

		System.out.println("펫샵상품상세보기");

		Map<String, Object> map = itemService.selectOne(commandMap.getMap());
		
		mav.addObject("view", map);


		mav.setViewName("ItemView");
		return mav;
	
	}
	
	
	//펫샵후기처리
	@RequestMapping(value="/ItemComment")
	public ModelAndView ItemComment(CommandMap commandMap) throws Exception {

		System.out.println("펫샵후기처리");
		Map<String, Object> map = itemReviewService.insert(commandMap.getMap());
	
		mav.addObject("in", map);
		mav.setViewName("ItemComment");
		return mav;
	}
	
	
	//펫샵상품후기상세보기
	@RequestMapping(value="/ItemCommentView")
	public ModelAndView ItemCommentView(CommandMap commandMap) throws Exception {

		System.out.println("펫샵상품후기상세보기");
		Map<String, Object> map = itemReviewService.selectOne(commandMap.getMap());
		
		mav.addObject("view", map);
		mav.setViewName("ItemCommentView");
		return mav;
	}
	
	
	//펫샵상품후기수정
	@RequestMapping(value="/ItemCommentModify")
	public ModelAndView ItemCommentModify(CommandMap commandMap) throws	Exception {

		System.out.println("펫샵상품후기수정");
		Map<String, Object> map = itemReviewService.update(commandMap.getMap());
		
		mav.addObject("up", map);
		mav.setViewName("ItemCommentModify");
		return mav;
	}
	
	
	//펫샵상품후기삭제
	@RequestMapping(value="/ItemCommentDelete")
	public ModelAndView ItemCommentDelete(CommandMap commandMap) throws Exception {

		System.out.println("펫샵상품후기삭제");
		Map<String, Object> map = itemReviewService.delete(commandMap.getMap());
		
		mav.addObject("del", map);
		mav.setViewName("ItemCommentDelete");
		return mav;
	}
	
}
