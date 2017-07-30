<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">





	<c:if test="${sessionScope.member_ID ne null }">
			<div align="right" style="margin-right: 2%;">
				<input value="글쓰기" class="button2" type="button" onclick="ajaxgalleryForm();"/>
			</div>
	</c:if>		
	
	
	
	
<div class="sub_sps_sch"    style=" margin-left: 1.105%;  margin-right: 1.6%;">
	<form  name="jform" action="" method="post" style="margin: 10px;" >
		<fieldset>
			
			<legend>검색창</legend>
			
			<div class="select-box">
				<label for="">${SelectName}</label>
				<select name="key" class="select-cus">
					<option value="0" <c:if test="${Key eq 0 }"> selected="selected"</c:if> >전체</option>
					<option value="1" <c:if test="${Key eq 1 }"> selected="selected"</c:if> >제목</option>
					<option value="2" <c:if test="${Key eq 2 }"> selected="selected"</c:if> >작성자</option>
				</select>
			</div>
			
			<div class="search_box">
				<input type="text" name="search_name" value="${Search_name }"  id="stx" class="search_name frm_input" size="15" maxlength="20" placeholder="검색어를 입력하세요" title="검색어를 입력하는 요소">
				<input type="submit" value="검색" class="btn_submit btn_submit_" title="검색을 누르는 버튼" >
			</div>
			
		</fieldset>
	</form>
</div>

<c:if test="${ listAllCount eq 0 }">
	검색 결과가 없습니다.
</c:if>	
	
<div class="search-results pen-grid" style="padding-bottom: 0px;margin-top: 5px;" >

	
	<c:forEach var="itemList" items="${listAll}"  varStatus="stat">
	
		
	 <div class="single-pen" data-slug-hash="aOBgpj" style="width: 31%;   height: 31%;"  >
	
		<div class="iframe-wrap loaded">
		
			<a href="javascript:GalleryView(${itemList.GALLERY_NO});" class="cover-link">
					<img alt="s2" src="/IMPet/resources/image/gallery/${itemList.MAINIMAGE}" width="100%" height="100%" >	
			</a>			
	
			
		</div>
			
		<div class="meta"  style="padding-left: 13px;">
			
			<h3 class="item-title">
				제목:  ${itemList.GALLERY_SUBJECT} 
				
			</h3>
			
			<div class="user-and-stats">
			
				<div class="user">
			
			  	<a class="username">
			    		작성자 :<span>${itemList.MEMBER_NICKNAME}</span>
			 	 </a>
			</div>
			
			<div class="stats">
			
				<a class="single-stat views">
				
					${itemList.GALLERY_COUNT}				
					<img  src="/IMPet/resources/image/gallery/view.png" width="17px" height="12px" >
				
			  	</a>
			
			    <a class="single-stat comments">
			    	${itemList.GALLERY_NUM}
			    	<img  src="/IMPet/resources/image/gallery/comment.png" width="17px" height="12px" >
			    </a>
			
			
			</div>
			
		  </div>
		
		</div>
	
	</div>	
	
	</c:forEach>
	
	
					
</div>	

<div class="paging">			
	${pagingHtml} 
</div>

