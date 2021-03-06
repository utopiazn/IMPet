<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">

<script type="text/javascript">
function ajaxPageView(page){	
	
	var dataList =
	{ 
		"PAGE" : page	
	}	

	var url1 = "/IMPet/PetHotel/RoomResListPage";
	
    $.ajax({    
     
    	type : "POST",
        url : url1,
        data : dataList,
        dataType : "text",      
        
        error : function() {
      	  
      		alert('페이징 오류');     	
        },
       
        success : function(data) {  
      		 $('#ContextMyPage').html(data);          		
        }
        
      });        

}
</script>

<div id="dataTables-example_wrapper" class="panel-body">
		<table class="table  table-bordered table-hover dataTable no-footer"
				id="dataTables-example" role="grid"
				aria-describedby="dataTables-example_info">
			<thead>
				<tr>
				<center>
				<img src="/IMPet/resources/image/hotel/hotelres.png" style="margin-top: -35px;">
				</tr>
				<tr style="vertical-align:middle; border:1px solid lightgray;">
					<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">예 약<br>번 호</th>
					<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">객 실<br>번 호</th>
					<th style="width: 10%; text-align:center;vertical-align:middle; border:1px solid lightgray;">객 실 이 름</th>
					<th style="width: 7%; text-align:center;vertical-align:middle; border:1px solid lightgray;">예 약 금 액</th>
					<th style="width: 10%; text-align:center;vertical-align:middle; border:1px solid lightgray;">예 약 기 간</th>
					<th style="width: 15%; text-align:center;vertical-align:middle; border:1px solid lightgray;">특 이 사 항</th>
					<th style="width: 7%; text-align:center;vertical-align:middle; border:1px solid lightgray;">결 재 상 태</th>
					<th style="width: 10%; text-align:center;vertical-align:middle; border:1px solid lightgray;">관리자 버튼</th>
				</tr>
			</thead>

			<c:choose>
			<c:when test="${list[0].RES_NO != null}">
			<tbody>		
				<c:forEach var="res" items="${list}">
				<tr style="vertical-align:middle; border:1px solid lightgray;">
					<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
					${res.RES_NO}
					</td>
					
					<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
					${res.ROOM_NO}
					</td>
					
					<td style="width: 10%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
					${res.ROOM_NAME}
					</td>
					
					<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
					${res.RES_PRICE}원
					</td>
					
					<td style="width: 10%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
					${res.RES_FIRSTDATE} ~<br/> ${res.RES_LASTDATE}
					</td>
					
					<td style="width: 15%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
					${res.RES_REQUESTS}
					</td>
					
					<td style="width: 7%; text-align:center;vertical-align:middle; border:1px solid lightgray;"> 
					<c:choose>
						<c:when test="${res.RES_STATE == 0}">
						예약 대기중
						</c:when>
						
						<c:when test="${res.RES_STATE == 1}">
						예약 완료
						</c:when>
						
						<c:when test="${res.RES_STATE == 2}">
						예약 취소
						</c:when>
						
						<c:otherwise>
						결재 오류
						</c:otherwise>
					</c:choose>
					</td>
					<td style="width: 10%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
					<c:if test="${res.RES_STATE == 0}">
						<input value="예약 취소" class="button2" type="button" onclick="ajaxRoomResCancel(${res.RES_NO});"/>
					</c:if>
					<c:if test="${res.RES_STATE == 1}">
						<small>예약 문의<br/>02)XXX-XXXX</small>
					</c:if>
					</td>
				</tr>
			</c:forEach>
			</tbody>
			</c:when>
			<c:otherwise>
			<tbody>
				<tr>
					<td colspan="8" style="width: 100%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
					예약한 방이 없습니다.
					</td>
				</tr>
			</tbody>		
			</c:otherwise>
			</c:choose>
		</table>
		<c:if test="${list[0].RES_NO != null}">
		<div class="paging">
		${pagingHtml} 
		</div>
		</c:if>
</div>