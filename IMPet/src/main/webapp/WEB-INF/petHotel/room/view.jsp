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

<div style="float:left; width:80%; border:1px solid black; margin-right: 1px; height:40%;">
	<div align="center" style="width:100%; height:100%;">
	
		<div style="border:1px solid black; width:99%; height:80%;">
		이미지 들어갈 자리
		</div>
		
		<div style="width:100%; height:19%;">
		방 소개 : ${view.ROOM_DETAIL}<br/>
		</div>
	
	</div>
</div>


<div style="float:left; width:19%; border:1px solid black; height:40%; margin-bottom: 10px;">
	<form action="RoomReservation" method="post">
		<input name="room_NO" type="hidden" value="${view.ROOM_NO}"/>
		<input name="member_ID" type="hidden" value="utopiazn"/>
		<input name="res_Price" type="hidden" value="${view.ROOM_PRICE}"/>
		<input name="room_Name" type="hidden" value="${view.ROOM_NAME}"/>
		<input name="room_Total" type="hidden" value="${view.ROOM_TOTAL}"/>

		<div style="width:100%;">

			<div align="center">
				<br/>
				<font>방 번호 : ${view.ROOM_NO}</font><br/>
				<font>방 이름 : ${view.ROOM_NAME}</font><br/>
				<font>방 가격 : ${view.ROOM_PRICE}</font><br/>
				<font>총 객실 : ${view.ROOM_TOTAL}</font><br/>
			</div>
			
			<div align="left" style="margin-bottom:10px;">
				<br/>
				&nbsp;입실날짜 : <input name="res_FirstDate" type="date" style="width:60%; margin-bottom:3px;"/><br/>
				&nbsp;퇴실날짜 : <input name="res_LastDate" type="date" style="width:60%;"/><br/>
			</div>
			
			<div align="center">
				요구사항<br/>
				<textarea name="res_Requests" rows="5" style="width:90%;"></textarea>
			</div>
			
			
			
			
			res_NO DB에서 넣어야함<br>
			res_State DB에서 넣어야함<br>
			
			
			<input value="룸 예약하기" type="submit"/>
			
		</div>
	</form>
</div>

<div align="center" style="float:inherit; width:100%; margin-bottom: 20px;">
	<input value="룸 수정" type="button" onclick="location.href='/IMPet/PetHotel/RoomModifyForm?room_NO=${view.ROOM_NO}'"/>
	<input value="룸 삭제" type="button" onclick="location.href='/IMPet/PetHotel/RoomDelete?room_NO=${view.ROOM_NO}'"/>
	<input value="룸 리스트" type="button" onclick="location.href='/IMPet/PetHotel/RoomList'"/>
</div>

</body>
</html>