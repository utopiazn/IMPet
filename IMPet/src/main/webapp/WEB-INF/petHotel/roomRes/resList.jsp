<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<br/><br/>


<div align="center">
	HotelReservationList(고객용)
	<br/><br/>	
	<c:forEach var="res" items="${list}">
		<div style="border:1px solid black; width: 90%; margin:5px; float: left;">
			예약 번호 : ${res.RES_NO} / 방 번호 : ${res.ROOM_NO} / 예약금 : ${res.RES_PRICE}<br/>
			예약기간 : ${res.RES_FIRSTDATE} ~ ${res.RES_LASTDATE} / 특이사항 : ${res.RES_REQUESTS}<br/>
			결재상태 : ${res.RES_STATE}
		</div>
		<div style="margin: 5px; float: left;">
			<input value="예약 취소" type="button" onclick="location.href='/IMPet/PetHotel/RoomResCancel'"/>
		</div>
	</c:forEach>
</div>