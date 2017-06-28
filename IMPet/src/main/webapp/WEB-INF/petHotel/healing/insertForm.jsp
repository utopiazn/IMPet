<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>HotelHealingForm</title>
</head>
<body>
<br/><br/>
HotelHealingInsertForm&HotelHealingModifyForm
<br/><br/>
<div align="center">
힐링시설을 추가할때
<br/>
<form action="PetHotel/HealingInsert" method="post">

room_NO : <input id="room_NO" type="text"/>
room_Name : <input id="room_Name" type="text"/>
room_IMG : <input id="room_IMG" type="text"/>
room_Detail : <input id="room_Detail" type="text"/>
room_Price : <input id="room_Price" type="text"/>
room_NUM : <input id="room_NUM" type="text"/>
room_Total : <input id="room_Total" type="text"/>



<input value="힐링 추가" type="submit"/>

</form>





<br/><br/>
힐링시설을 수정할때
<br/>
<input value="힐링 수정" type="button" onclick="location.href='/IMPet/PetHotel/HealingModify'"/>
</div>
</body>
</html>