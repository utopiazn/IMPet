<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<br/><br/>


<div align="center">
	<font size="6px">예약 정보 목록</font>
	<br/><br/>
	<c:choose>
		<c:when test="${list[0].RES_NO != null}">
		<c:forEach var="res" items="${list}">
			<div style="border:1px solid lightgray; width: 100%; height: 100px; margin-bottom: 15px;">
				<div style="border:1px solid lightgray; width: 88%; height: 88px; margin: 5px; float: left;">
					예약 번호 : ${res.RES_NO} / 방 번호 : ${res.ROOM_NO} / 예약금 : ${res.RES_PRICE}<br/>
					예약기간 : ${res.RES_FIRSTDATE} ~ ${res.RES_LASTDATE} / 특이사항 : ${res.RES_REQUESTS}<br/>
					결재상태 : 
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
				</div>
				
				<c:if test="${res.RES_STATE != 2}">
				<div style="width: 8%; height: 88px; margin: 5px; float: left;">
					<input value="예약 취소" class="button2" type="button" onclick="ajaxRoomResCancel(${res.RES_NO});"/>
				</div>
				</c:if>
			</div>
		</c:forEach>
		</c:when>
		<c:otherwise>
		<div style="border:1px solid lightgray; width: 100%; height: 100px; margin-bottom: 15px; padding-top: 15px;">
		예약한 방이 없습니다.
		</div>
		</c:otherwise>
	</c:choose>
</div>