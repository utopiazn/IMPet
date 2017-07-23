package IMPet.community.gallery;




import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import IMPet.module.CommandMap;

import java.util.StringTokenizer;

@Controller 
@RequestMapping(value="/Community")
public class GalleryController {
	
	 
	@Resource(name="galleryService")
	private GalleryService galleryService;
	
	
	//커뮤니티 갤러리 리스트
	@RequestMapping(value="/GalleryList")
	public ModelAndView GalleryList(CommandMap commandMap) throws Exception{

		ModelAndView mav = new ModelAndView();
		
		
		String pagingHtml =pagingHtml(commandMap,1);
		commandMap.MapInfoList();

		
		
		List<Map<String,Object>> listAll = galleryService.selectRangeAll(commandMap.getMap());		
		
		
		mav.addObject("listAll", listAll);	
		mav.addObject("pagingHtml", pagingHtml);	
		
		
		
		imageSplitMain(listAll);
		
		
		//System.out.println(listAll.get(0));
		
		System.out.println("커뮤니티 갤러리 리스트");

		
		mav.setViewName("GalleryList");
		return mav;
	}
	
	private void imageSplitMain(List<Map<String,Object>> listAll) throws Exception{
	
		
		for(int i=0; i<listAll.size();i++){
			
			
			String str = listAll.get(i).get("GALLERY_IMG").toString();
			
			System.out.println(i+":"+str);
			
			String mainImage =imageSplit(str,1,"/");
			
			listAll.get(i).put("MAINIMAGE", mainImage);
			
			System.out.println(i+":"+mainImage);
			
		}
		
	}
	
	public static String imageSplit(String strImage,int idx,String Tokenizer) throws Exception {
		
		if(strImage == null || strImage.equals("")){
			
			//System.out.println("이미지 자체가 없음"+strImage);
			
			return "";
		}
		
		StringTokenizer values = new StringTokenizer(strImage+Tokenizer,Tokenizer);
		
		int i =1;
		
		while(values.hasMoreElements()){
						
			String image =values.nextToken();
					
			//System.out.println( i+ ":"+ image);
			
			if(i== idx){
				return image;
			}
			
			/*switch (i) {
			case 1:	this.image_01 =image; break;
			case 2:	this.image_02 =image; break;
			case 3:	this.image_03 =image; break;
			case 4:	this.image_04 =image; break;
			case 5:	this.image_05 =image; break;
			default:
				break;
			}*/			
			i++;
		}
		
		return "";
		
	}
	
