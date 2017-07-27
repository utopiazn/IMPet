<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" href="/IMPet/resources/css/shop/orderForm.css">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.1.0.js"></script>


<style type="text/css">
	.orderArea h3{
	    margin: 30px 0 5px 5px;
	    font-size: 12px;
	    color: #888;
	    font-weight: bold;
	}
	.orderArea .boardWrite table{
		table-layout: fixed;
	    border-top: 1px solid #ccc;
	    border-bottom: 1px solid #ccc;
	    font-size: 12px;
	    width: 100%;
	    border: 0;
	    border-spacing: 0;
	    border-collapse: collapse;
	    font-weight: 800;
	}
	.orderArea .boardWrite table th{
	    width: 140px;
	    padding: 5px 0 5px 22px;
	    border-top: 1px solid #e7e7e7;
	    background: #FAFAFA;
	    color: #888;
	    text-align: left;
	    line-height: 140%;
	    border-left: 0px;
	}
	.orderArea .boardWrite table td{
		width: auto;
	    padding: 5px 0 3px 22px;
	    border-top: 1px solid #e7e7e7;
	    color: #8f8f8f;
	    line-height: 140%;
	    font-size: 12px;
	    border-right: 0px;
	}
	.boardWrite input[type="text"]{
		text-indent: 5px;
	    font-size: 12px;
	    border: 1px solid #cfcecd;
	    background: #fff;
	}
	
	#button  {
  background: #f6f6f6;
  color: #11111;
  width: 70px;
  height: 30px;
  border: 0;
  font-size: 15px;
  border-radius: 4px;
  font-family: 'Noto sans KR', sans-serif;
  -webkit-transition: .6s;
  transition: .6s;
  overflow: hidden;
  cursor: pointer;
}

</style>
<script type="text/javascript">
	
function order_cancel() { 
	
	var frm = document.order;
	
	if (confirm("주문을 취소하시겠습니까?")){ 
			frm.method = "post";
			frm.action = "/IMPet/PetShop/Main";
			frm.submit();
	}
}	

function order_sub() { 
 	
	var frm = document.order;
	
	frm.method = "post";
	frm.action = "/IMPet/PetShop/OrderComplete";
	frm.submit();
	
	return true;
}	
</script>


<div class="category_top">
	<ul>
	 	<li>펫샵 ></li><li>주문하기</li>			
	</ul>
</div>

<div  class="basket_list">

	<div class="basket_list_top">
		<h2 class="basketcart"><img src="http://okidogki.com/web/upload/goodymallSkin/title/order.gif" alt="장바구니"></h2>
		<img style="width:100%;" src="http://okidogki.com/web/upload/goodymall15/layout/img_orderStep2.gif" alt="step 01 장바구니">
	</div>

	<div class="order_main">	
			 <table class="order" style="margin-bottom:15px; width:100%">
				<colgroup>
						<col width="20%">
					<col width="30%">
					<col width="20%">
					<col width="20%">
					<col width="20%">
				</colgroup>
				
				<thead>
					<tr>
						<th scope="col">이미지</th>
						<th scope="col">상품명</th>
						<th scope="col">상품금액</th>
						<th scope="col">수량</th>
						<th scope="col">합계</th>
					</tr>
				</thead>	
				
			<c:forEach var="orderPay" items="${orderPay}">			
					<tr>
						<c:if test="${orderPay.ITEM_DCPRICE == null }">
							<td align="center"><img src="/IMPet/resources/image/itemImg/${orderPay.ITEM_IMG}" width="90" height="90"></td>
							<td align="center">${orderPay.ITEM_NAME}</td>
							<td align="center"><fmt:formatNumber value="${orderPay.ITEM_PRICE}" type="number"/>원</td>
							<td align="center">${orderPay.BASKET_BUYCOUNT}EA</td>
							<td align="center"><strong id="id2"><fmt:formatNumber value="${orderPay.ITEM_PRICE * orderPay.BASKET_BUYCOUNT}" type="number"/>원</strong></td>						
							<c:set var= "sum" value="${sum + (orderPay.ITEM_PRICE * orderPay.BASKET_BUYCOUNT)}"/> 
						</c:if>
						<c:if test="${orderPay.ITEM_DCPRICE != null }">
							<td align="center"><img src="/IMPet/resources/image/itemImg/${orderPay.ITEM_IMG}" width="90" height="90"></td>
							<td align="center">${orderPay.ITEM_NAME}</td>
							<td align="center"><fmt:formatNumber value="${orderPay.ITEM_DCPRICE}" type="number"/>원</td>
							<td align="center">${orderPay.BASKET_BUYCOUNT}EA</td>
							<td align="center"><strong id="id2"><fmt:formatNumber value="${orderPay.ITEM_DCPRICE * orderPay.BASKET_BUYCOUNT}" type="number"/>원</strong></td>						
							<c:set var= "sum" value="${sum + (orderPay.ITEM_DCPRICE * orderPay.BASKET_BUYCOUNT)}"/> 
						</c:if>
					</tr>				
			</c:forEach>
				<tfoot>
					<tr style="height:30px;">
						<td colspan="6" style="background:#f6f6f6;border-top: 1px solid #e5e5e5; text-align:right;color:black;">
							<strong style="float:left;color:#688abd;">&nbsp;&nbsp;&nbsp;[ 기본배송 ]</strong>
							상품구매금액 <strong><fmt:formatNumber value="${sum}" type="number"/> </strong> + 배송비 <strong>0</strong> = <strong style="color: #f8941d;font-size: 14px;">합계 : <fmt:formatNumber value="${sum}" type="number"/>  원 </strong>&nbsp;&nbsp;&nbsp;
						</td>
					</tr>
				</tfoot>				
			</table>		 		
	
	
	</div>
