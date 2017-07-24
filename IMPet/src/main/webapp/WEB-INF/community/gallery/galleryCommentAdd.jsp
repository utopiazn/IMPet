<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<input type ="hidden" id = "GALLERY_NO" value="${GALLERY_NO}"/>

	${GALLERY_NO }

<c:choose>



	<c:when test="${GALLERY_NUM == 0}">
	
		댓글 정보가 없습니다.
	
	</c:when>
	
	<c:otherwise>
		
		<c:forEach var="comment" items="${commentList}">
					
		
			
			<li class="compost">
			
				<div class="combody">
					<p>${comment.GALLERYCOMMENT_CONTENT }</p>
				</div>
				
				<p class="cominfo">
					by&nbsp; ${comment.MEMBER_ID}　&nbsp;&nbsp;  	${comment.GALLERYCOMMENT_DATE} &nbsp;&nbsp;&nbsp;
					<a href="javascript:ajaxCommentDel( ${comment.GALLERYCOMMENT_NO});" >
					
					[삭제]</a>
					
				</p>
			</li>
			
		</c:forEach>
	
	
	
	</c:otherwise>
	




</c:choose>
