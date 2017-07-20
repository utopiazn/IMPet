<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>

	<meta charset="UTF-8">
	<title>tab example</title>

	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="/IMPet/resources/css/gallery/slider.css">



<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
  
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
		
		
	//	var Txt =${TxT02};
	//	$("#dd").html(Txt); 
		
/* 		var index1 = index+1;
		var index_0=0;
		var index_0=1;
		var index_0=2;
		var index_0=3;
		var index_0=4;
		//alert(index1); 
	  	
		if(index1==1){
		
			alert(11); 
			Txt =${TxT01};
			$("#dd").html(Txt);
		}else if(index1==2){
			alert(22); 
			Txt =${TxT02};
			$("#dd").html(Txt);
		}else if(index1==3){
			alert(33); 
			Txt =${TxT03};
			$("#dd").html(Txt);
		}else if(index1==4){
			alert(44); 
		
			Txt =${TxT04};
			$("#dd").html(Txt);
		
		}else if(index1==5){
			alert(55); 
			Txt =${TxT05};
			$("#dd").html(Txt);
		} */
			 
		//$("#dd").html(Txt);

 		
	}



</script>

  
</head>

<body>


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

</div>
<br/>
<br/>
	<label  id="dd">${TxT01}</label>	

<br/><br/><br/>	

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script src="/IMPet/resources/JQuery/gallery/slider.js"></script> 


</body>
</html>