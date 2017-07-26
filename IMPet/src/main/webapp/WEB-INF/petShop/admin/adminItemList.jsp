<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<head>
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
<script type="text/javascript">
//주문번호 같은 열 합치는 Jquery

function delchk(){
    return confirm("삭제하시겠습니까?");
    
    
}
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
	<h1 class="page-header">상품목록</h1>
</div>
<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
                         [상품목록페이지] 상품을 검색, 수정, 삭제 기능하는 페이지입니다.
        </div>
        <div >
			<div >
				<div id="dataTables-example_wrapper"
					class="dataTables_wrapper form-inline dt-bootstrap no-footer">
					<div class="row" style="margin-bottom:5px; text-align:left;">
						<div class="col-sm-6">
							<a href="/IMPet/PetShop/AdminItemList"><button type="button" class="btn btn-outline btn-default">전체</button></a>
							<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--카테고리--</option>
								<option value ="/IMPet/PetShop/AdminItemList?searchNum=2&isSearch=0">사료</option>
								<option value ="/IMPet/PetShop/AdminItemList?searchNum=2&isSearch=1">간식</option>
								<option value ="/IMPet/PetShop/AdminItemList?searchNum=2&isSearch=2">패션의류</option>
								<option value ="/IMPet/PetShop/AdminItemList?searchNum=2&isSearch=3">목줄/야외</option>
								<option value ="/IMPet/PetShop/AdminItemList?searchNum=2&isSearch=4">생활/잡화</option> 
							</select>
							<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--상품구분--</option>
								<option value ="/IMPet/PetShop/AdminItemList?searchNum=3&isSearch=0">판매중</option>
								<option value ="/IMPet/PetShop/AdminItemList?searchNum=4&isSearch=0">품절상품</option>
							</select>			
							<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--상품정렬--</option>
								<option value ="/IMPet/PetShop/AdminItemList?searchNum=5&isSearch=0">재고량</option>
								<option value ="/IMPet/PetShop/AdminItemList?searchNum=6&isSearch=0">판매량</option>
							</select>											
						</div>
						<div class="col-sm-6" style="text-align:right;">
							<div class="dataTables_info" id="dataTables-example_info" role="status" aria-live="polite">총 상품수 : ${totalCount}</div>
						</div>
						
					</div>
					<div class="row">
						<div>
							<table
								class="table  table-bordered table-hover dataTable no-footer"
								id="dataTables-example" role="grid"
								aria-describedby="dataTables-example_info">
								<thead>
									<tr role="row" style="vertical-align:middle;">
										<th style="width: 5%; text-align:center;vertical-align:middle;">상품번호</th>
										<th style="width: 8%; text-align:center;vertical-align:middle;">상품 사진</th>										
										<th style="width: 7%; text-align:center;vertical-align:middle;">카테고리</th>
										<th style="width: 20%; text-align:center;vertical-align:middle;">상품명</th>
										<th style="width: 8%; text-align:center;vertical-align:middle;">가격</th>
										<th style="width: 7%; text-align:center;vertical-align:middle;">총수량</th>
										<th style="width: 7%; text-align:center;vertical-align:middle;">재고수량</th>
										<th style="width: 7%; text-align:center;vertical-align:middle;">판매량</th>							
										<th style="width: 13%; text-align:center;vertical-align:middle;">관리</th>
									</tr>
								</thead>
								<tbody>

								<c:forEach var="itemList"  items="${itemList}" varStatus="stat">
									<c:url var="viewURL" value="/PetShop/AdminItemModifyForm" >
										<c:param name="ITEM_NO" value="${itemList.ITEM_NO }" />
									</c:url>			
															
									<c:url var="viewURL2" value="/PetShop/AdminItemDelete" >
										<c:param name="ITEM_NO" value="${itemList.ITEM_NO }" />							
									</c:url>
									
									<tr class="gradeA even" role="row">
										<td style="text-align:center;vertical-align:middle;">${itemList.ITEM_NO}<div style='display:none;'>${itemList.ITEM_NO}</div></td>										
										<td style="text-align:center;vertical-align:middle;"><img src="/IMPet/resources/image/itemImg/${itemList.ITEM_IMG}" width="60" height="60" alt=""  onerror="this.src='/SIRORAGI/file/noimg_130.gif'" /><div style='display:none;'>${itemList.ITEM_NO}</div></td>
										<td style="text-align:center;vertical-align:middle;">
											<c:if test="${itemList.ITEM_TYPE eq 0 }">사료</c:if>
											<c:if test="${itemList.ITEM_TYPE eq 1 }">간식</c:if>
											<c:if test="${itemList.ITEM_TYPE eq 2 }">의류</c:if>
											<c:if test="${itemList.ITEM_TYPE eq 3 }">장난감</c:if>
											<c:if test="${itemList.ITEM_TYPE eq 4 }">잡화</c:if>
											<div style='display:none;'>${itemList.ITEM_NO}</div>
										</td>
										<td style="text-align:center;vertical-align:middle;">${itemList.ITEM_NAME}<div style='display:none;'>${itemList.ITEM_NO}</div></td>

										<c:if test="${itemList.ITEM_DCPRICE != null}">
										<td style="text-align:center;vertical-align:middle;">
												<del><fmt:formatNumber value="${itemList.ITEM_PRICE}" type="number"/>원<br/></del>
												<fmt:formatNumber value="${itemList.ITEM_DCPRICE}" type="number"/>원<div style='display:none;'>${itemList.ITEM_NO}</div></td>
										</c:if>
										<c:if test="${itemList.ITEM_DCPRICE == null}">
											<td style="text-align:center;vertical-align:middle;">
												<fmt:formatNumber value="${itemList.ITEM_PRICE}" type="number"/>원<div style='display:none;'>${itemList.ITEM_NO}</div></td>
										</c:if>
										
										<td style="text-align:center;vertical-align:middle;">${itemList.ITEM_TOTALCOUNT}개<div style='display:none;'>${itemList.ITEM_NO}</div></td>
										<td style="text-align:center;vertical-align:middle;">${itemList.ITEM_REMAINCOUNT}개<div style='display:none;'>${itemList.ITEM_NO}</div></td>
										<td style="text-align:center;vertical-align:middle;">${itemList.ITEM_SELLCOUNT}개<div style='display:none;'>${itemList.ITEM_NO}</div></td>																	
										<td style="text-align:center;vertical-align:middle;">
										
										<a href="${viewURL}"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cog_font_awesome.svg/32px-Cog_font_awesome.svg.png"></a>&nbsp;&nbsp;
										 <a href="${viewURL2}"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png" onclick="return delchk()"></a><div style='display:none;'>${itemList.ITEM_NO}</div></td>									
									</tr>
								</c:forEach>

								<!--  등록된 상품이 없을때 -->
									<c:if test="${fn:length(itemList) == 0}">
									
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
										<option value="0">상품명</option>
										<option value="1">상품번호</option>
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