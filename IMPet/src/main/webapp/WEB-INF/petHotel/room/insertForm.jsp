<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<div align="center">
	<br/>
	<c:choose>
		<c:when test="${view.ROOM_NO == null}">
			<div class="row" style="padding-left:15px;width:100;text-align:left;">
				
				<form id="insertForm" name="Insert" method="post" enctype="multipart/form-data" action="RoomInsert">
				
				<div class="panel panel-default">
					<div class="panel-heading" >PetHotel Room 추가 페이지입니다. 이미지 확인하십시오</div>
					
						
					<div class="panel-body" style=text-align:left;>
	                        <div class="form-group">
	                            <label>객실 번호</label>
	                            <input type="text" class="form-control" name="room_NO" style="width:40%;"/>
	                        </div>
	                        
	                        
	                        <div class="form-group">
	                            <label>객실 이름</label>
	                            <input type="text" class="form-control" name="room_Name" style="width:40%;"/>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>하루 요금</label>
	                            <input type="text" class="form-control" name="room_Price" style="width:40%;"/>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>전체 객실 수</label>
	                            <input type="text" class="form-control" name="room_Total" style="width:40%;"/>
	                        </div>
	                        
	                        <div class="file_input">
	                        	<b>객실 이미지</b><br/>
	                        	 
	                             <label>파일 첨부 
	                         
	                            <input type="file" name="room_IMG" onchange="javascript:document.getElementById('file_route').value=this.value" >                         
	                            </label>
	                            <input type="text" readonly="readonly" title="File Route" id="file_route" value="">
	                            <p class="help-block">객실 이미지 입니다 800x800 사이즈 권장합니다</p>
	                            
	                     	</div>
	                     	
	                     	<div class="form-group">
	                            <label>객실 설명</label>
	                            <textarea class="form-control" name="room_Detail" style="width:70%;"></textarea>
	                        </div>
	                 </div>      
				</div>
				<div align="center" style="width: 100%;">
				<input class="button2" value="객실 추가" type="submit"/>
				<input class="button2" value="뒤로가기" type="button" onclick="ajaxRoom()"/>
				</div>
				</form>
				
			</div>
		</c:when>
		
		<c:otherwise>		
		
			<div class="row" style="padding-left:15px;width:100;text-align:left;">
				
				<form name="Modify" method="post" enctype="multipart/form-data">
				<input name="room_NO" type="hidden" value="${view.ROOM_NO }"/>
				<input name="room_IMG" type="hidden" value="${view.ROOM_IMG}">
				<div class="panel panel-default">
					<div class="panel-heading" >PetHotel Room 수정 페이지입니다. 이미지 확인하십시오</div>
					
						
					<div class="panel-body" style=text-align:left;>
	                        <div class="form-group">
	                            <label>객실 번호</label><br/>
	                            ${view.ROOM_NO }
	                        </div>
	                        
	                        
	                        <div class="form-group">
	                            <label>객실 이름</label>
	                            <input type="text" class="form-control" name="room_Name" value="${view.ROOM_NAME }" style="width:40%;"/>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>하루 요금</label>
	                            <input type="text" class="form-control" name="room_Price" value="${view.ROOM_PRICE }" style="width:40%;"/>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>전체 객실 수</label>
	                            <input type="text" class="form-control" name="room_Total" value="${view.ROOM_TOTAL }" style="width:40%;"/>
	                        </div>
	                     	
	                     	<div class="form-group">
	                            <label>객실 설명</label>
	                            <textarea class="form-control" name="room_Detail" style="width:70%;">${view.ROOM_DETAIL}</textarea>
	                        </div>
	                 </div>      
				</div>
				<div align="center" style="width: 100%;">
				<input class="button2" value="객실 수정" type="button" onclick="ajaxRoomModify()"/>
				<input class="button2" value="뒤로가기" type="button" onclick="ajaxRoomView(${view.ROOM_NO})"/>
				</div>
				</form>
				
			</div>
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
