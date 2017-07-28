<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<br/><br/>	
		<div style="font-size: 25px; font-weight: bolder; text-align: center; width: 100%; ">
		이벤트 게시판
		<hr width="80%;" color="lightgray;" size="">
		
		</div>


<c:choose>

	<c:when test="${sessionScope.member_ID ne null }">

		<div align="right" style="margin-right: 1.4%;">
			<input value="+ Add" class="button4 btn-4" type="button" onclick="ajaxeventForm();"/>
		</div>

	</c:when>
	<c:otherwise>
		<br/>
	</c:otherwise>

</c:choose>

<div class="search-results pen-grid" style="padding-bottom: 0px;margin-top: 5px;" >

	
	<c:forEach var="Event" items="${listAll}"  varStatus="stat">
	
		
	 <div class="single-pen" data-slug-hash="aOBgpj" style="width: 31%;   height: 31%;"  >
	
		<div class="iframe-wrap loaded">
		
			<a href="javascript:EventView(${Event.EVENT_NO});" class="cover-link">
					<img alt="s2" src="/IMPet/resources/image/event/${Event.EVENT_IMG}" width="100%" height="100%" >	
			</a>			
	
			
		</div>
			
		<div class="meta"  style="padding-left: 13px;">
			
			<h3 class="item-title">
				제목:   ${Event.EVENT_SUBJECT}
				
			</h3>
			
			<div class="user-and-stats">
			
				<div class="user">
			
			  	<a class="username">
			    		이벤트 기간 :<span>${Event.EVENT_TIME}</span>
			 	 </a>
			</div>
			
			<div class="stats">
			
				<a class="single-stat views">
				
					${Event.EVENT_COUNT}				
					<img  src="/IMPet/resources/image/gallery/view.png" width="17px" height="12px" >
				
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










		

