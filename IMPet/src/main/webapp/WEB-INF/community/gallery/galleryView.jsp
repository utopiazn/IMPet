<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- <link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
 -->
<script type="text/javascript">


	function ImageIndex(index){
		
		
		//alert(index); 
		
		
		var Txt = "데이터가 없습니다.";
		
		if(index==1){
			Txt = "${TxT01}";
			
		}else if(index==2){

			Txt = "${TxT02}";
			
		}else if(index==3){
			
			Txt = "${TxT03}";
			
		}else if(index==4){
			
			Txt = "${TxT04}";
			
		}else if(index==5){
			
			Txt = "${TxT05}";
			
		}
		
		$("#dd").html(Txt);
		

 		
	}
	
	


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

.button2 {
  background: #333;
  color: #ccc;
  width: 100px;
  height: 30px;
  border: 0;
  font-size: 15px;
  border-radius: 4px;
  font-family: 'Noto sans KR', sans-serif;
  -webkit-transition: .6s;
  transition: .6s;
  overflow: hidden;
}
.button:focus2 {
  outline: 0;
}
.button2:before {
  content: '';
  display: block;
  position: absolute;
  background: rgba(255, 255, 255, 0.5);
  width: 60px;
  height: 100%;
  left: 0;
  top: 0;
  opacity: .5;
  -webkit-filter: blur(30px);
          filter: blur(30px);
  -webkit-transform: translateX(-100px) skewX(-15deg);
          transform: translateX(-100px) skewX(-15deg);
}
.button2:after {
  content: '';
  display: block;
  position: absolute;
  background: rgba(255, 255, 255, 0.2);
  width: 30px;
  height: 100%;
  left: 30px;
  top: 0;
  opacity: 0;
  -webkit-filter: blur(5px);
          filter: blur(5px);
  -webkit-transform: translateX(-100px) skewX(-15deg);
          transform: translateX(-100px) skewX(-15deg);
}
.button2:hover {
  background: #727070;
  cursor: pointer;
}
.button2:hover:before {
  -webkit-transform: translateX(300px) skewX(-15deg);
          transform: translateX(300px) skewX(-15deg);
  opacity: 0.6;
  -webkit-transition: .7s;
  transition: .7s;
}
.button2:hover:after {
  -webkit-transform: translateX(300px) skewX(-15deg);
          transform: translateX(300px) skewX(-15deg);
  opacity: 1;
  -webkit-transition: .7s;
  transition: .7s;
}


#comments ul {
    list-style: none;
    padding-left: 0;
}

.under_content .box {
    clear: both;
    margin-bottom: 2.5em;
}

.accent_header, h2.under_content {
    color: #000000;
    border-top: 2px solid #000000;
    border-bottom: 2px solid #000000;
}
under_content h2 {
    font-size: 1.2em;
    padding: 9px 0 8px;
    margin-bottom: 20px;
}

.accent_header {
    clear: both;
    font-weight: bold;
    text-align: center;
    line-height: 1.4;
}

#comments ul li {
    max-width: 668px;
    margin: 10px auto 30px;
}

#comments .combody {
    background-color: #ececfa;
    padding: 20px 15px 5px;
    margin-bottom: 5px;
}


#comments p.cominfo {
    text-align: right;
    font-size: .8em;
    padding-right: 5px;
}

.box {
    overflow: hidden;
}

.under_content li, .side li {
    line-height: 1.4;
    margin-bottom: 13px;
}

.page-header {
	padding-bottom: 9px;
	margin: 40px 0 20px;
	border-bottom: 1px solid #eee
}



</style>


<h1 class="page-header"> ${view.GALLERY_SUBJECT }</h1>



<div style=" float: left; margin-left: 10%;" >
작성자 : ${view.MEMBER_NICKNAME } (${view.MEMBER_ID}) 
</div>


<div style=" float: right; margin-right: 10% " >
작성일 : ${view.GALLERY_DATE }
</div>




<div class="slide_wrap">
	<button type="button" class="btn_prev">이전</button>
	<button type="button" class="btn_next">다음</button>

	<div class="slide_area" style="width: 100%; height: 35%; " >
	
	<ul class="slide_box" style="width: 100%; height: 100%; padding-left: 0px;" >	
	
	
		<c:if test="${ Image01 ne ''}">
			<li>
				<img src="/IMPet/resources/image/gallery/${Image01}" />
			</li>
		</c:if>
		
		<c:if test="${ Image02 ne ''}">
			<li>
				<img src="/IMPet/resources/image/gallery/${Image02}"  />
			</li>
		</c:if>
		
		<c:if test="${ Image03 ne ''}">
			<li>
				<img src="/IMPet/resources/image/gallery/${Image03}"  />
			</li>
		</c:if>
		
		<c:if test="${ Image04 ne ''}">
			<li>
				<img src="/IMPet/resources/image/gallery/${Image04}" />
			</li>
		</c:if>
		
		<c:if test="${ Image05 ne ''}">
			<li>
				<img src="/IMPet/resources/image/gallery/${Image05}"  />
			</li>
		</c:if>
		
	 </ul>
	</div>
