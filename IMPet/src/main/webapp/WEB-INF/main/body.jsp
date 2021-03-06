<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 이미지슬라이드 -->
<link href="/IMPet/resources/css/flexslider.css" rel="stylesheet" style="text/css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="resources/JQuery/jquery.flexslider.js" charset="utf-8"></script>

<!-- 이미지슬라이드 -->

<script type="text/javascript">

$(window).load(function() {
	  $('.flexslider').flexslider({
	    animation: "slide"
	  });
});

</script>

<style>
.plus a {
text-decoration: none;
color: black;
}

.plus a:HOVER {
color: hotpink;
	
}
</style>

<div align="center">
	
	
	<div class="flexslider" style="width: 65%; height: 100%; padding-top: 10px;">
	
		<ul class="slides" style="width: 100%; height: 100%">
		 <!--    <li>
				<iframe id="s1" width="100%" height="600"
				 	src="https://www.youtube.com/embed/jtGRV87bZGI?
				 	autohide=1&autoplay=0&rel=0&controls=0&
				 	disablekb=1&showinfo=0&vq=hd720&loop=100&mute=1">
				</iframe>
		    </li> -->
		    
		    <li>
				<img alt="s2" src="/IMPet/resources/image/main/main1.png" style="width: 100%; height: 500px;">
		    </li>
		    
		    <li>
				<img alt="s4" src="/IMPet/resources/image/main/main2.png" style="width: 100%; height: 500px;">
		    </li>
	
		</ul>
	  
	</div>
	
	
	<div style="width:45%; float:left ; padding-left:1.5%; padding-right: 6%;">
		<div align="center" style="width: 100%; font-size: 16px; text-align: center;">
			<font>EVENT</font>
		</div>
		
		<div class="plus" style="width: 100%; text-align: right;">
		  <a href="/IMPet/Community/EventList"> + 더보기</a>
		</div>
		
		<div style="width:100%;" class="flexslider">
		 <ul class="slides" style="width: 100%; height: 100%">
			    <li>
					<img alt="s2" src="/IMPet/resources/image/event/eventsmall.jpg" style="width: 830px; height: 300px; cursor: pointer;" onclick="location.href='/IMPet/Community/EventList'">
			    </li>
			    <li>
					<img alt="s4" src="/IMPet/resources/image/event/eventsmall2.png" style="width: 830px; height: 300px; cursor: pointer;" onclick="location.href='/IMPet/Community/EventList'">
			    </li>
		  </ul>
		</div>
	</div>	

	<div style="width:44%;  float: left ; ">
		<div align="center" style="width: 100%; font-size: 16px; text-align:center;">
			<font>BEST ITEM</font>
		</div>
		
		<div class="plus" style="width: 100%; text-align: right;">
		  <a href="/IMPet/PetShop/Main"> + 더보기&nbsp;&nbsp;</a>
		</div>
	
		<div style="border: 1px solid lightgray; width: 100%; height: 100%; float: left;" class="flexslider">
		
		<ul class="slides"> <!-- style="margin-bottom: 70px;"  -->
		
			<li style=" height: 300px;">
				<c:forEach var="bestList" items="${bestList}" begin="0" end="2"> 		
					<div style=" width: 33%; height: 200px; float: left;" >
						<dl style="height: 100%; width:100%;">
							<dt style="height: 100%; width:100%;">
								<a href="/IMPet/PetShop/ItemView?ITEM_NO=${bestList.ITEM_NO}">
								<img class="item_image" src="/IMPet/resources/image/itemImg/${bestList.ITEM_IMG}" alt="상품 섬네일" title="${bestList.ITEM_NAME}" style="width: 100%; height:100%;"></a>
								${bestList.ITEM_NAME}<br/>
								<c:if test="${bestList.ITEM_DCPRICE != null }">
									<del>${bestList.ITEM_PRICE}원</del><br/>
									${bestList.ITEM_DCPRICE}원	
								</c:if>
								<c:if test="${bestList.ITEM_DCPRICE == null }">
									${bestList.ITEM_PRICE}원		
								</c:if>
							</dt>
								
							<%-- <dd>						
								${bestList.ITEM_NAME}<br/>
								${bestList.ITEM_PRICE}원						
							</dd> --%>
						</dl>
					</div>
				</c:forEach>
			</li>
			
			<li style=" height: 300px;">
				<c:forEach var="bestList" items="${bestList}" begin="3" end="5"> 		
					<div style=" width: 33%; height: 200px; float: left;" >
						<dl style="height: 100%; width:100%;">
							<dt style="height: 100%; width:100%;">
								<a href="/IMPet/PetShop/ItemView?ITEM_NO=${bestList.ITEM_NO}">
								<img class="item_image" src="/IMPet/resources/image/itemImg/${bestList.ITEM_IMG}" alt="상품 섬네일" title="${bestList.ITEM_NAME}" style="width: 100%; height:100%;"></a>
								${bestList.ITEM_NAME}<br/>
								<c:if test="${bestList.ITEM_DCPRICE != null }">
									<del>${bestList.ITEM_PRICE}원</del><br/>
									${bestList.ITEM_DCPRICE}원	
								</c:if>
								<c:if test="${bestList.ITEM_DCPRICE == null }">
									${bestList.ITEM_PRICE}원		
								</c:if>
								
							</dt>
								
							<%-- <dd>						
								${bestList.ITEM_NAME}<br/>
								${bestList.ITEM_PRICE}원						
							</dd> --%>
						</dl>
					</div>
				</c:forEach>
			</li>	
				<li style=" height: 300px;">
				<c:forEach var="bestList" items="${bestList}" begin="6" end="8"> 		
					<div style=" width: 33%; height: 200px; float: left;" >
						<dl style="height: 100%; width:100%;">
							<dt style="height: 100%; width:100%;">
								<a href="/IMPet/PetShop/ItemView?ITEM_NO=${bestList.ITEM_NO}">
								<img class="item_image" src="/IMPet/resources/image/itemImg/${bestList.ITEM_IMG}" alt="상품 섬네일" title="${bestList.ITEM_NAME}" style="width: 100%; height:100%;"></a>
								${bestList.ITEM_NAME}<br/>
								<c:if test="${bestList.ITEM_DCPRICE != null }">
									<del>${bestList.ITEM_PRICE}원</del><br/>
									${bestList.ITEM_DCPRICE}원	
								</c:if>
								<c:if test="${bestList.ITEM_DCPRICE == null }">
									${bestList.ITEM_PRICE}원		
								</c:if>
								
							</dt>
								
							<%-- <dd>						
								${bestList.ITEM_NAME}<br/>
								${bestList.ITEM_PRICE}원						
							</dd> --%>
						</dl>
					</div>
				</c:forEach>
			</li>
				<li style=" height: 300px;">
				<c:forEach var="bestList" items="${bestList}" begin="9" end="11"> 		
					<div style=" width: 33%; height: 200px; float: left;" >
						<dl style="height: 100%; width:100%;">
							<dt style="height: 100%; width:100%;">
								<a href="/IMPet/PetShop/ItemView?ITEM_NO=${bestList.ITEM_NO}">
								<img class="item_image" src="/IMPet/resources/image/itemImg/${bestList.ITEM_IMG}" alt="상품 섬네일" title="${bestList.ITEM_NAME}" style="width: 100%; height:100%;"></a>
								${bestList.ITEM_NAME}<br/>
								<c:if test="${bestList.ITEM_DCPRICE != null }">
									<del>${bestList.ITEM_PRICE}원</del><br/>
									${bestList.ITEM_DCPRICE}원	
								</c:if>
								<c:if test="${bestList.ITEM_DCPRICE == null }">
									${bestList.ITEM_PRICE}원		
								</c:if>
								
							</dt>
								
							<%-- <dd>						
								${bestList.ITEM_NAME}<br/>
								${bestList.ITEM_PRICE}원						
							</dd> --%>
						</dl>
					</div>
				</c:forEach>
			</li>
				<li style=" height: 300px;">
				<c:forEach var="bestList" items="${bestList}" begin="12" end="14"> 		
					<div style=" width: 33%; height: 200px; float: left;" >
						<dl style="height: 100%; width:100%;">
							<dt style="height: 100%; width:100%;">
								<a href="/IMPet/PetShop/ItemView?ITEM_NO=${bestList.ITEM_NO}">
								<img class="item_image" src="/IMPet/resources/image/itemImg/${bestList.ITEM_IMG}" alt="상품 섬네일" title="${bestList.ITEM_NAME}" style="width: 100%; height:100%;"></a>
								${bestList.ITEM_NAME}<br/>
								<c:if test="${bestList.ITEM_DCPRICE != null }">
									<del>${bestList.ITEM_PRICE}원</del><br/>
									${bestList.ITEM_DCPRICE}원	
								</c:if>
								<c:if test="${bestList.ITEM_DCPRICE == null }">
									${bestList.ITEM_PRICE}원		
								</c:if>
								
							</dt>
								
							<%-- <dd>						
								${bestList.ITEM_NAME}<br/>
								${bestList.ITEM_PRICE}원						
							</dd> --%>
						</dl>
					</div>
				</c:forEach>
			</li>
		
		</ul>
		</div>
	
	</div>
	
	
</div>