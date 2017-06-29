<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<br/>
<c:choose>
<c:when test="${view.HEALING_NO == null}">
힐링시설을 추가할때
<form action="HealingInsert" method="post">
healing_NO : <input name="healing_NO" type="text"/>
healing_Name : <input name="healing_Name" type="text"/><br/>
healing_Detail : <input name="healing_Detail" type="text"/><br/>
healing_Time : <input name="healing_Time" type="text"/><br/>
healing_Guide : <input name="healing_Guide" type="text"/><br/>
healing_IMG : <input name="healing_IMG" type="text"/><br/>

<input value="힐링 추가" type="submit"/>
</form>

</c:when>
<c:otherwise>
힐링시설을 수정할때
<form action="HealingModify" method="post">
healing_NO : ${view.HEALING_NO } <input name="healing_NO" type="hidden" value="${view.HEALING_NO }"/><br/>
healing_Name : <input name="healing_Name" type="text" value="${view.HEALING_NAME }"/><br/>
healing_Detail : <input name="healing_Detail" type="text" value="${view.HEALING_DETAIL}"/><br/>
healing_Time : <input name="healing_Time" type="text" value="${view.HEALING_TIME }"/><br/>
healing_Guide : <input name="healing_Guide" type="text" value="${view.HEALING_GUIDE }"/><br/>
healing_IMG : <input name="healing_IMG" type="text" value="${view.HEALING_IMG }"/><br/>

<input value="힐링 수정" type="submit"/>
</form>
</c:otherwise>
</c:choose>
</div>

</body>
</html>