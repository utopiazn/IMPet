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

function ajaxRoomInsert(){
	
	var url1 = "/IMPet/PetHotel/RoomInsertForm";
	
    $.ajax({
      type : "POST",
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
	<table>
		<c:forEach var="room" items="${list}">
			<tr><td style="width: 30%;">
				<div style="border:1px solid black; width: 100%; height: 220px; float:left;">
					<img alt="s2" src="/IMPet/resources/image/dog1.jpg" style="width: 100%; height: 100%;">
				</div>
				</td>
				<td style="width: 70%;">
				<div style="border:1px solid black; width: 100%; height: 220px; float:left;">
					<h1><a href="#" onclick="ajaxRoomView(${room.ROOM_NO});">방 번호 : ${room.ROOM_NO} / 방 이름 : ${room.ROOM_NAME} / 방 가격 : ${room.ROOM_PRICE}</a></h1><br/>
					<h2>방 소개 : ${room.ROOM_DETAIL} / 총 객실 : ${room.ROOM_TOTAL}</h2><br/>
				</div>
				</td></tr>
		</c:forEach>
	</table>
</div>

<br/><br/>

<div align="center">
	<input value="룸 추가" type="button" onclick="ajaxRoomInsert()"/>
</div>

<br/><br/>