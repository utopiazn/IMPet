<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<script type="text/javascript">
$(document).ready(function(){
	var fileTarget = $('.boardWrite .upload-hidden');
	
	fileTarget.on('change', function(){// 값이 변경되면
		if(window.FileReader){ // modern browser
			var filename = $(this)[0].files[0].name;
		} else { // old IE
			var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출
		} // 추출한 파일명 삽입
		
		$(this).siblings('.upload-name').val(filename);
	}); 
});
</script>

<div align="center">
	<br/>
	<c:choose>
		<c:when test="${view.ROOM_NO == null}">
			<form id="insertForm" name="Insert" method="post" enctype="multipart/form-data" action="RoomInsert">
			<div style="border: 1px solid lightgray; width: 100%; height: 400px;">
				<div class="resArea" style="width: 50%">
					<h3>Pet Hotel Room Insert</h3>
					<div class="boardWrite">
						<table border="1" summary="">
						
							<tbody>
								<tr>
									<th scope="row">객실 번호</th>
									<td><input name="room_NO" id=room_NO type="text"/></td>
								</tr>
								<tr>
									<th scope="row">객실 이름</th>
									<td><input name="room_Name" type="text"/></td>
								</tr>
								<tr>
									<th scope="row">객실 이미지</th>
									<td>
									<input class="upload-name" value="이미지선택" disabled="disabled">
									<label for="room_file">가져오기</label>
									<input id="room_file" class="upload-hidden" name="room_IMG" type="file">
									</td>
								</tr>
								<tr>
									<th scope="row">하루 요금</th>
									<td><input name="room_Price" type="text"/> 원</td>
								</tr>
								
								<tr>
									<th scope="row">전체 객실 수</th>
									<td><input name="room_Total" type="text"/></td>
								</tr>
								
								<tr>
									<th scope="row">객실 설명</th>
									<td>
									<textarea name="room_Detail" style="width: 80%; height: 70px;"></textarea>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				
				<div align="center" style="width: 50%; float: inherit; color: gray; border-top: 1px solid lightgray; padding-top: 10px;">
					<input class="button2" value="객실 추가" type="submit"/>
					<input class="button2" value="뒤로가기" type="button" onclick="ajaxRoom()"/>
				</div>
			</div>
			</form>
		</c:when>
		
		
		<c:otherwise>		
			<form name="Modify" method="post" enctype="multipart/form-data">
			<input name="room_NO" type="hidden" value="${view.ROOM_NO }"/>
			<input name="room_IMG" type="hidden" value="${view.ROOM_IMG}">
			<div style="border: 1px solid lightgray; width: 100%; height: 360px;">
				<div class="resArea" style="width: 50%">
					<h3>Pet Hotel Room Modify</h3>
					<div class="boardWrite">
						<table border="1" summary="">
						
							<tbody>
								<tr>
									<th scope="row">객실 번호</th>
									<td>${view.ROOM_NO }</td>
								</tr>
								<tr>
									<th scope="row">객실 이름</th>
									<td><input name="room_Name" type="text" value="${view.ROOM_NAME }"/></td>
								</tr>
								<tr>
									<th scope="row">하루 요금</th>
									<td><input name="room_Price" type="text" value="${view.ROOM_PRICE }"/> 원</td>
								</tr>
								
								<tr>
									<th scope="row">전체 객실 수</th>
									<td><input name="room_Total" type="text" value="${view.ROOM_TOTAL }"/></td>
								</tr>
								
								<tr>
									<th scope="row">객실 설명</th>
									<td>
									<textarea name="room_Detail" style="width: 80%; height: 70px;">${view.ROOM_DETAIL}</textarea>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				
				<div align="center" style="width: 50%; float: inherit; color: gray; border-top: 1px solid lightgray; padding-top: 10px;">
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
