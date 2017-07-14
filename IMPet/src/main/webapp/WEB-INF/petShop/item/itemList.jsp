<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>펫샵상품리스트</title>
</head>
<style>
	.main_itemlist {clear:both; width:100%; height:auto; overflow:hidden; }
	.main_itemlist .item-cont {width:  1125px;    height: auto;    margin: 0 auto; }
	.main_itemlist .item-cont dl {float:left; width:281px;}
	.main_itemlist .item-cont dl dt {width:250px; height:250px; border:1px solid #ececec; box-sizing:border-box;     margin: 0 auto;}
	.main_itemlist .item-cont dl dt img {width:100%;}
	.main_itemlist .item-cont dl dd {width:250px; height:75px;     margin: 0 auto;}
	.main_itemlist .item-cont dl dd ul {margin: 5px 0 5px 10px; padding: 0px !important;}
	.main_itemlist .item-cont dl dd ul li.prd-name {list-style:none; color:#7d7d7d; line-height:20px; width:100%; height:55px; /* overflow:hidden; */ }
	.main_itemlist .item-cont dl dd ul li.prd-price {width:100%; height:20px; position:relative;list-style:none; text-align:right;}
	.main_itemlist .item-cont dl:nth-child(4n){width:250px !important;}


</style>


<body>

	B &nbsp;E &nbsp;S &nbsp;T &nbsp;&nbsp;&nbsp;&nbsp;I  &nbsp;T &nbsp; E  &nbsp;M
	<c:forEach var="bestList" items="${bestList}">		
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
		
			<br/>
	<br/>
	<br/>
	I &nbsp;T &nbsp;E &nbsp;M
	<div class="main_itemlist">	
	
		<c:forEach var="items" items="${itemList}">
				<div class="item-cont">
				 	<dl class="item-list">
						<dt class="thumb"><a href="/IMPet/PetShop/ItemView?ITEM_NO=${items.ITEM_NO}"><img class="item_image" src="/IMPet/resources/image/itemImg/${items.ITEM_IMG}" alt="상품 섬네일" title="${items.ITEM_NAME}"></a></dt>
						<dd>
							<ul>
								<li class="prd-name">${items.ITEM_NAME}</li>
								<li class="prd-price">${items.ITEM_PRICE} 원	</li>
							</ul>
						</dd>
					</dl>
				</div>
		</c:forEach>
	</div>
</body>
</html>