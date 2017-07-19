package IMPet.community.gallery;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller 
@RequestMapping(value="/Community")
public class GalleryController {
	
	 
	
	//커뮤니티 갤러리 리스트
	@RequestMapping(value="/GalleryList")
	public ModelAndView GalleryList(){

		ModelAndView mav = new ModelAndView();
		

		System.out.println("커뮤니티 갤러리 리스트");

		
		mav.setViewName("GalleryList");
		return mav;
	}
	
	//커뮤니티 갤러리 리스트 관리자용
	@RequestMapping(value="/AdminGalleryList")
	public ModelAndView GalleryListAdmin(){


		ModelAndView mav = new ModelAndView();
		
		System.out.println("커뮤니티 갤러리 리스트");
		
		//관리자페이지 통합코드
		int adminCode = 10;
		mav.addObject("adminCode", adminCode);

		mav.setViewName("AdminPage");
		return mav;
	}
	
	
	
	//갤러리  상세보기
	@RequestMapping(value="/GalleryView")
	public ModelAndView GalleryView(){


		ModelAndView mav = new ModelAndView();
		
		System.out.println("갤러리  상세보기");

		
		
		String txt01="나와라1111111";
		String txt02="나와라!22222";
		String txt03="나와라!33333";
		String txt04="나와라!4444";
		String txt05="나와라!55555";
		
		
		
		mav.addObject("TxT01", txt01);
		mav.addObject("TxT02", txt02);
		mav.addObject("TxT03", txt03);
		mav.addObject("TxT04", txt04);
		mav.addObject("TxT05", txt05);
	
		
		
		mav.setViewName("GalleryView");
		return mav;
	}


	//갤러리 추가폼
	@RequestMapping(value="/GalleryForm")
	public ModelAndView GalleryForm(){


		ModelAndView mav = new ModelAndView();
		
		System.out.println("갤러리 추가폼");

		
		mav.setViewName("GalleryForm");
		return mav;
	}



	//갤러리 추가 처리
	@RequestMapping(value="/GalleryInsert")
	public ModelAndView GalleryInsert(){



		ModelAndView mav = new ModelAndView();
		System.out.println("갤러리 추가 처리");

		//상세보기로 이동
		mav.setViewName("redirect:GalleryList");
		return mav;
	}
	
	//갤러리 수정폼
	@RequestMapping(value="/GalleryModifyForm")
	public ModelAndView GalleryModifyForm(){


		ModelAndView mav = new ModelAndView();
		
		System.out.println("갤러리 수정폼");

		mav.setViewName("GalleryModifyForm");
		return mav;
	}
	
	
	//갤러리 수정 처리
	@RequestMapping(value="/GalleryModify")
	public ModelAndView GalleryModify(){


		ModelAndView mav = new ModelAndView();
		
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


		ModelAndView mav = new ModelAndView();
		
		System.out.println("갤러리 삭제 처리");

		mav.setViewName("GalleryList");
	
		return mav;
	}
	
	
	//갤러리 댓글
	@RequestMapping(value="/GalleryComment")
	public ModelAndView GalleryComment(){


		ModelAndView mav = new ModelAndView();
		
		System.out.println("갤러리 댓글");

		//상세보기
		mav.setViewName("GalleryView");
	
		return mav;
	}

	//갤러리 댓글 삭제
	@RequestMapping(value="/GalleryCommentDelete")
	public ModelAndView GalleryCommentDelete(){


		ModelAndView mav = new ModelAndView();
		
		System.out.println("갤러리 삭제 처리");

		//상세 보기
		mav.setViewName("GalleryView");
	
		return mav;
	}





	
}
