<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">

.button2 {
  background: #333;
  color: #ccc;
  width: 100px;
  height: 30px;
  border: 0;
  font-size: 15px;
  border-radius: 4px;
  font-family: 'Noto sans KR', sans-serif;
  -webkit-transition: .6s;
  transition: .6s;
  overflow: hidden;
}
.button:focus2 {
  outline: 0;
}
.button2:before {
  content: '';
  display: block;
  position: absolute;
  background: rgba(255, 255, 255, 0.5);
  width: 60px;
  height: 100%;
  left: 0;
  top: 0;
  opacity: .5;
  -webkit-filter: blur(30px);
          filter: blur(30px);
  -webkit-transform: translateX(-100px) skewX(-15deg);
          transform: translateX(-100px) skewX(-15deg);
}
.button2:after {
  content: '';
  display: block;
  position: absolute;
  background: rgba(255, 255, 255, 0.2);
  width: 30px;
  height: 100%;
  left: 30px;
  top: 0;
  opacity: 0;
  -webkit-filter: blur(5px);
          filter: blur(5px);
  -webkit-transform: translateX(-100px) skewX(-15deg);
          transform: translateX(-100px) skewX(-15deg);
}
.button2:hover {
  background: #727070;
  cursor: pointer;
}
.button2:hover:before {
  -webkit-transform: translateX(300px) skewX(-15deg);
          transform: translateX(300px) skewX(-15deg);
  opacity: 0.6;
  -webkit-transition: .7s;
  transition: .7s;
}
.button2:hover:after {
  -webkit-transform: translateX(300px) skewX(-15deg);
          transform: translateX(300px) skewX(-15deg);
  opacity: 1;
  -webkit-transition: .7s;
  transition: .7s;
}


.roomIns{
width : 40%;
height : 28px;
border : 1px solid lightgray;
margin-bottom : 10px;
margin-right : 30%;
float: left;
}

.roomSub{
width : 20%;
height : 32px;
text-align: center;
vertical-align : middle;
float: left;
}

.filebutton[value="aaa"]{
color: #ccc;
}
</style>


<div align="center">
	<br/>
	<c:choose>
		<c:when test="${view.ROOM_NO == null}">
		
			<form id="insertForm" name="Insert" method="post" enctype="multipart/form-data" action="RoomInsert">
			<div align="left" style="width: 50%; color: gray;" >
				
				<h2 style="color: gray; border-bottom: 1px solid lightgray;">Pet Hotel Room Insert</h2>
				<div class="roomSub">
					객실 번호
				</div>	
				
				<input class="roomIns" name="room_NO" id=room_NO type="text"/>
				
				<div class="roomSub">
					객실 이름
				</div>
				
				<input class="roomIns" name="room_Name" type="text"/>
				
				<div class="roomSub">
					객실 이미지
				</div>
				
				<div class="roomIns" style="height: 30px;">
					<input name="room_IMG" type="file">
				</div>
				
				<div class="roomSub">
				 	하루 요금
				</div>
				
				<input class="roomIns" name="room_Price" type="text"/>
				
				<div class="roomSub">
					전체 객실 수
				</div>
				
				<input class="roomIns" name="room_Total" type="text"/>
				
				<div class="roomSub">
					객실 설명
				</div>
				
				<textarea class="roomIns" name="room_Detail" style="height: 70px;"></textarea>
				
				<div align="center" style="width: 100%; float: left; color: gray; border-top: 1px solid lightgray; padding-top: 10px;">
					<input class="button2" value="객실 추가" type="submit"/>
					<input class="button2" value="뒤로가기" type="button" onclick="ajaxRoom()"/>
				</div>
			</div>
			</form>
		</c:when>
		
		
		<c:otherwise>		
		
			<form name="Modify" method="post" enctype="multipart/form-data">
			
			<div align="left" style="width: 50%; color: gray;" >
				<input name="room_NO" type="hidden" value="${view.ROOM_NO }"/>
				<input name="room_IMG" type="hidden" value="${view.ROOM_IMG}">
				
				<h2 style="color: gray; border-bottom: 1px solid lightgray;">Pet Hotel Room Modify</h2>
				<div class="roomSub">
					객실 번호
				</div>	
				
				<div class="roomIns" style="height : 32px; border : 1px solid white;">
				${view.ROOM_NO } 
				</div>
				
				<div class="roomSub">
					객실 이름
				</div>
				
				<input class="roomIns" name="room_Name" type="text" value="${view.ROOM_NAME }"/>
				
				<div class="roomSub">
				 	하루 요금
				</div>
				
				<input class="roomIns" name="room_Price" type="text" value="${view.ROOM_PRICE }"/>
				
				<div class="roomSub">
					전체 객실 수
				</div>
				
				<input class="roomIns" name="room_Total" type="text" value="${view.ROOM_TOTAL }"/>
				
				<div class="roomSub">
					객실 설명
				</div>
				
				<textarea class="roomIns" name="room_Detail" style="height: 70px;">${view.ROOM_DETAIL}</textarea>
				
				<div align="center" style="width: 100%; float: left; color: gray; border-top: 1px solid lightgray; padding-top: 10px;">
					<input class="button2" value="객실 수정" type="button" onclick="ajaxRoomModify()"/>
					<input class="button2" value="뒤로가기" type="button" onclick="ajaxRoom()"/>
				</div>
			</div>
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
