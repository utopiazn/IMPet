<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
	.basket_main .basket{	
    color: #8f8f8f;
    font-size: 13px;
    border-bottom: 1px solid #e5e5e5;
    width: 1000px;
    margin: 0 auto;
}
.basket_main{
	margin:0 auto;
}
.basket th{
    padding: 6px 0 4px;
    border-top: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    background: #f6f6f6;
    font-weight: normal;
    color: #888;	
}
.basket td{
	padding: 6px 0 4px;
    border-top: 1px dotted #e3e3e3;
    line-height: 140%;
    text-align: center;
}
.basket_button{
	float:right;
	margin-bottom: 50px;
}
/* clera */
.clear:after{content:".";height:0;font-size:0;display:block;clear:both;}
.clear{display:inline-block;}
* html .clear{height:0;}
.clear{display:block;}
.clear-both{clear:both;}
.over-point {cursor:pointer;}
.category_top{
    height: 30px;
    line-height: 30px;
}
.category_top ul{
    float:right;
}
.category_top li{
	padding: 0 0 0 0;
    margin: 0 0 0 5px;
    color: #999;
    font-size: 11px;
    letter-spacing: 0px;
    float:left;
    list-style:none;
}


</style>
<div class="category_top">
	<ul>
	 	<li>펫샵 ></li><li>장바구니</li>			
	</ul>
</div>
<div class="basket_list">
	<div class="basket_list_top">
		<h2 class="basketcart"><img src="http://okidogki.com/web/upload/goodymallSkin/title/cart.gif" alt="장바구니"></h2>
		<img style="width:1000px;" src="http://okidogki.com/web/upload/goodymall15/layout/img_orderStep1.gif" alt="step 01 장바구니">
	</div>
	<div class="basket_main">
	<form name="basketList" method="post">
		<table class="basket" style="margin-bottom:15px;">
				<colgroup>
					<col width="20%">
					<col width="40%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">이미지</th>
						<th scope="col">상품명</th>
						<th scope="col">단일금액</th>
						<th scope="col">수량</th>
						<th scope="col">합계</th>
						<th scope="col">설정</th>
					</tr>
				</thead>
				
   
				<c:forEach var="basketList"  items="${basketList}" varStatus="stat">	
					<tr>
						<td align="center"><img src="/IMPet/resources/image/itemImg/${basketList.ITEM_IMG}" width="90" height="90"></td>
						<td align="center">${basketList.ITEM_NAME}</td>
						<td align="center"><fmt:formatNumber value="${basketList.ITEM_PRICE}" type="number"/>원</td>
						<td align="center">${basketList.BASKET_BUYCOUNT}EA</td>
						<td align="center"><strong id="id2"><fmt:formatNumber value="${basketList.ITEM_PRICE*basketList.BASKET_BUYCOUNT}" type="number"/>원</strong></td>
						<td align="center">
							<a href="/IMPet/PetShop/BasketDelete?BASKET_NO=${basketList.BASKET_NO}&MEMBER_ID=${basketList.MEMBER_ID}"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png" ></a>
						</td>
						<c:set var= "sum" value="${sum + (basketList.ITEM_PRICE * basketList.BASKET_BUYCOUNT)}"/>
					</tr>
				</c:forEach>
					<c:if test="${fn:length(basketList) <= 0}">
						<tr>
							<td colspan="6" align="center"><font size="2">장바구니에 담긴 상품이 없습니다.</font></td>
						</tr>
					</c:if>
				<tfoot>
					<tr style="height:30px;">
						<td colspan="6" style="background:#f6f6f6;border-top: 1px solid #e5e5e5; text-align:right;color:black;">
							<strong style="float:left;color:#688abd;">&nbsp;&nbsp;&nbsp;[ 기본배송 ]</strong>
							상품구매금액 <strong><fmt:formatNumber value="${sum}" type="number"/> </strong> + 배송비 <strong>0</strong> = <strong style="color: #f8941d;font-size: 14px;">합계 : <fmt:formatNumber value="${sum}" type="number"/>원 </strong>&nbsp;&nbsp;&nbsp;
						</td>
					</tr>
				</tfoot>
				
			</table>
			<div class="basket_button">
										
					<a href="/IMPet/PetShop/Main" ><img src="http://okidogki.com/web/upload/goodymallSkin/product/btn_order_ing.gif" alt="쇼핑계속하기"></a>
					<a href="/IMPet/PetShop/OrderList?ITEM_NO=${ITEM_NO}&BASKET_BUYCOUNT=${BASKET_BUYCOUNT}&MEMBER_ID=${sessionScope.member_ID}"><img src="http://okidogki.com/web/upload/goodymallSkin/product/btn_order_all.gif" alt="전체상품주문"></a>  		
			</div>		
		</form>
		</div>
</div>