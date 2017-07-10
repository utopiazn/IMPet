<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>HotelReservation</title>

<style type="text/css">
.resDIV1{
border: 1px solid black;
width: 50%;
margin-bottom: 10px;
}

.resDIV2{
border: 1px solid black;
}
</style>

</head>
<body>
<br/><br/>
HotelReservation
<br/><br/>


<center>
<form action="RoomResSuccess" method="post">
<div class="resDIV1" >
	<input type="hidden" name="room_NO" value="${res.room_NO}">
	<input type="hidden" name="member_ID" value="${res.member_ID}">
	<input type="hidden" name="res_FirstDate" value="${res.res_FirstDate}">
	<input type="hidden" name="res_LastDate" value="${res.res_LastDate}">
	<input type="hidden" name="res_Price" value="${res.res_Price}">
	<input type="hidden" name="res_Requests" value="${res.res_Requests}">

	<div class="resDIV2">
		방번호 : ${res.room_NO} <br/>
		방이름 : ${res.room_Name}
	</div>
	
	<div class="resDIV2">
		예약 아이디 : ${res.member_ID}
	</div>
	
	<div class="resDIV2">
		예약날짜 : ${res.res_FirstDate} ~ ${res.res_LastDate}
	</div>
	
	<div class="resDIV2">
		예약금 : ${res.res_Price}
	</div>
	
	<div class="resDIV2">
		남은 객실수 : ${retotal.NUM} / ${res.room_Total}
	</div>

	<div class="resDIV2">
		기타 요구사항 : ${res.res_Requests}
	</div>

</div>

<div align="center" style=" margin-bottom: 20px;">
	<input value="예약 완료" type="submit" />
	<input value="뒤로가기" type="button" onclick="window.history.go(-1);"/>
</div>
</form>
</body>
</html>