	private String pagingHtml(CommandMap commandMap,int pageNo) throws Exception{		
		
		
		int blockCount =6;
		
		
		
		
		
		int totalCount=  galleryService.selectGalleryCount();	
		
		int totalPage = (int) Math.ceil((double) totalCount / blockCount);		
		String PAGIN = String.valueOf(blockCount);	
		String PAGINGNO = String.valueOf(pageNo);		
		commandMap.put("PAGING",PAGIN); //페이지의 리스트 수
		commandMap.put("PAGINGNO",PAGINGNO); // 페이지  몇번째인지 	
		
		
		StringBuffer pagingHtml = new StringBuffer();
		
		for(int i=1; i<=totalPage;i++ ){			
			
			if(i==pageNo){
				
				pagingHtml.append("<strong>");
				pagingHtml.append(i);						
				pagingHtml.append("</strong>  ");
			
			}else{
				
				pagingHtml.append(" <a class='page' href='javascript:ajaxPageView("+i+");'>" );			
				pagingHtml.append(i);				
				pagingHtml.append("</a> ");
				
			}
			
		}		
		return pagingHtml.toString();
		
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
	public ModelAndView GalleryView(CommandMap commandMap) throws Exception{


		ModelAndView mav = new ModelAndView();
		System.out.println("갤러리  상세보기");
		
		String url = "community/gallery/galleryView";
		
		commandMap.MapInfoList();
		
		//상세보기 수 증가.
		galleryService.addViewNum(commandMap.getMap());
		
		
		//상세 정보 가져오기
		Map<String,Object>  view = galleryService.selectOne(commandMap.getMap());			
		
		
		System.out.println(view);

		String strImage = view.get("GALLERY_IMG").toString();
		String strTxt = view.get("GALLERY_CONTENT").toString();
		
		
			
		
		int imageCount= 0;
		int txtCount = 0;		
		
		
		if(!strImage.equals("")){
			
			StringTokenizer valuesImage = new StringTokenizer(strImage+"/","/");	
			imageCount= valuesImage.countTokens();	
		
		}
		
	
		
		if(!strTxt.equals("")){
			
			StringTokenizer valuesTxt = new StringTokenizer(strTxt+"##","##");	
			txtCount = valuesTxt.countTokens();
			
		}
		
		
		
				
		System.out.println("imageCount:"+imageCount);
		System.out.println("txtCount:"+txtCount);

		
		
		String image01=imageSplit(strImage,1,"/");
		String image02=imageSplit(strImage,2,"/");
		String image03=imageSplit(strImage,3,"/");
		String image04=imageSplit(strImage,4,"/");
		String image05=imageSplit(strImage,5,"/");		
		
		String txt01=imageSplit(strTxt,1,"##");
		String txt02=imageSplit(strTxt,2,"##");
		String txt03=imageSplit(strTxt,3,"##");
		String txt04=imageSplit(strTxt,4,"##");
		String txt05=imageSplit(strTxt,5,"##");
		
		
		
		
		System.out.println("txt01:"+txt01);

		System.out.println("txt02:"+txt02);

		System.out.println("txt03:"+txt03);

		System.out.println("txt04:"+txt04);

		System.out.println("txt05:"+txt05);
		
		
		mav.addObject("Image01", image01);
		mav.addObject("Image02", image02);
		mav.addObject("Image03", image03);
		mav.addObject("Image04", image04);
		mav.addObject("Image05", image05);
	
		
		
		mav.addObject("TxT01", txt01);
		mav.addObject("TxT02", txt02);
		mav.addObject("TxT03", txt03);
		mav.addObject("TxT04", txt04);
		mav.addObject("TxT05", txt05);
	
		
		//댓글 리스트
		
		String gallery_NO = view.get("GALLERY_NO").toString();
		
		System.out.println(gallery_NO);
		
		
		List<Map<String,Object>> commentList =commentList(Integer.parseInt(gallery_NO));
		mav.addObject("commentList", commentList);
		
		
		mav.setViewName(url);
		return mav;
	}

	public List<Map<String,Object>>  commentList(int gallery_NO) throws Exception{
		
		CommandMap commandMap = new CommandMap() ;
		commandMap.put("GALLERY_NO",gallery_NO);
		
		List<Map<String,Object>> listAll = galleryService.selectCommemtList(commandMap.getMap());
		
		
		System.out.println(listAll.get(0));
		return listAll;
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



	

	//갤러리 정보 페이지 리스트
	@RequestMapping(value="/galleryPageList")
	public ModelAndView galleryPageList(CommandMap commandMap) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		System.out.println("이벤트 정보 페이지 리스트");

		String url = "community/gallery/galleryListAdd";
		
	
		
		int page =  Integer.parseInt( commandMap.get("PAGE").toString());
		
		String pagingHtml = pagingHtml(commandMap,page);
		commandMap.MapInfoList();
		
		
		
		
		
		
		
		
		List<Map<String,Object>> listAll = galleryService.selectRangeAll(commandMap.getMap());		
		
		
		mav.addObject("listAll", listAll);	
		mav.addObject("pagingHtml", pagingHtml);	
		
		
		
		imageSplitMain(listAll);
		
		

		mav.setViewName(url);	
		
		return mav;
	}


	


	
}
