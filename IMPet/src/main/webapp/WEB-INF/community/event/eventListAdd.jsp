<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



	<c:if test="${sessionScope.member_ID ne null }">
		<div align="right">
			<input value="+ Add" class="button4 btn-4" type="button" onclick="ajaxeventForm();"/>
		</div>
	</c:if>		





<div class="search-results pen-grid" style="padding-bottom: 0px;margin-top: 5px;" >

	
	<c:forEach var="Event" items="${listAll}"  varStatus="stat">
	
		
	 <div class="single-pen" data-slug-hash="aOBgpj" style="width: 31%;   height: 31%;"  >
	
		<div class="iframe-wrap loaded">
		
			<a href="javascript:EventView(${Event.EVENT_NO});" class="cover-link">
					<img alt="s2" src="/IMPet/resources/image/event/${Event.EVENT_IMG}" width="100%" height="100%" >	
			</a>			
	
			
		</div>
			
		<div class="meta">
			
			<h3 class="item-title">
				제목:   ${Event.EVENT_SUBJECT}
				
			</h3>
			
			<div class="user-and-stats">
			
				<div class="user">
			
			  	<a class="username" href="/tailofmoon">
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










		

