<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>HotelRoomForm</title>
</head>
<body>
<br/><br/>
HotelRoomInsertForm&HotelModifyForm
<br/><br/>
<div align="center">
<br/>
<c:choose>
<c:when test="${view.ROOM_NO == null}">
룸을 추가할때
<form action="RoomInsert" method="post">
room_NO : <input name="room_NO" type="text"/>
room_Name : <input name="room_Name" type="text"/><br/>
room_IMG : <input name="room_IMG" type="text"/><br/>
room_Detail : <input name="room_Detail" type="text"/><br/>
room_Price : <input name="room_Price" type="text"/><br/>
room_NUM : <input name="room_NUM" type="text"/><br/>
room_Total : <input name="room_Total" type="text"/><br/>

<input value="룸 추가" type="submit"/>
</form>

</c:when>
<c:otherwise>
룸을 수정할때
<form action="RoomModify" method="post">
room_NO : ${view.ROOM_NO } <input name="room_NO" type="hidden" value="${view.ROOM_NO }"/><br/>
room_Name : <input name="room_Name" type="text" value="${view.ROOM_NAME }"/><br/>
room_IMG : <input name="room_IMG" type="text" value="${view.ROOM_IMG }"/><br/>
room_Detail : <input name="room_Detail" type="text" value="${view.ROOM_DETAIL}"/><br/>
room_Price : <input name="room_Price" type="text" value="${view.ROOM_PRICE }"/><br/>
room_NUM : <input name="room_NUM" type="text" value="${view.ROOM_NUM }"/><br/>
room_Total : <input name="room_Total" type="text" value="${view.ROOM_TOTAL }"/><br/>

<input value="룸 수정" type="submit"/>
</form>
</c:otherwise>
</c:choose>
</div>
</body>
</html>