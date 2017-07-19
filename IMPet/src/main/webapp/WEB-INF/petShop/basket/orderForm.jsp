<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.1.0.js"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/IMPet/resources/JQuery/joinForm.js" charset="utf-8"></script>

<link rel="stylesheet" href="/IMPet/resources/css/member/joinForm.css">
<link rel="stylesheet" href="/IMPet/resources/css/shop/orderForm.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>

<script type="text/javascript">
	

	window.onload = function() {
		$("input[name=ORDER_TYPE1]").attr("disabled", true);  
	}
	
	/* 	
	function openZipcode(){
		var url="zipcodeCheckForm.dog";
		open(url, "confirm","toolbar=no, location=no, status=no, menubar=no, scrollbars=yes, resizable=no, width=410, height=400");
	} */

	function chk_radio() { 
		
		if($("input[name=ORDER_PAYER]:radio:checked").length == 0){
			
		    alert("무통장 입금계좌를 선택하세요");
		    document.order.order_trade_type.focus();
		    
		}else{
			  frm.method = "post";
			  frm.action = "/IMPet/PetShop/OrderItemPay";
			  frm.submit();
			  return true;
		 } 
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
						<th scope="col">단일금액</th>
						<th scope="col">수량</th>
						<th scope="col">합계</th>
					</tr>
				</thead>	
				
			<c:forEach var="orderView" items="${orderView}">			
					<tr>
						<td align="center"><img src="/IMPet/resources/image/itemImg/${orderView.ITEM_IMG}" width="90" height="90"></td>
						<td align="center">${orderView.ITEM_NAME}</td>
						<td align="center"><fmt:formatNumber value="${orderView.ITEM_PRICE}" type="number"/>원</td>
						<td align="center">${orderView.BASKET_BUYCOUNT}EA</td>
						<td align="center"><strong id="id2"><fmt:formatNumber value="${orderView.ITEM_PRICE * orderView.BASKET_BUYCOUNT}" type="number"/>원</strong></td>						
						<c:set var= "sum" value="${sum + (orderView.ITEM_PRICE * orderView.BASKET_BUYCOUNT)}"/> 
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



<div class="orderArea">
	<h3>결제자 정보</h3>
		<div class="boardWrite">
			<table border="1" summary="">
			
				<tbody>
					<tr>
						<th scope="row">성명</th>
						<td>${member.MEMBER_NAME}</td>
					</tr>
					<tr>
						<th scope="row">휴대폰</th>
						<td>${member.MEMBER_TEL}</td>
					</tr>
					<tr>
						<th scope="row">이메일</th>
						<td>${member.MEMBER_EMAIL}&nbsp;&nbsp;&nbsp;&nbsp;<font style="color:#cfcfcf;">*제품구입시 E-mail을 통해 주문처리과정을 보내 드립니다.</font></td>
					</tr>              
				</tbody>
			</table>
		</div>
</div>
<div class="orderArea">

     
	<h3>배송지 정보
		<label style="float: left;"> 
			 <input type="checkbox" name="order" form="order_form" onclick="copydata()">주문자 정보 입력
     	</label>
     </h3>
		<div class="boardWrite">
			<table border="1" summary="" >
				
				<tbody>
					
					<tr>
						<th scope="row">받는사람</th>
						<td><input type="text" name="RECEIVE_NAME" value="" /></td>
					</tr>
					<tr>
						<th scope="row">휴대폰</th>
						<td><input type="text" name="RECEIVE_TEL" value="" /></td>						
					</tr> 
				
					<tr>
						<th scope="row">주소</th>
						<td>

							<input type="text" name="RECEIVE_ZIPCODE" onclick="this.value=''" id="sample6_postcode" readonly value=""
							style="margin-bottom: 2px;" /> <a href="#none" title="우편번호(새창으로 열기)" onclick="return sample6_execDaumPostcode()" id="postBtn"><img style="margin-bottom:5px;" src="http://img.echosting.cafe24.com/design/skin/default/member/btn_zip.gif" alt="우편번호"></a><br>
							<input type="text"  style="width:30%;margin-bottom:2px;" name="RECEIVE_ADDRESS" onclick="this.value=''" id="sample6_address" readonly value=""  style="margin-bottom:5px;"/>
                   	 		<input type="text" style="width:30%;" name="RECEIVE_ADDRESS2" onclick="this.value=''" id="sample6_address2" value="" />
						</td>
					</tr>
					<tr>
						<th scope="row">배송요청사항</th>
						<td>
						<textarea style="width:100%;" name="RECEIVE_REQUESTS"  placeholder=" 배송시요청사항 예)부재시 경비실에 맡겨주세요"></textarea></td>
					</tr>
					<tr>
						<th scope="row" rowspan="2">결제방식</th>
						<td><input type="radio" name="ORDER_TYPE" value="무통장입금" checked="">무통장입금&nbsp;
						<input type="radio"	name="ORDER_TYPE1" value="카드결제"> 카드결제&nbsp;
							</td>
					</tr>   
					<tr>
						<td>
							<div style="text-align:center;">
					    		<div style="display:inline-block;">
					    		
						    		<div style="float:left;margin-top: 116px;">
								    		<input type="radio" name="ORDER_PAYER" value="우리은행 : 1002-053-209817 아임펫">
								    		<br/><br/><br/><br/>
											<input type="radio" name="ORDER_PAYER" value="신한은행 : 110-419-047027 아임펫">
											<br/><br/><br/><br/>
											<input type="radio" name="ORDER_PAYER" value="하나은행 : 762-910017-00507 아임펫">
									</div>
									
						    		<div style="float:left;"><img src="/IMPet/resources/image/test/paybank.jpg">
						    		</div>
					    					    	   		
					    		</div>
					    	</div>
						</td>
					</tr>           
				</tbody>
			</table>
		</div>
</div>


			<div class="basket_button" style="margin-top:5px;">
					<input type="image" src="http://okidogki.com/web/upload/goodymallSkin/product/btn_payment.gif" onclick="chk_radio()" >					
			</div>	


</form>

<script>
function copydata() {

	
	var name = '${member.MEMBER_NAME}';
	var tel = '${member.MEMBER_TEL}';
	var zipcode = '${member.MEMBER_ZIPCODE}';
	var addr = '${member.MEMBER_ADDRESS}';
	var addr2 = '${member.MEMBER_ADDRESS2}';
	
    if ($('input[name="order"]').prop('checked') === true) {
       $('input[name="RECEIVE_NAME"]').val(name);
       $('input[name="RECEIVE_TEL"]').val(tel);
       $('input[name="RECEIVE_ZIPCODE"]').val(zipcode);
       $('input[name="RECEIVE_ADDRESS"]').val(addr);
       $('input[name="RECEIVE_ADDRESS2"]').val(addr2);
    } else {
    	frm.reset();
    }
 }
</script>
