<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>펫샵메인</title>
</head>
<style>
	.main_itemlist {clear:both; width:100%; height:auto; overflow:hidden; padding-top:30px; }
	.main_itemlist .item-cont {width:  1125px;    height: auto;    margin: 0 auto; }
	.main_itemlist .item-cont dl {float:left; width:281px;}
	.main_itemlist .item-cont dl dt {width:250px; height:250px; border:1px solid #ececec; box-sizing:border-box;     margin: 0 auto;}
	.main_itemlist .item-cont dl dt img {width:100%;}
	.main_itemlist .item-cont dl dd {width:250px; height:75px;     margin: 0 auto;}
	.main_itemlist .item-cont dl dd ul {margin: 5px 0 5px 10px; padding: 0px !important;}
	.main_itemlist .item-cont dl dd ul li.prd-name {list-style:none; color:#7d7d7d; line-height:20px; width:100%; height:55px; /* overflow:hidden; */ }
	.main_itemlist .item-cont dl dd ul li.prd-price {width:100%; height:20px; position:relative;list-style:none;}
	.main_itemlist .item-cont dl:nth-child(4n){width:250px !important;}


</style>


<script src="<c:url value='/resources/JQuery/tabs_old.js'/>" charset="utf-8"></script>
<body>

펫샵메인

<br/><br/><br/><br/><br/>

<input value="상품리스트" type="button" onclick="location.href='/IMPet/PetShop/ItemList'"/>
	<div class="main_itemlist">
	
		<c:forEach var="bestItems" items="${bestItems}">
				<div class="item-cont">
				 	<dl class="item-list">
						<dt class="thumb"><a href="/IMPet/PetShop/ItemList"><img class="item_image" src="/IMPet/resources/image/itemImg/${bestItems.ITEM_IMG}" alt="상품 섬네일" title="${bestItems.ITEM_NAME}"></a></dt>
						<dd>
							<ul>
								<li class="prd-name">${bestItems.ITEM_NAME}</li>
								<li class="prd-price">${bestItems.ITEM_PRICE} 원</li>
							</ul>
						</dd>
					</dl>
				</div>
		</c:forEach>
		
	</div>

</body>
</html>