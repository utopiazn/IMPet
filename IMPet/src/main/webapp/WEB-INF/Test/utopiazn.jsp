<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>

	<meta charset="UTF-8">
	<title>tab example</title>

	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="resources\css\gallery\slider.css">

<!-- 
 <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
   <script src="resources/JQuery/gallery/slider.js"></script> 
 -->




<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
  
<script type="text/javascript">


	function ImageIndex(index){
		
		
		alert(index); 
		
		//var obj =document.jform;	
		//obj.dd.value =  index;	
		
		$("#dd").html(index);
		
	//	document.getElementById("dd").value =22222;
		//var index2 = index;
 		
	}



</script>

  
</head>

<body>

<%-- <c:set var="imageIndex"   value="1"/>

<input type="hidden" value="${imageIndex}"/>
 --%>

<br/><br/>




<div class="slide_wrap">
	<button type="button" class="btn_prev">이전</button>
	<button type="button" class="btn_next">다음</button>

	<div class="slide_area"  >
	
	<ul class="slide_box">	
		<li>
			<img src="/IMPet/resources/image/gallery/dog1.jpg"   />
		</li>		
		<li>
			<img src="/IMPet/resources/image/gallery/dog2.jpg"   />
	  	</li>	  
	  	<li>
	    	<img src="/IMPet/resources/image/gallery/dog1.jpg"   />
	  	</li>	  
	  	<li>
	    	<img src="/IMPet/resources/image/gallery/dog2.jpg"   />
	    </li>
	    <li>
	    	<img src="/IMPet/resources/image/gallery/dog1.jpg"   />
	    </li>
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
 	<ul class="indigator2">	
		<li><a href="#"><img src="/IMPet/resources/image/gallery/dog1.jpg" /></a></li>
		<li><a href="#"><img src="/IMPet/resources/image/gallery/dog2.jpg" /></a></li>
		<li><a href="#"><img src="/IMPet/resources/image/gallery/dog1.jpg" /></a></li>
		<li><a href="#"><img src="/IMPet/resources/image/gallery/dog2.jpg" /></a></li>
		<li><a href="#"><img src="/IMPet/resources/image/gallery/dog1.jpg" /></a></li>
	</ul>
 <!-- 
  	<ul class="indigator">	
		<li><a href="#"><img src="/IMPet/resources/image/dog1.jpg" height="100"  /></a></li>
		<li><a href="#"><img src="/IMPet/resources/image/dog1.jpg" height="100"  /></a></li>
		<li><a href="#"><img src="/IMPet/resources/image/dog1.jpg" height="100"  /></a></li>
		<li><a href="#"><img src="/IMPet/resources/image/dog1.jpg" height="100"  /></a></li>
	</ul> -->
</div>


<%-- 
<c:choose>

<c:when test="${imageIndex==1}">
11111111111111111111111111111111111111111111111111
</c:when>

<c:when test="${imageIndex==2}">
22222222222222222222222222222222
</c:when>


<c:when test="${imageIndex==3}">
3333333333333333333333333333333333333
</c:when>

<c:when test="${imageIndex==4}">
44444444444444444444444444444444444444444
</c:when>
<c:when test="${imageIndex==5}">
	555555555555555555555
</c:when>

<c:otherwise>
 	내용이 없음!!!

</c:otherwise>

</c:choose>
 --%>
<form name="jform">
	<label  id="dd">dsdfssdfdsfsf</label>	
</form>	

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script src="resources/JQuery/gallery/slider.js"></script> 


</body>
</html>