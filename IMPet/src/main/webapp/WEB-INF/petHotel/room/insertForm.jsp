<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div align="center">
	<br/>
	<c:choose>
		<c:when test="${view.ROOM_NO == null}">
		
			<script type="text/javascript">
				function ajaxRoomInsert(){
					
					var obj = document.Insert;
					
					var url1 = "/IMPet/PetHotel/RoomInsert";
					
					var formData = 
					{ "room_NO" : obj.room_NO.value,
					  "room_Name" : obj.room_Name.value,
					  "room_IMG" : obj.room_IMG.value,
					  "room_Detail" : obj.room_Detail.value,
					  "room_Price" : obj.room_Price.value,
					  "room_Total" : obj.room_Total.value		
					}
					
				    $.ajax({
				      type : "POST",
				      url : url1,
				      data : formData,
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
		
			룸을 추가할때
			<form name="Insert" method="post">
				room_NO : <input name="room_NO" id=room_NO type="text"/>
				room_Name : <input name="room_Name" type="text"/><br/>
				room_IMG : <input name="room_IMG" type="text"/><br/>
				room_Detail : <input name="room_Detail" type="text"/><br/>
				room_Price : <input name="room_Price" type="text"/><br/>
				room_Total : <input name="room_Total" type="text"/><br/>
				
				<input value="룸 추가" type="button" onclick="ajaxRoomInsert();"/>
			</form>
			
		</c:when>
		<c:otherwise>
		
			<script type="text/javascript">
				function ajaxRoomModify(){
					
					var obj = document.Modify;
					
					var url1 = "/IMPet/PetHotel/RoomModify";
					
					var formData = 
					{ "room_NO" : obj.room_NO.value,
					  "room_Name" : obj.room_Name.value,
					  "room_IMG" : obj.room_IMG.value,
					  "room_Detail" : obj.room_Detail.value,
					  "room_Price" : obj.room_Price.value,
					  "room_Total" : obj.room_Total.value		
					}
					
				    $.ajax({
				      type : "POST",
				      url : url1,
				      data : formData,
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
		
			룸을 수정할때
			<form name="Modify" method="post">
				room_NO : ${view.ROOM_NO } <input name="room_NO" type="hidden" value="${view.ROOM_NO }"/><br/>
				room_Name : <input name="room_Name" type="text" value="${view.ROOM_NAME }"/><br/>
				room_IMG : <input name="room_IMG" type="text" value="${view.ROOM_IMG }"/><br/>
				room_Detail : <input name="room_Detail" type="text" value="${view.ROOM_DETAIL}"/><br/>
				room_Price : <input name="room_Price" type="text" value="${view.ROOM_PRICE }"/><br/>
				room_Total : <input name="room_Total" type="text" value="${view.ROOM_TOTAL }"/><br/>
				
				<input value="룸 추가" type="button" onclick="ajaxRoomModify();"/>
			</form>
		</c:otherwise>
	</c:choose>
</div>







<!-- $.ajax ({

type : "GET",                     // GET 또는 POST

url : 'updatetest.htm',          // 서버측에서 가져올 페이지

data : 'a=1&b=2&c=3',       // 서버측에 전달할 parameter

timeout : 5000,                  // 응답대기시간 

dataType : 'html',               // html , javascript, text, xml, jsonp 등이 있다

beforeSend: function() {      // ajax 요청하기전에 실행되는 함수

},

         success : function(data) {     // 정상적으로 완료되었을 경우에 실행된다

dataAct(data);              // data 인수에는 return 되어진 data 가 저장되어 있다

},

error : function(request, status, error ) {   // 오류가 발생했을 때 호출된다. 

console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

},

complete : function () {   // 정상이든 비정상인든 실행이 완료될 경우 실행될 함수

}

}); -->
