<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<c:if test="${sessionScope.member_Admin==1 }">
<div align="right">
	<input value="+ Add" class="button4 btn-4" type="button" onclick="ajaxRoomInsertForm()"/>
</div>
</c:if>

<div align="center">
	<table style="width: 100%">
		<c:forEach var="room" items="${list}">
			<tr>
				<td>
					<div class="con">
						<div>
							<img alt="s2" src="/IMPet/resources/image/hotel/roomImg/${room.ROOM_IMG}" onclick="ajaxRoomView(${room.ROOM_NO});" style="padding-left : 8px; width: 30%; height: 250px; float:left; ">
						</div>
						
						<div>
							 <a href="javascript:ajaxRoomView(${room.ROOM_NO});" >
							<%-- 방 번호 : ${room.ROOM_NO} --%>
							 <h3>&nbsp;&nbsp;${room.ROOM_NAME} <br/><br/></h3>
							 &nbsp;&nbsp;가격 : 1박당 ${room.ROOM_PRICE}원&nbsp;&nbsp;전체 객실 : ${room.ROOM_TOTAL}<br/>
							 &nbsp;&nbsp;${room.ROOM_DETAIL} <br/><br/></a>
							
						 </div>
					</div>
				</td>
				
			</tr>
		</c:forEach>
	</table>
</div>

<br/><br/>

<br/><br/>