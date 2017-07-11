<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>HotelReservationAllList(관리자용)</title>
</head>
<body>
<br/><br/>
HotelReservationAllList(관리자용)<input value="고객용리스트" type="button" onclick="location.href='/IMPet/PetHotel/RoomResList'"/>
<br/><br/>
<div align="center">
	<c:forEach var="res" items="${list}">
		<div style="border:1px solid black; width: 90%; margin-bottom: 5px">
			예약 번호 : ${res.RES_NO} / 방 번호 : ${res.ROOM_NO} / 예약금 : ${res.RES_PRICE}<br/>
			예약기간 : ${res.RES_FIRSTDATE} ~ ${res.RES_LASTDATE} / 특이사항 : ${res.RES_REQUESTS}<br/>
			예약아이디 : ${res.MEMBER_ID} / 결재상태 : ${res.RES_STATE}
		</div>
		<div style="margin-bottom: 20px">
			<input value="예약 결제상태 변경" type="button" onclick="location.href='/IMPet/PetHotel/RoomResPayment'"/>
			<input value="예약 삭제" type="button" onclick="location.href='/IMPet/PetHotel/RoomResDelete'"/>
		</div>
	</c:forEach>
</div>


</body>
</html>