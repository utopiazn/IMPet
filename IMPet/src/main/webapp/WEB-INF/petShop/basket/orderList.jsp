<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
 <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	function delchk() {
		
	    return confirm("주문 취소 하시겠습니까?");  
	}
	
	function delchk_no() {
		
		alert("입금 확인 후에는 주문 취소가 불가합니다."); 
		location.href = 'redirect:/IMPet/PetShop/OrderList';
	}


	function test(orderList) {
		
	    var div_test = document.getElementById('test');
	    div_test.innerHTML = orderList.RECEIVE_NAME;      
	}
	
	function ajaxPageView(page){	
		
		alert(page);  
		var dataList =
		{ 
			"PAGE" : page	
		}	

		var url1 = "/IMPet/PetShop/OrderList";
		
	    $.ajax({    
	     
	    	type : "POST",
	        url : url1,
	        data : dataList,
	        dataType : "text",      
	        
	        error : function() {
	      	  
	      		alert('오류임!');     	
	        },
	       
	        success : function(data) {  
	        	alert("들어옴");
	      		 $('#ContextMyPage').html(data);
	        }
	        
	      });        

	}
	 
</script>
<script>
$( document ).ready(function() {

	$("#sum").rowspan(0);
	
});

$.fn.rowspan = function(colIdx, isStats) {       
	return this.each(function(){      
		var that;     
		$('tr', this).each(function(row) {      
			$('td:eq('+colIdx+')', this).filter(':visible').each(function(col) {
				
				if ($(this).html() == $(that).html()
					&& (!isStats 
							|| isStats && $(this).prev().html() == $(that).prev().html()
							)
					) {            
					rowspan = $(that).attr("rowspan") || 1;
					rowspan = Number(rowspan)+1;

					$(that).attr("rowspan",rowspan);
					
					// do your action for the colspan cell here            
					$(this).hide();
					
					//$(this).remove(); 
					// do your action for the old cell here
					
				} else {            
					that = this;         
				}          
				
				// set the that if not already set
				that = (that == null) ? this : that;      
			});     
		});    
	});  
}; 
</script>
<style type="text/css">
.paging{text-align:center;height:32px;margin-top:5px;margin-bottom:15px;}
.paging a,
.paging strong{display:inline-block;width:36px;height:32px;line-height:28px;font-size:14px;border:1px solid #e0e0e0;margin-left:5px;
-webkit-border-radius:3px;
   -moz-border-radius:3px;
		border-radius:3px;
-webkit-box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
	-moz-box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
		  box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
}
.paging a:first-child{margin-left:0;}
.paging strong{color:#fff;background:#337AB7;border:1px solid #337AB7;}
.paging .page_arw{font-size:11px;line-height:30px;}
</style>

<div class="panel-body">
	<div class="dataTable_wrapper" style="text-align:center;">
		<h2 class="basketcart"><img src="http://okidogki.com/web/upload/goodymallSkin/title/order_list.gif" alt="장바구니"></h2>
	</div>
	<div id="dataTables-example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
		<form name="basketList" method="post">
			<input type="hidden" name="MEMBER_ID" value="${sessionScope.member_ID}">
		<table id="sum" style="margin-bottom:15px; text-align:center;" class="table  table-bordered table-hover dataTable no-footer"
								role="grid"
								aria-describedby="dataTables-example_info">
				<colgroup>
					<col width="18%">
					<col width="10%">
					<col width="35%">
					<col width="7%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
				</colgroup>
				<thead>
					<tr role="row" style="vertical-align:middle;" >
						<th scope="col" style="text-align:center;vertical-align:middle;">주문일자<br/>[주문번호]</th>
						<th scope="col" style="text-align:center;vertical-align:middle;">이미지</th>
						<th scope="col" style="text-align:center;vertical-align:middle;">상품명</th>
						<th scope="col" style="text-align:center;vertical-align:middle;">수량</th>
						<th scope="col" style="text-align:center;vertical-align:middle;">상품구매금액</th>
						<th scope="col" style="text-align:center;vertical-align:middle;">주문처리상태</th>
						<th scope="col" style="text-align:center;vertical-align:middle;">주문취소</th>
					</tr>
				</thead>
				
   
				<c:forEach var="orderList"  items="${orderList}" varStatus="status">	
					<tr>
						<td align="center" style="text-align:center;vertical-align:middle;"><fmt:formatDate value="${orderList.ORDER_DATE}" pattern="YY-MM-dd" /><br/>[ ${orderList.RECEIVE_NO} ]<br/><br/>
						<%-- [ 송장 : ${order.order_trans_num} ] --%></td>
						<td align="center" style="text-align:center;vertical-align:middle;"><img src="/IMPet/resources/image/itemImg/${orderList.ORDER_IMG}" width="90" height="90"></td>
						<td align="center" style="text-align:center;vertical-align:middle;"><a href="/IMPet/PetShop/ItemView?ITEM_NO=${orderList.ITEM_NO}"> ${orderList.ORDER_NAME}</a></td>
						<td align="center" style="text-align:center;vertical-align:middle;">${orderList.ORDER_BUYCOUNT}EA</td>
						<td align="center" style="text-align:center;vertical-align:middle;"><strong id="id2"><fmt:formatNumber value="${orderList.ORDER_PRICE}" type="number"/>원</strong></td>
						<td style="text-align:center;vertical-align:middle;">
							<c:choose>
								<c:when test="${orderList.ORDER_TYPE eq 0}">입금전</c:when>
								<c:when test="${orderList.ORDER_TYPE eq 1}">입금확인</c:when>
								<c:when test="${orderList.ORDER_TYPE eq 2}">배송시작</c:when>
								<c:when test="${orderList.ORDER_TYPE eq 3}">배송완료</c:when>
						
							</c:choose>
						</td>
						<td align="center" style="text-align:center;vertical-align:middle;">
							<c:choose>
								<c:when test="${orderList.ORDER_TYPE eq 0}">
									<a href="/IMPet/PetShop/OrderDelete?ORDER_NO=${orderList.ORDER_NO}&ORDER_TYPE=4"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png" onclick="return delchk()" ></a>
								</c:when>
								<c:otherwise><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png" onclick="return delchk_no()" ></c:otherwise>
							</c:choose>
						</td>
					</tr>
					
					<c:if test="${orderList[status.index].ORDER_NO != orderList[status.index+1].ORDER_NO}">
						<tr style="height:30px;">
							<td colspan="7" style="background:#f6f6f6;border-top: 1px solid #e5e5e5; border-bottom: 1px solid #e5e5e5; text-align:center;vertical-align:middle;"></td>
						</tr>
					</c:if>
				</c:forEach>
				
				<c:if test="${fn:length(orderList) <= 0}">
					<tr>
						<td colspan="7" align="center"><font size="2">주문리스트 담긴 상품이 없습니다.</font></td>
					</tr>
				</c:if>
				
			
			</table>
			
			<div class="paging">
				${pagingHtml}
			</div>
			
			<div class="basket_button">					
				<a href="/IMPet/PetShop/Main" ><img src="http://okidogki.com/web/upload/goodymallSkin/product/btn_order_ing.gif" alt="쇼핑계속하기"></a>  		
			</div>		
		</form>
		</div>
</div>



<%-- 

	<form name="orderList" method="post">
		<table width="700" align="center">
			<tr>
				<td colspan="7" align="center">
				주문 리스트
				</td>
			</tr>
			
			
   
				<c:forEach var="order"  items="${orderList}" varStatus="status">	
					<tr>
						<td width="80" align="center"><img src="/pet/resources/goods_upload/${order.order_goods_image}" width="100" height="100"></td>									
						<td width="300" align="center">
						<a href="goodsView.dog?goods_num=${order.order_goods_num}"> 
								${order.order_goods_name}&nbsp;&nbsp;</a>
						</td>
					
						<td width="80"align="center">주문번호 : ${order.order_trade_num}</td>
					
						<td width="80"align="center">${order.order_goods_price}원</td>
						<td width="80"align="center">${order.order_goods_amount}EA</td>
						<td width="80" align="center">${order.order_sum_money}원</td>
						<td width="80" align="center">주문상태 : ${order.order_status}</td>
						<td width="80" align="center">
						<input type="button" onClick="test(${orderList})" value="상세보기"/>
						
						<a href="orderdelete.dog?order_num=${order.order_num} " >삭제</a>
							<!-- 이거는 나중에 없애기 삭제말고 상세보기 -->
							</td>
					</tr> 
					<tr>
					
					</tr>
						<td width="300" align="center">
						송장번호 : ${order.order_trans_num}</td>
					<tr>  
						<td colspan="6" align="center">
						<c:if test="${orderList[status.index].order_trade_num != orderList[status.index+1].order_trade_num}">
							------------------------------------------------------------------------------------
							</c:if>
						</td>
					</tr>
				
					
				</c:forEach>
					<tr>
					<td><br /><br />		</td>
					</tr>
					<c:if test="${fn:length(orderList) <= 0}">
						<tr>
							<td colspan="6" align="center"><font size="2">구매 내역이 없습니다</font></td>
						</tr>
					</c:if>
				<tr height="40">
					<td align="right" colspan="6">
					
					
					<a href="/pet/main.dog" >메인으로</a>
					
					</td>
				</tr>
			</table>
		</form> --%>