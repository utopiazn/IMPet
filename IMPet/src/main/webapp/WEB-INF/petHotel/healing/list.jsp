<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div align="center">
	<table border="1">
		<c:forEach var="Healing" items="${list}">
			<tr><td>
			<h1><a href="/IMPet/PetHotel/HealingView?healing_NO=${Healing.HEALING_NO}">힐링 번호 : ${Healing.HEALING_NO} / 힐링 이름 : ${Healing.HEALING_NAME}</h1></a><br/>
			<h2>힐링 소개 : ${Healing.HEALING_DETAIL}</h2><br/>
			</td></tr>
		</c:forEach>
	</table>
</div>

<br/><br/>

<div align="center">
<input value="힐링 추가" type="button" onclick="location.href='/IMPet/PetHotel/HealingInsertForm'"/>
</div>

<br/><br/>