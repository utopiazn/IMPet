<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<br/><br/>
<div align="center">
	<h1 class="listsub">펫호텔 예약 목록</h1>
				<table style="border:1px solid lightgray;">
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
									<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
									${res.RES_NO}
									</th>
									
									<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
									${res.MEMBER_ID}
									</th>
									
									<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
									${res.ROOM_NO}
									</th>
									
									<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
									${res.RES_PRICE}원
									</th>
									
									<th style="width: 10%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
									${res.RES_FIRSTDATE} ~ ${res.RES_LASTDATE}
									</th>
									
									<th style="width: 15%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
									${res.RES_REQUESTS}
									</th>
									
									<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;"> 
									<c:choose>
										<c:when test="${res.RES_STATE == 0}">
										입금 대기중
										</c:when>
										
										<c:when test="${res.RES_STATE == 1}">
										입금 완료
										</c:when>
										
										<c:when test="${res.RES_STATE == 2}">
										예약 취소
										</c:when>
										
										<c:otherwise>
										결재 오류
										</c:otherwise>
									</c:choose>
									</th>
									
									<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
										<c:if test="${res.RES_STATE != 1 && res.RES_STATE != 2}">
										<input value="입금 확인" class="button2" type="button"
										 style="margin: 5px;" onclick="location.href='/IMPet/PetHotel/RoomResPayment?res_NO=${res.RES_NO}'"/>
										<br/>
										</c:if>
										<input value="예약 삭제" class="button2" type="button"
										 style="margin: 5px;" onclick="location.href='/IMPet/PetHotel/RoomResDelete?res_NO=${res.RES_NO}'"/>
									</th>
								</tr>
							</c:forEach>
							</tbody>
						</c:when>
						
						<c:otherwise>
							<tbody>
								<tr>
									<th colspan="8" style="width: 100%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
									예약된 방이 없습니다.
									</th>
								</tr>
							</tbody>
						</c:otherwise>
					</c:choose>
				</table>

		
</div>