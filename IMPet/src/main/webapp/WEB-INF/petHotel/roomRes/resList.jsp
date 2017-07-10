<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>HotelReservationList(고객용)</title>
</head>
<body>
<br/><br/>
HotelReservationList(고객용)<input value="관리자리스트" type="button" onclick="location.href='/IMPet/PetHotel/RoomResAllList'"/>
<br/><br/>
<div align="center">
	<c:forEach var="res" items="${list}">
		<div style="border:1px solid black; width: 100%; height: 220px; float:left;">
			예약 번호 : ${res.RES_NO} / 방 번호 : ${res.ROOM_NO} / 예약금 : ${res.RES_PRICE}<br/>
			예약기간 : ${res.RES_FIRSTDATE} ~ ${res.RES_LASTDATE} / 특이사항 : ${res.RES_REQUESTS}<br/>
			결재상태 : ${res.RES_STATE}
		</div>
	</c:forEach>
</div>
<div align="center">
	<input value="예약 취소" type="button" onclick="location.href='/IMPet/PetHotel/RoomResCancel'"/>
</div>

</body>
</html>