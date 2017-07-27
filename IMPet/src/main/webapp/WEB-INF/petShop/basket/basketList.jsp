<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>

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

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.1.0.js"></script>



<div class="basket_list" style="margin: 3%.0.3%.0;">
	<div class="basket_list_top">
		<h2 class="basketcart" ><img src="http://okidogki.com/web/upload/goodymallSkin/title/cart.gif" alt="장바구니"></h2>
		<img style="width:100%;" src="http://okidogki.com/web/upload/goodymall15/layout/img_orderStep1.gif" alt="step 01 장바구니">
	</div> 
	<div class="basket_main">
	<form name="basketList" action="/IMPet/PetShop/BasketDelete" >
	<input type="hidden" name="MEMBER_ID" value="${sessionScope.member_ID}">
		<table class="basket" style="margin-bottom:15px; width:100%;">
				<colgroup>
					<col width="5%">
					<col width="15%">
					<col width="30%">
					<col width="15%">
					<col width="15%">
					<col width="15%">
					<col width="15%">
					<col width="10%">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">선택</th>
						<th scope="col">이미지</th>
						<th scope="col">상품명</th>
						<th scope="col">단일금액</th>
						<th scope="col">할인적용</th>
						<th scope="col">수량</th>
						<th scope="col">삭제</th>
					</tr>
				</thead>
				
   
				<c:forEach var="basketList"  items="${basketList}" varStatus="stat">	
					<tr>

						<c:if test="${basketList.ITEM_DCPRICE == null }">
							<td align="center">
								<input type="checkbox" name="BASKET_NO" id="BASKET_NO" value="${basketList.BASKET_NO}" >
								<input type="hidden" id="price" value="${basketList.ITEM_PRICE * basketList.BASKET_BUYCOUNT }">
							</td>
							<td align="center" ><img src="/IMPet/resources/image/itemImg/${basketList.ITEM_IMG}" width="90" height="90"></td>
							<td align="center">${basketList.ITEM_NAME}</td>
							<td align="center" id="price"><fmt:formatNumber value="${basketList.ITEM_PRICE}" type="number"/>원</td>
							<td align="center">${basketList.BASKET_BUYCOUNT} 개 </td>
							<td align="center"><strong id="id2"><fmt:formatNumber value="${basketList.ITEM_PRICE * basketList.BASKET_BUYCOUNT}" type="number"/>원</strong></td>
							<td align="center">
								<a href="/IMPet/PetShop/BasketDelete?BASKET_NO=${basketList.BASKET_NO}&MEMBER_ID=${basketList.MEMBER_ID}" onClick='return confirm("정말로 장바구니를 삭제하시겠습니까?");'><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png" ></a>
							</td>
						</c:if>
						<c:if test="${basketList.ITEM_DCPRICE != null }">
							<td align="center">
								<input type="checkbox" name="BASKET_NO" id="BASKET_NO" value="${basketList.BASKET_NO}" >
								<input type="hidden" id="price" value="${basketList.ITEM_DCPRICE * basketList.BASKET_BUYCOUNT }">
							</td>
							<td align="center" ><img src="/IMPet/resources/image/itemImg/${basketList.ITEM_IMG}" width="90" height="90"></td>
							<td align="center">${basketList.ITEM_NAME}</td>
							<td align="center" id="price"><fmt:formatNumber value="${basketList.ITEM_DCPRICE}" type="number"/>원</td>
							<td align="center">${basketList.BASKET_BUYCOUNT} 개 </td>
							<td align="center"><strong id="id2"><fmt:formatNumber value="${basketList.ITEM_DCPRICE * basketList.BASKET_BUYCOUNT}" type="number"/>원</strong></td>
							<td align="center">
								<a href="/IMPet/PetShop/BasketDelete?BASKET_NO=${basketList.BASKET_NO}&MEMBER_ID=${basketList.MEMBER_ID}" onClick='return confirm("정말로 장바구니를 삭제하시겠습니까?");'><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png" ></a>
							</td>
						</c:if>

					</tr>
					
					
				</c:forEach>
					<c:if test="${fn:length(basketList) <= 0}">
						<tr>
							<td colspan="6" align="center"><font size="2">장바구니에 담긴 상품이 없습니다.</font></td>
						</tr>
					</c:if>
				<tfoot>
					<tr style="height:30px;">
						<td colspan="7" style="background:#f6f6f6;border-top: 1px solid #e5e5e5; text-align:right;color:black;">
							<strong style="float:left;color:#688abd;">&nbsp;&nbsp;&nbsp;[ 기본배송 ]</strong>
							상품구매금액 <strong><label id="orderSum"> 0 원 </label> </strong> + 배송비 <strong>0 원</strong> = <strong style="color: #f8941d;font-size: 14px;">합계 : <label id="orderSum2"> 0 원 </label> </strong>&nbsp;&nbsp;&nbsp;
						</td>
					</tr>
				</tfoot>
	
			</table>
			<div class="basket_button" style="float:left">
	
				<input type="button" class="check-all" value="전체선택" id="button"/>
				<input type="button" class="check-unall" value="선택해제" id="button"/>			
				<button class="button2" id="button"><span class="button-label">선택삭제</span>	</button>					
			<!-- 	<a href="/IMPet/PetShop/Main"><span >쇼핑계속하기</span></a>	

	
					<input type="button" value="주문하기" onclick="cartBuy()" />	 -->				
						
			</div>
			<div style="float:right">		
			<input type="button" value="쇼핑계속하기" onclick="location.href='/IMPet/PetShop/Main'" id="button" style="width:100px;"/>
			<input type="button" value="주문하기" onclick="cartBuy()" id="button"/>	
			</div>
		</form>
		</div>
	
</div>
<script>
function cartBuy(){
	
	var fm = document.basketList;
	
	 if($("input:checkbox[name=BASKET_NO]").is(":checked") == false ){
		
	    alert("상품을 선택해 주세요");
		return false;
	    
	} 
 	else {
		fm.action = "/IMPet/PetShop/OrderFormB";
		fm.method= "post";
		fm.submit();
	} 
}
var price = Number(0);
 $("input:checkbox").on('click', function() {  
 
	if ( $(this).prop('checked') ) {
		 price += Number($(this).parent().find("#price").val());
	   } 
	else {
		price -= Number($(this).parent().find("#price").val());
	     }
	

	
	$("#orderSum").html(addComma(price));
	$("#orderSum2").html(addComma(price));
});     
	
 function addComma(x) {

	   return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

</script>
<script>

$(".check-all").click(function(){

	$(".basket_main input:checkbox[name='BASKET_NO']").not(":checked").trigger("click");
});

$(".check-unall").click(function(){
$(".basket_main input:checkbox[name='BASKET_NO']:checked").trigger("click");
});

$("form[name=basketList]").submit(function(){
if ($("input:checkbox[name=BASKET_NO]").is(":checked") == false){
	alert("삭제하실 상품을 선택해주세요");
	return false;
}
return confirm("정말로 장바구니를 삭제하시겠습니까?")
});
</script>