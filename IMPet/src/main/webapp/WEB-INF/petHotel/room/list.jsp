<%@ page contentType="text/html charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>HotelRoomList</title>
</head>
<body>
<br/><br/>
HotelRoomList
<br/><br/>
<div align="center">
<table border="1">
<c:forEach var="room" items="${list}">
<tr><td>
<h1><a href="/IMPet/PetHotel/RoomView?room_NO=${room.ROOM_NO}">방 번호 : ${room.ROOM_NO} / 방 이름 : ${room.ROOM_NAME} / 방 가격 : ${room.ROOM_PRICE}</h1></a><br/>
<h2>방 소개 : ${room.ROOM_DETAIL}</h2><br/>
<h2>남은 객실 : ${room.ROOM_NUM}/${room.ROOM_TOTAL}</h2><br/>
</td></tr>
</c:forEach>
</table>
</div>

<br/><br/>

<div align="center">
<input value="룸 추가" type="button" onclick="location.href='/IMPet/PetHotel/RoomInsertForm'"/>
</div>
</body>
</html>