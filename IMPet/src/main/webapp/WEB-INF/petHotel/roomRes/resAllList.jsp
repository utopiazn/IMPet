<%@ page contentType="text/html; charset=UTF-8" %>

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
	<input value="예약 결제상태 변경" type="button" onclick="location.href='/IMPet/PetHotel/RoomResPayment'"/>
	<input value="예약 삭제" type="button" onclick="location.href='/IMPet/PetHotel/RoomResDelete'"/>
</div>

</body>
</html>