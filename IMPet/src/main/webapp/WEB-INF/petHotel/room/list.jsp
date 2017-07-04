<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">

function ajaxRoomView(no){
	
	var url1 = "/IMPet/PetHotel/RoomView?room_NO="+no;
	
    $.ajax({
      type : "GET",
      url : url1,
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {  
        $('#Context').html(data);
      }

    });
}

</script>

<div align="center">
	<table border="1">
		<c:forEach var="room" items="${list}">
			<tr><td>
			<h1><a href="#" onclick="ajaxRoomView(${room.ROOM_NO});">방 번호 : ${room.ROOM_NO} / 방 이름 : ${room.ROOM_NAME} / 방 가격 : ${room.ROOM_PRICE}</a></h1><br/>
			<h2>방 소개 : ${room.ROOM_DETAIL}</h2><br/>
			<h2>총 객실 : ${room.ROOM_TOTAL}</h2><br/>
			</td></tr>
		</c:forEach>
	</table>
</div>

<br/><br/>

<div align="center">
	<input value="룸 추가" type="button" onclick="location.href='/IMPet/PetHotel/RoomInsertForm'"/>
</div>

<br/><br/>