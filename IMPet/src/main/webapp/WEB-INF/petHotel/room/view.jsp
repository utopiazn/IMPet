<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>HotelRoomView</title>
</head>
<body>
<br/><br/>
HotelRoomView
<br/><br/>

<div align="center">
<table border="1">
<tr><td>
<h1>방 번호 : ${view.ROOM_NO} / 방 이름 : ${view.ROOM_NAME} / 방 가격 : ${view.ROOM_PRICE}</h1><br/>
<h2>방 소개 : ${view.ROOM_DETAIL}</h2><br/>
</td></tr>
</table>
</div>


<div align="center">
<input value="룸 예약" type="button" onclick="location.href='/IMPet/PetHotel/RoomReservation'"/>
<input value="룸 수정" type="button" onclick="location.href='/IMPet/PetHotel/RoomModifyForm'"/>
<input value="룸 삭제" type="button" onclick="location.href='/IMPet/PetHotel/RoomDelete'"/>
<input value="룸 리스트" type="button" onclick="location.href='/IMPet/PetHotel/RoomList'"/>
</div>
</body>
</html>