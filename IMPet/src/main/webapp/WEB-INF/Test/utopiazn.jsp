<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>tab example</title>

	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="resources\css\gallery\slider.css">


 <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>

    <script src="resources/JQuery/gallery/slider.js"></script> 


  
</head>

<body>


<br/><br/>


<div class="slide_wrap">
	<button type="button" class="btn_prev">이전</button>
	<button type="button" class="btn_next">다음</button>

	<div class="slide_area">
	
	<ul class="slide_box">	
		<li>
			<img src="/IMPet/resources/image/dog1.jpg" />
		</li>
		
		<li>
			<img src="/IMPet/resources/image/dog1.jpg" />
	  	</li>
	  
	  	<li>
	    	<img src="/IMPet/resources/image/dog1.jpg" />
	  	</li>
	  
	  	<li>
	    	<img src="/IMPet/resources/image/dog1.jpg" />
	    </li>
	 </ul>
	</div>
  <ul class="indigator">
	  <li class="active"><a href="#">1</a></li>
	  <li><a href="#">2</a></li>
	  <li><a href="#">3</a></li>
	  <li><a href="#">4</a></li>
  </ul>
  
 
  	<ul class="indigator">	
		<li><a href="#"><img src="/IMPet/resources/image/dog1.jpg" height="100"  /></a></li>
		<li><a href="#"><img src="/IMPet/resources/image/dog1.jpg" height="100"  /></a></li>
		<li><a href="#"><img src="/IMPet/resources/image/dog1.jpg" height="100"  /></a></li>
		<li><a href="#"><img src="/IMPet/resources/image/dog1.jpg" height="100"  /></a></li>
	</ul>
</div>

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script src="resources/JQuery/gallery/slider.js"></script> 

</body>
</html>