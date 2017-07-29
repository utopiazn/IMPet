<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">


function ajaxComment(){	
	
	  
	var obj =document.jform1;
	//alert(obj.comment.value); 	 

	
	//alert(page);  
	var dataList =
	{ 
		"GALLERYCOMMENT_CONTENT" :obj.comment.value,
		"GALLERY_NO" :obj.GALLERY_NO.value
	}	

	var url1 = "/IMPet/Community/GalleryComment"; 
	
    $.ajax({    
     
    	type : "POST",
        url : url1,
        data : dataList,
        dataType : "text",      
        
        error : function() {
      	  
      		alert('오류임!');     	
        },
       
        success : function(data) {  
      		 $('#ContextGallery').html(data);          		
        }
        
      });  
     

}


function ajaxCommentDel(GALLERYCOMMENT_NO){	
	
	
	
	var  GALLERY_NO=  document.getElementById('GALLERY_NO').value;
	
 	var dataList =
	{ 
		"GALLERYCOMMENT_NO" : GALLERYCOMMENT_NO,
		"GALLERY_NO" : GALLERY_NO
		
	}	

	var url1 = "/IMPet/Community/GalleryCommentDelete"; 
	
    $.ajax({    
     
    	type : "POST",
        url : url1,
        data : dataList,
        dataType : "text",      
        
        error : function() {
      	  
      		alert('오류임!');     	
        },
       
        success : function(data) {  
      		 $('#ContextGallery').html(data);          		
        }
        
      });  
    

}
  	
</script>


<style>

	.btn1 {
    	display: inline-block;
    	vertical-align: middle;
    	text-align: center;
    	overflow: visible;
	}
	
	.btn1 {
    	width: 80px;
    	height: 70px;
	}
	
	.btn-primary1 {
    	color: #fff;
   		background-color: #2a2e33;
    	border-color: #2a2e33;
	}
	
	button {
  		cursor: pointer;
	}
	
	* html .clear{height:0;}
	.clear{display:block;}
	.clear-both{clear:both;}
	.select{color:red;}
	.inner{width: 895px; margin: 0 auto; }
	.img{text-align: left; }
	.comment td{text-align: center; vertical-align: middle; font-size: 12px; padding: 5px 0px; border-bottom: 1px dotted #e1e1e1; }
	.comment th{font-size: 12px; padding: 5px 0px; border-top: 1px dotted #e1e1e1; border-bottom: 1px dotted #e1e1e1; background: #f2f2f2;} 
	.link{text-align: left; border-bottom: 1px solid #e1e1e1; width: 885px; margin: 0 auto;}
	
</style>



<div id="wrapper">
<div id="page-wrapper">

	<!-- 코멘트 달기 -->
	<div class="inner" align="center">

	
		<form name="jform1" method="post" style="width: 100%;">
			<input type="hidden" id ="GALLERY_NO"  value="${GALLERY_NO}">
			
	 		<!-- 로그인전 -->
			<c:if test="${sessionScope.member_ID == null}">
	        	<input type="text" style="width: 100%; height: 55px; margin-bottom: 3%;" value="로그인 후에  댓글 작성이 가능합니다." readonly="readonly"/>
		    </c:if>	
			
			<!-- 로그인후 -->
			<c:if test="${sessionScope.member_ID != null}">
				<div class="GALLERYCOMMENT_CONTENT" style="width: 100%;" align="center">
					<div style="clear: both;text-align: left; position: relative; margin-bottom: 3%;">
						<textarea id="comment" name="comment" style="height: 65px; width: 89%;" placeholder="내용을 입력하세요" ></textarea>
						<button type="button"  class="btn1 btn-primary1" onclick="ajaxComment();" style="float: right;">입력</button>
					</div>
				</div>
			</c:if>

			<table class="comment" style="margin-bottom:15px; width:100%;">
				<colgroup>
					<col width="5%">
					<col width="">
					<col width="15%">
					<col width="15%">
					<col width="5%">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">상품평</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일</th>
						<th scope="col">삭제</th>
					</tr>
				</thead>
									 
				<c:forEach var="comment" items="${commentList}" varStatus="stat">
					
					<!-- <p class="review_num">댓글 수 <strong>1</strong></p> -->
					<tr>
						<td>${comment.GALLERYCOMMENT_NO }</td>
						<td style="text-align: left !important; " class="content">${comment.GALLERYCOMMENT_CONTENT}
							<%-- <input type="hidden" id="content" value="${comment.RNUM }"> --%>
						</td>
						<td >${comment.MEMBER_ID}</td>
						<td >${comment.GALLERYCOMMENT_DATE}</td>
						<td style="text-align: center; ">
							<c:if test="${member_ID == comment.MEMBER_ID}">
								<a href="javascript:ajaxCommentDel( ${comment.GALLERYCOMMENT_NO});" style="text-decoration: none; color:black;">
									<img src="/IMPet/resources/image/review/review_delete.png">
								</a>
							</c:if>
						</td>
					</tr>			
				</c:forEach>
			</table>
		</form>
	</div>
</div>
</div>

