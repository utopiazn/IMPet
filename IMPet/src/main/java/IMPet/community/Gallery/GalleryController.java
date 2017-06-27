package IMPet.community.Gallery;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping(value="/Community")
public class GalleryController {
	
	
	ModelAndView mav = new ModelAndView();
	
	
	//커뮤니티 갤러리 리스트
	@RequestMapping(value="/GalleryList")
	public ModelAndView GalleryList(){


		System.out.println("커뮤니티 갤러리 리스트");

		
		mav.setViewName("GalleryList");
		return mav;
	}
	
	
	//갤러리  상세보기
	@RequestMapping(value="/GalleryView")
	public ModelAndView GalleryView(){


		System.out.println("갤러리  상세보기");

		
		mav.setViewName("GalleryView");
		return mav;
	}


	//갤러리 추가폼
	@RequestMapping(value="/GalleryForm")
	public ModelAndView GalleryForm(){


		System.out.println("갤러리 추가폼");

		
		mav.setViewName("GalleryForm");
		return mav;
	}



	//갤러리 추가 처리
	@RequestMapping(value="/GalleryInsert")
	public ModelAndView GalleryInsert(){


		System.out.println("갤러리 추가 처리");

		//상세보기로 이동
		mav.setViewName("redirect:GalleryList");
		return mav;
	}
	
	//갤러리 수정폼
	@RequestMapping(value="/GalleryModifyForm")
	public ModelAndView GalleryModifyForm(){


		System.out.println("갤러리 수정폼");

		mav.setViewName("GalleryModifyForm");
		return mav;
	}
	
	
	//갤러리 수정 처리
	@RequestMapping(value="/GalleryModify")
	public ModelAndView GalleryModify(){


		System.out.println("갤러리 수정 처리");

		//상세보기로 이동
		mav.setViewName("GalleryView");
		
		return mav;
	}

/*	//갤러리 삭제폼
	@RequestMapping(value="/GalleryDeleteForm")
	public ModelAndView GalleryDeleteForm(){


		System.out.println("갤러리 삭제폼");

		mav.setViewName("GalleryDeleteForm");
	
		return mav;
	}
*/



	//갤러리 삭제 처리
	@RequestMapping(value="/GalleryDelete")
	public ModelAndView GalleryDelete(){


		System.out.println("갤러리 삭제 처리");

		mav.setViewName("GalleryList");
	
		return mav;
	}
	
	
	//갤러리 댓글
	@RequestMapping(value="/GalleryComment")
	public ModelAndView GalleryComment(){


		System.out.println("갤러리 댓글");

		//상세보기
		mav.setViewName("GalleryView");
	
		return mav;
	}

	//갤러리 댓글 삭제
	@RequestMapping(value="/GalleryCommentDelete")
	public ModelAndView GalleryCommentDelete(){


		System.out.println("갤러리 삭제 처리");

		//상세 보기
		mav.setViewName("GalleryView");
	
		return mav;
	}





	
}
