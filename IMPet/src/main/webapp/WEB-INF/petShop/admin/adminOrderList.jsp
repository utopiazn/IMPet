<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>관리자회원주문내역리스트</title>
</head>
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
 <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>
$( document ).ready(function() {
	$('#sum').rowspan(0);
	$('#sum').rowspan(6);
	
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
</head>
<body>
<div class="row" style="padding-left:15px;width:100;">    
	<h1 class="page-header">주문 목록</h1>
</div>
<div class="row"> 
	<div class="panel panel-default">
		<div class="panel-heading">
                         [주문 리스트] 입금 확인, 배송 상태, 주문 취소 하는 페이지 입니다.
        </div>
        <div class="panel-body">
			<div class="dataTable_wrapper">
				<div id="dataTables-example_wrapper"
					class="dataTables_wrapper form-inline dt-bootstrap no-footer">
					<div class="row" style="margin-bottom:5px; text-align:left;">
						<div class="col-sm-6">
							<a href="/IMPet/PetShop/AdminOrderList"><button type="button" class="btn btn-outline btn-default">전체</button></a>
							<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--주문 상태--</option>
								<option value ="/IMPet/PetShop/AdminOrderList?searchNum=2&isSearch=0">입금전</option>
								<option value ="/IMPet/PetShop/AdminOrderList?searchNum=2&isSearch=1">입금완료</option>
								<option value ="/IMPet/PetShop/AdminOrderList?searchNum=2&isSearch=2">배송시작</option>
								<option value ="/IMPet/PetShop/AdminOrderList?searchNum=2&isSearch=3">배송완료</option>
								<option value ="/IMPet/PetShop/AdminOrderList?searchNum=2&isSearch=4">주문취소</option> 
							</select>
							<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--주문 정렬--</option>
								<option value ="/IMPet/PetShop/AdminOrderList?searchNum=3&isSearch=0">주문번호</option>
								<option value ="/IMPet/PetShop/AdminOrderList?searchNum=4&isSearch=0">주문상태</option>
							</select>			
			<!-- 			<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--상품정렬--</option>
								<option value ="/IMPet/PetShop/AdminItemList?searchNum=5&isSearch=0">결제상태</option>
								<option value ="/IMPet/PetShop/AdminItemList?searchNum=6&isSearch=0">판매량</option>
							</select>	 -->										
						</div>
						<div class="col-sm-6" style="text-align:right;">
							<div class="dataTables_info" id="dataTables-example_info" role="status" aria-live="polite">총 상품수 : ${totalCount}</div>
						</div>
						
					</div>
					<div class="row">
						<div class="col-sm-12">
							<table 	class="table table-bordered table-hover dataTable no-footer" id="sum"> <!-- role="grid" 	aria-describedby="dataTables-example_info" -->
								<thead>
									<tr role="row" style="vertical-align:middle;">
										<th style="width: 7%; text-align:center;vertical-align:middle;">주문 번호</th>
										<th style="width: 7%; text-align:center;vertical-align:middle;">아이디</th>
										<th style="width: 8%; text-align:center;vertical-align:middle;">상품 사진</th>										
										<th style="width: 20%; text-align:center;vertical-align:middle;">상품명</th>
										<th style="width: 7%; text-align:center;vertical-align:middle;">구입 수량</th>
										<th style="width: 8%; text-align:center;vertical-align:middle;">가격</th>
										<th style="width: 8%; text-align:center;vertical-align:middle;">주문 날짜</th>																		
										<th style="width: 13%; text-align:center;vertical-align:middle;">주문 상태</th>
									</tr>
								</thead>
								<tbody>

								<c:forEach var="orderList"  items="${orderList}" varStatus="stat">
								<%-- 	<c:url var="viewURL" value="/PetShop/AdminItemModifyForm" >
										<c:param name="ITEM_NO" value="${itemList.ITEM_NO }" />
									</c:url>			
															
									<c:url var="viewURL2" value="/PetShop/AdminItemDelete" >
										<c:param name="ITEM_NO" value="${itemList.ITEM_NO }" />							
									</c:url> --%>
									
									<tr class="gradeA even" role="row">
										<td style="text-align:center;vertical-align:middle;">${orderList.RECEIVE_NO}</td>
										<td style="text-align:center;vertical-align:middle;">${orderList.MEMBER_ID}</td>											
										<td style="text-align:center;vertical-align:middle;"><img src="/IMPet/resources/image/itemImg/${orderList.ORDER_IMG}" width="60" height="60" alt=""  onerror="this.src='/SIRORAGI/file/noimg_130.gif'" /></td>
			
										<td style="text-align:center;vertical-align:middle;">${orderList.ORDER_NAME}</td>
										<td style="text-align:center;vertical-align:middle;">${orderList.ORDER_BUYCOUNT} 개</td>

										
										<td style="text-align:center;vertical-align:middle;"><fmt:formatNumber value="${orderList.ORDER_PRICE}" type="number"/>원</td>
					
										
										<td style="text-align:center;vertical-align:middle;">${orderList.ORDER_DATE}</td>
										<td style="text-align:center;vertical-align:middle;">
										<c:url var="viewURL" value="/PetShop/AdminOrderPay" >
											<c:param name="ORDER_TYPE" value="${orderList.ORDER_TYPE }" />
											<c:param name="RECEIVE_NO" value="${orderList.RECEIVE_NO }"/>
											<c:param name="ORDER_NO" value="${orderList.ORDER_NO }"/>
										</c:url>
										
										<c:if test="${orderList.ORDER_TYPE eq 0 }">입금전  
											[<a href="${viewURL }" >입금 완료</a>]
										</c:if>
										<c:if test="${orderList.ORDER_TYPE eq 1 }">입금완료
											[<a href="${viewURL }" >배송 시작</a>]
										</c:if>
										<c:if test="${orderList.ORDER_TYPE eq 2 }">배송시작
											[<a href="${viewURL }" >배송 완료</a>]
										</c:if>
										<c:if test="${orderList.ORDER_TYPE eq 3 }">
											배송완료
										</c:if>
										<c:if test="${orderList.ORDER_TYPE eq 4 }">주문취소
											[<a href="${viewURL }" >삭 제</a>]
										</c:if>
										
																								
									</tr>
								</c:forEach>

								<!--  등록된 상품이 없을때 -->
									<c:if test="${fn:length(orderList) == 0}">
									
										<tr><td colspan="11" style="text-align:center;">해당 되는 상품이 없습니다</td></tr>
									</c:if> 
								</tbody>
							</table>
						</div>
					</div>
					<div class="paging">
						${pagingHtml}
					</div>
					<div class="row">
							<div style="text-align:center;">
								<div id="dataTables-example_filter" class="dataTables_filter">
									<form action=""> 
									<select class="form-control" name="searchNum" id="searchNum">
										<option value="0">아이디</option>
										<option value="1">상품명</option>
									</select>
										<input class="form-control" type="text" name="isSearch" id="isSearch"/>
										<span>
										<button type="submit" class="btn btn-default">검색</button>
										</span>
									</form>
								</div>							
							</div>	
					</div>
				</div>
			</div>
			<!-- /.table-responsive -->							
		</div>
	</div>
        <!-- /.panel -->   
</div>
</body>