</div>
<form name="order" id="frm" method="post">
<input type="hidden" name="MEMBER_ID" value="${sessionScope.member_ID}">
<input type="hidden" name="RECEIVE_ZIPCODE" value="${receive.RECEIVE_ZIPCODE}">
<input type="hidden" name="RECEIVE_ADDRESS" value="${receive.RECEIVE_ADDRESS}">
<input type="hidden" name="RECEIVE_ADDRESS2" value="${receive.RECEIVE_ADDRESS2}">
<input type="hidden" name="RECEIVE_NAME" value="${receive.RECEIVE_NAME}">
<input type="hidden" name="RECEIVE_TEL" value="${receive.RECEIVE_TEL}">
<input type="hidden" name="ORDER_TYPE" value="${receive.ORDER_TYPE}">
<input type="hidden" name="ORDER_PAYER" value="${receive.ORDER_PAYER}">
<input type="hidden" name="RECEIVE_REQUESTS" value="${receive.RECEIVE_REQUESTS}">


<div class="orderArea">
	<h3>배송지 정보</h3>
		<div class="boardWrite">
			<table border="1" summary="">
				
				<tbody>
					<tr>
						<th scope="row">주소</th>
						<td>
							${receive.RECEIVE_ZIPCODE}<br>${receive.RECEIVE_ADDRESS}&nbsp; / ${receive.RECEIVE_ADDRESS2}
						</td>
					</tr>
					<tr>
						<th scope="row">이름</th>
						<td>${receive.RECEIVE_NAME}</td>
					</tr>
					<tr>
						<th scope="row">휴대폰</th>
						<td>${receive.RECEIVE_TEL}</td>						
					</tr> 
					<tr>
						<th scope="row">결재방식</th>
						<td>${receive.ORDER_TYPE}</td>
					</tr>   
					<tr>
						<th scope="row">입금주소</th>
						<td>${receive.ORDER_PAYER}</td>
					</tr>     
					<tr>
						<th scope="row">배송요청사항</th>
						<td>${receive.RECEIVE_REQUESTS}</td>
					</tr>      
				</tbody>
			</table>
		</div>
</div>

	<div class="basket_button" style="padding-bottom: 17px; padding-top: 17px;">
	
		<input type="button" value="취소하기" onclick="order_cancel()" id="button"/>&nbsp;
		<input type="button" value="결제하기" onClick="order_sub()" id="button"/>
			
			
	</div>	

</form> 

