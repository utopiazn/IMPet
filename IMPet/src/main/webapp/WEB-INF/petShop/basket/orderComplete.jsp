<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<style type="text/css">
 .orderInfo{
	margin: 10px 0 0;
    padding: 90px 0;
    border: 1px solid #f0f0f0;
    background: #f6f6f6;
    color: #202020; 	
 }
 .orderInfo .complete{
 	width: 327px;
    height: 157px;
    margin: 0 auto;
    padding: 24px 15px 0 160px;
    background: url("http://img.echosting.cafe24.com/design/skin/default/order/bg_complete.gif") no-repeat 0 0;
 }
 .orderInfo p{
/*     padding: 0 70px 0 0; */
    text-align:center;
    font-weight: bold;
    font-size: 30px;
    color: #464c4e;
    height: 70px;
    margin: 0 auto;
 }
 .orderInfo li{
 	margin: 5px 0 0;
 		
 }
 
  .orderInfo ul{
	padding-left:0;
	text-align:left;
	width:353px;
 	
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

<div class="basket_list" style="margin: 3%.0.3%.0;">
	<div class="basket_list_top">
		<h2 class="basketcart"><img src="http://okidogki.com/web/upload/goodymallSkin/title/order_end.gif" alt="장바구니"></h2>
		<img style="width:100%;" src="http://okidogki.com/web/upload/goodymall15/layout/img_orderStep3.gif" alt="step 01 장바구니">
	</div>
	<div class="basket_main">
		<div class="orderInfo">
		    <p>고객님의 주문이 완료 되었습니다.</p>
	        <div class="complete" >
	      
			<ul >
				<c:forEach var="orderPay"  items="${orderPay}" varStatus="status">
				<c:if test="${status.first }">
				<li class="number">
				<strong>주문번호</strong>&nbsp;&nbsp;&nbsp;<span>${orderPay.RECEIVE_NO}</span>
				</li>
				<li class="date">
				<strong>주문일자</strong>&nbsp;&nbsp;&nbsp;<span><fmt:formatDate value="${orderPay.ORDER_DATE}" pattern="YY.MM.dd HH:mm" /></span>
				</li>
				<li class="number">
				<strong>계좌번호</strong>&nbsp;&nbsp;&nbsp;<span>${receive.ORDER_PAYER}</span>
				</li>
				</c:if>
				</c:forEach>
				
			</ul>
			</div>
	    </div>
	    
	    <div style="padding-bottom: 17px; padding-top: 17px; text-align:center;">
			<span class="btn btnC_04 btnP_04"><input type="button" value="쇼핑하기" onclick="location.href='/IMPet/PetShop/Main'" id="button"/></span>&nbsp;
			<span class="btn btnC_04 btnP_04"><input type="button" value="구매내역" onclick="location.href='/IMPet/MyPage#order'" id="button"/></span>	
		</div>
	</div>
</div>
