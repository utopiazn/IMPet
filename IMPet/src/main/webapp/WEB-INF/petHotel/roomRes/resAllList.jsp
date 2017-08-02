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

	var url1 = "/IMPet/PetHotel/RoomResAllListPage";
	
    $.ajax({    
     
    	type : "POST",
        url : url1,
        data : dataList,
        dataType : "text",      
        
        error : function() {
      	  
      		alert('페이징 오류');     	
        },
       
        success : function(data) {  
      		 $('#ContextHotel').html(data);          		
        }
        
      });        

}
</script>
<div class="row" >
	<h1 class="page-header">펫호텔 예약 목록</h1>
</div>
	
<div class="row">
	<div class="panel panel-default">
	 <div class="panel-heading">
                         [펫호텔 예약 목록] 펫호텔 예약 관리 페이지 입니다.
        </div>
	
	<div id="dataTables-example_wrapper" class="panel-body">
				<table class="table  table-bordered table-hover dataTable no-footer"
				id="dataTables-example" role="grid"
				aria-describedby="dataTables-example_info">
					<thead>
						<tr style="vertical-align:middle; border:1px solid lightgray;">
							<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">예 약 번 호</th>
							<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">예약아이디</th>
							<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">객 실 번 호</th>
							<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">예 약 금 액</th>
							<th style="width: 10%; text-align:center;vertical-align:middle; border:1px solid lightgray;">예 약 기 간</th>
							<th style="width: 15%; text-align:center;vertical-align:middle; border:1px solid lightgray;">특 이 사 항</th>
							<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">결 재 상 태</th>
							<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">관리자 버튼</th>
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
									${res.MEMBER_ID}
									</td>
									
									<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
									${res.ROOM_NO}
									</td>
									
									<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
									${res.RES_PRICE}원
									</td>
									
									<td style="width: 10%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
									${res.RES_FIRSTDATE} ~ ${res.RES_LASTDATE}
									</td>
									
									<td style="width: 15%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
									${res.RES_REQUESTS}
									</td>
									
									<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;"> 
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
									
									<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
										<c:if test="${res.RES_STATE != 1 && res.RES_STATE != 2}">
										<input value="예약 확인" class="button2" type="button"
										 style="margin: 5px;" onclick="location.href='/IMPet/PetHotel/RoomResPayment?res_NO=${res.RES_NO}'"/>
										<br/>
										</c:if>
										<input value="예약 삭제" class="button2" type="button"
										 style="margin: 5px;" onclick="location.href='/IMPet/PetHotel/RoomResDelete?res_NO=${res.RES_NO}'"/>
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</c:when>
						
						<c:otherwise>
							<tbody>
								<tr>
									<td colspan="8" style="width: 100%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
									예약된 방이 없습니다.
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
		</div>
</div>