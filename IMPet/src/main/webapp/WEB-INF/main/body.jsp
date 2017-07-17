<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 이미지슬라이드 -->
<link href="/IMPet/resources/css/flexslider.css" rel="stylesheet" style="text/css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="resources/JQuery/jquery.flexslider.js" charset="utf-8"></script>


<script type="text/javascript">
$(window).load(function() {
	  $('.flexslider').flexslider({
	    /* animation: "slide" */
	  });
	});
	
function openWin(){  
    window.open("/IMPet/Egg", "egg", "width=800, height=700" );  
}  
</script>
<!-- 이미지슬라이드 -->

<div align="center">
	
	
	<div class="flexslider" style="width: 60%; height: 30%; margin:5 20%;">
	
	<ul class="slides" style="width: 100%; height: 100%">
	    <li>
			<iframe id="s1" width="100%" height="600"
			 	src="https://www.youtube.com/embed/jtGRV87bZGI?
			 	autohide=1&autoplay=0&rel=0&controls=0&
			 	disablekb=1&showinfo=0&vq=hd720&loop=100&mute=1">
			</iframe>
	    </li>
	    <li>
			<img alt="s2" src="/IMPet/resources/image/main/main1.png" style="width: 100%; height: 600px">
	    </li>
	    <li>
			<img alt="s4" src="/IMPet/resources/image/main/main2.png" style="width: 100%; height: 600px">
	    </li>
		<li>
			<iframe id="s3" width="100%" height="600"
			 	src="https://www.youtube.com/embed/Coo3gZv7U0U?
			 	autohide=1&autoplay=0&rel=0&controls=0&
			 	disablekb=1&showinfo=0&vq=hd720&loop=10&mute=1">
			</iframe>
	    </li>
	    
	    <li>
			<iframe id="s5" width="100%" height="600"
			 	src="https://www.youtube.com/embed/ay7so8bf348?
			 	autohide=1&autoplay=0&rel=0&controls=0&
			 	disablekb=1&showinfo=0&vq=hd720&loop=10&mute=1">
			</iframe>	
		</li>
	
	  </ul>
	</div>
	<div style="float: left;">
	<a href="javascript:openWin();">_</a>
	</div>
	<div style="width:49%; float: left;">
	<img alt="s4" src="/IMPet/resources/image/main/main2.png" style="width: 100%; height: 300px">
	</div>
	<div style="width:49%; float: right;">
		<c:forEach var="bestList" items="${bestList}" begin="0" end="2">		
				<div class="item-cont">
					<dl class="item-list">
						<dt class="thumb">
							<a href="/IMPet/PetShop/ItemView?ITEM_NO=${bestList.ITEM_NO}"><img
								class="item_image"
								src="/IMPet/resources/image/itemImg/${bestList.ITEM_IMG}"
								alt="상품 섬네일" title="${bestList.ITEM_NAME}"></a>
						</dt>
						<dd>
							<ul>
								<li class="prd-name">${bestList.ITEM_NAME}</li>
								<li class="prd-price">${bestList.ITEM_PRICE}원</li>
							</ul>
						</dd>
					</dl>
				</div>
		</c:forEach>
	</div>
	
</div>