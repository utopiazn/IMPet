<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">


</script>

<div align="center">
	<table>
		<c:forEach var="room" items="${list}">
			<tr>
				<td style="width: 30%;">
					<div style="margin-top: 5px; border:1px solid lightgray; width: 100%; height: 220px; float:left;">
						<img alt="s2" src="/IMPet/resources/image/dog1.jpg" style="width: 100%; height: 100%;">
					</div>
				</td>
				
				<td style="width: 70%;">
					<div style="margin-top: 5px; border:1px solid lightgray; width: 100%; height: 220px; float:left;">
						<h1><a href="javascript:ajaxRoomView(${room.ROOM_NO});">방 번호 : ${room.ROOM_NO} / 방 이름 : ${room.ROOM_NAME} / 방 가격 : ${room.ROOM_PRICE}</a></h1><br/>
						<h2>방 소개 : ${room.ROOM_DETAIL} / 총 객실 : ${room.ROOM_TOTAL}</h2><br/>
					</div>
				</td>
				
			</tr>
		</c:forEach>
	</table>
</div>

<br/><br/>
<c:if test="${sessionScope.member_Admin==1 }">
<div align="center">
	<input value="룸 추가" type="button" onclick="ajaxRoomInsertForm()"/>
</div>
</c:if>
<br/><br/>