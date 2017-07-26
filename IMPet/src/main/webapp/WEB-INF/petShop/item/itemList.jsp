<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>펫샵상품리스트</title>
</head>
<style>
	.main_itemlist {clear:both; width:100%; height:auto; overflow:hidden;    padding-bottom: 20px;
	 }
	.main_itemlist .item-cont {width:  1125px;    height: auto;    margin: 0 auto; }
	.main_itemlist .item-cont dl {float:left; width:281px;}
	.main_itemlist .item-cont dl dt {width:250px; height:250px; border:1px solid #ececec; box-sizing:border-box;     margin: 0 auto;}
	.main_itemlist .item-cont dl dt img {width:100%;}
	.main_itemlist .item-cont dl dd {width:250px; height:75px;     margin: 0 auto;}
	.main_itemlist .item-cont dl dd ul {margin: 5px 0 5px 10px; padding: 0px !important;}
	.main_itemlist .item-cont dl dd ul li.prd-name {list-style:none; color:#7d7d7d; line-height:20px; width:100%; height:55px; /* overflow:hidden; */ }
	.main_itemlist .item-cont dl dd ul li.prd-price {width:100%; height:20px; position:relative;list-style:none; text-align:right;}
	.main_itemlist .item-cont dl:nth-child(4n){width:250px !important;}
	.main_itemlist .section-head { width:100%;   position: relative;    text-align: center;   }
	.main_itemlist .section-head h3{        position: relative;    display: inline-block;    font-size: 17px;   line-height: 1.3846153846;    text-transform: uppercase;    color: #808080;    z-index: 5;    padding: 0 5px;    background-color: #fff;    margin-top: 0px;    } 
	.main_itemlist .section-head .border {display: block;  margin-top:5px;  height: 3px;    width: 100%;    background-color: #c8c8c8;    position: absolute;    top: 7px;    left: 0;    z-index: 1; }
</style>


<body>
	<div class="main_itemlist">	
		<div class="section-head">  
			<h3>B &nbsp;E &nbsp;S &nbsp;T &nbsp;&nbsp;&nbsp;&nbsp;I  &nbsp;T &nbsp; E  &nbsp;M</h3>
		<span class="border"></span>
		</div>
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
								<c:if test="${bestList.ITEM_DCPRICE != null}">
									<font color="gray" size="2"><del><li class="prd-price">₩<fmt:formatNumber value="${bestList.ITEM_PRICE}" type="number" />원</li></del></font>
									<font color="red"><li class="prd-price">₩<fmt:formatNumber value="${bestList.ITEM_DCPRICE}" type="number" />원</li></font>
								</c:if>
								<c:if test="${bestList.ITEM_DCPRICE == null}">
									<li class="prd-price">₩<fmt:formatNumber value="${bestList.ITEM_PRICE}" type="number" />원</li>
								</c:if>	
							</ul>
						</dd>
					</dl>
				</div>
		</c:forEach>
		
								<c:if test="${fn:length(bestList) == 0}">
									
										<tr><td colspan="11" style="text-align:center;">등록된 상품이 없습니다</td></tr>
									</c:if> 
		

	
	<div class="section-head" style="float:left; margin-top:25px;">  
		<h3>I &nbsp;T &nbsp;E &nbsp;M</h3>
		<span class="border"></span>
	</div>
	
		<c:forEach var="items" items="${itemList}">
				<div class="item-cont">
				 	<dl class="item-list">
						<dt class="thumb"><a href="/IMPet/PetShop/ItemView?ITEM_NO=${items.ITEM_NO}"><img class="item_image" src="/IMPet/resources/image/itemImg/${items.ITEM_IMG}" alt="상품 섬네일" title="${items.ITEM_NAME}"></a></dt>
						<dd>
							<ul>
								<li>${item.count }</li>		
								<li class="prd-name">${items.ITEM_NAME}</li>
								<c:if test="${items.ITEM_DCPRICE != null}">
										<font color="gray" size="2"><del><li class="prd-price">₩<fmt:formatNumber value="${items.ITEM_PRICE}" type="number" />원</li></del></font>
									<font color="red"><li class="prd-price">₩<fmt:formatNumber value="${items.ITEM_DCPRICE}" type="number" />원</li></font>
								</c:if>
								<c:if test="${items.ITEM_DCPRICE == null}">
									<li class="prd-price">₩<fmt:formatNumber value="${items.ITEM_PRICE}" type="number" />원</li>							
								</c:if>
							</ul>
						</dd>
					</dl>
				</div>
		</c:forEach>
		
	</div>
</body>
</html>