<!--   <ul class="indigator">
	  <li class="active"><a href="#">1</a></li>
	  <li><a href="#">2</a></li>
	  <li><a href="#">3</a></li>
	  <li><a href="#">4</a></li>
	  <li><a href="#">5</a></li>
  </ul>
   -->
 	<ul class="indigator2" style="padding-left: 0px;">	
 	
		<c:if test="${ Image01 ne ''}">
			<li><a href="#"><img src="/IMPet/resources/image/gallery/${Image01}" /></a></li>
		</c:if> 	
 	
 		<c:if test="${ Image02 ne ''}">
			<li><a href="#"><img src="/IMPet/resources/image/gallery/${Image02}" /></a></li>
		</c:if> 	
		
		<c:if test="${ Image03 ne ''}">
			<li><a href="#"><img src="/IMPet/resources/image/gallery/${Image03}" /></a></li>
		</c:if> 	
 	
 		<c:if test="${ Image04 ne ''}">
			<li><a href="#"><img src="/IMPet/resources/image/gallery/${Image04}" /></a></li>
		</c:if> 	
		
		
		<c:if test="${ Image05 ne ''}">
			<li><a href="#"><img src="/IMPet/resources/image/gallery/${Image05}" /></a></li>
		</c:if> 	

	</ul>

</div>
<br/>
<br/>
	<label  id="dd">${TxT01}</label>	

<br/><br/><br/>	




<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script src="/IMPet/resources/JQuery/gallery/slider.js"></script> 


<h1 class="page-header"></h1>
<form action="/IMPet/Community/GalleryDelete"  method="post">
<div align="right" style=" width:100%; margin-top: 10px;">
	<c:if test="${sessionScope.member_ID  != null }">
		<input value="갤러리 수정" class="button2" type="button" onclick="ajaxGalleryModifyForm(${GALLERY_NO})"/>
		<input value="갤러리 삭제" class="button2" type="submit" />
		<input type="hidden" name ="GALLERY_NO"  value="${GALLERY_NO}">					
	</c:if>
	<input value="목록으로" class="button2" type="button" onclick="location.href='/IMPet/Community/GalleryList'"/>
</div>
</form>



<div id="comments" class="box">


	<form name="jform1" method="post" style="width: 100%;">
		<input type="hidden" id ="GALLERY_NO"  value="${GALLERY_NO}">
		
		<!-- 로그인전 -->
		<c:if test="${sessionScope.member_ID == null}">
        	<input type="text" style="width: 100%; height: 55px;" value="로그인 후에  댓글 작성이 가능합니다." readonly="readonly"/>
	    </c:if>	
		
		<!-- 로그인후 -->
		<c:if test="${sessionScope.member_ID != null}">
		<div class="GALLERYCOMMENT_CONTENT" style="width: 100%;" align="center">
			<div style="clear: both; text-align: left; position: relative ">
				<textarea id="comment" name="comment" style="height: 65px; width: 89%;" placeholder="내용을 입력하세요" ></textarea>
				<button type="button"  class="btn1 btn-primary1" onclick="ajaxComment();">입력</button>
				<!-- <button type="button" class="btn1 btn-primary1" onclick="ajaxComment();" style="position: absolute; right: 0px; top: 0px;">입력</button> -->
			</div>
		</div>
		
 			<%-- <h2 class="under_content accent_header">			
		
				<textarea id="comment" name="comment" cols="45" rows="8" maxlength="65525" aria-required="true" required="required"></textarea> 
						
				<input type="hidden" id ="GALLERY_NO"  value="${GALLERY_NO}"> 
				
				<button type="button"  onclick="ajaxComment();">댓글 달기</button>
			</h2> --%>
		</c:if>
	</form>	
	

	<ul>
		<div id="ContextGallery" align="center" style="width:100%;  float: left;">	
			<jsp:include page="/WEB-INF/community/gallery/galleryCommentAdd.jsp"/>	
		</div>
	</ul>
</div> 



