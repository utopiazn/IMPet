<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>HotelHealingView</title>
</head>
<body>
<br/><br/>
HotelHealingView
<br/><br/>

<div align="center">
<table border="1">
<tr><td>
<h1>방 번호 : ${view.HEALING_NO} / 방 이름 : ${view.HEALING_NAME}</h1><br/>
<h2>방 소개 : ${view.HEALING_DETAIL}</h2><br/>
</td></tr>
</table>
</div>

<div align="center">
<input value="힐링 수정" type="button" onclick="location.href='/IMPet/PetHotel/HealingModifyForm?healing_NO=${view.HEALING_NO}'"/>
<input value="힐링 삭제" type="button" onclick="location.href='/IMPet/PetHotel/HealingDelete?healing_NO=${view.HEALING_NO}'"/>
<input value="힐링 리스트" type="button" onclick="location.href='/IMPet/PetHotel/HealingList'"/>
</div>
</body>
</html>