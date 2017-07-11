<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">

function ajaxRoom(){
    $.ajax({
      type : "POST",
      url : "/IMPet/PetHotel/RoomList",
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {
        $('#ContextHotel').html(data);
      }

    });
}

function ajaxRoomModifyForm(no){
	
	var url1 = "/IMPet/PetHotel/RoomModifyForm";
	
	var formData = {"room_NO" : no}
	
    $.ajax({
      type : "POST",
      url : url1,
      data : formData,
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {
        $('#ContextHotel').html(data);
      }

    });
}

function ajaxRoomDelete(no){
	
	var url1 = "/IMPet/PetHotel/RoomDelete";
	
	var formData = {"room_NO" : no}
	
    $.ajax({
      type : "POST",
      url : url1,
      data : formData,
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {
        $('#ContextHotel').html(data);
      }

    });
}

</script>




	<div style="float:left; width:80%; border:1px solid black; margin-right: 1px; height:500px;">
		<div align="center" style="width:100%; height:100%;">
		
			<div style="width:99%; height:80%;">
			<img alt="s2" src="/IMPet/resources/image/dog1.jpg" style="width: 100%; height: 100%;">
			</div>
			
			<div align="left" style="width:100%; height:19%;">
			&nbsp;&nbsp;방 소개 : ${view.ROOM_DETAIL}<br/>
			</div>
		
		</div>
	</div>
	
	
	<div style="float:left; width:19%; border:1px solid black; height:500px; margin-bottom: 10px;">
		<form name="RoomReservation" action="RoomReservation" method="post" onsubmit="return ReservationCH(this);">
			<input name="room_NO" type="hidden" value="${view.ROOM_NO}"/>
			<input name="member_ID" type="hidden" value="${sessionScope.member_ID}"/>
			<input name="res_Price" type="hidden" value="${view.ROOM_PRICE}"/>
			<input name="room_Name" type="hidden" value="${view.ROOM_NAME}"/>
			<input name="room_Total" type="hidden" value="${view.ROOM_TOTAL}"/>
	
			<div style="width:100%;">
	
				<div align="center">
					<br/>
					<font>방 번호 : ${view.ROOM_NO}</font><br/>
					<font>방 이름 : ${view.ROOM_NAME}</font><br/>
					<font>방 가격 : ${view.ROOM_PRICE}</font><br/>
					<font>총 객실 : ${view.ROOM_TOTAL}</font><br/>
				</div>
				
				<div align="left" style="margin-bottom:10px;">
					<br/>
					<c:set var="cDate" value="<%=new IMPet.util.ProjectUtil().getDate()%>"/>
					<input name="curDate" type="hidden" value="${cDate}"/>
					&nbsp;입실날짜 : <input name="res_FirstDate" type="date" style="width:60%; margin-bottom:3px;"/><br/>
					&nbsp;퇴실날짜 : <input name="res_LastDate" type="date" style="width:60%;"/><br/>
				</div>
				
				<div align="center">
					요구사항<br/>
					<textarea name="res_Requests" rows="5" style="width:90%;"></textarea>
				</div>
				
				
				
				
				res_NO DB에서 넣어야함<br>
				res_State DB에서 넣어야함<br>
				
				<c:if test="${sessionScope.member_ID!=null}">
				<input value="룸 예약하기" type="submit"/>
				</c:if>
				<c:if test="${sessionScope.member_ID==null}">
				<small>펫호텔예약은 로그인 후 이용가능합니다.</small><br/>
				<input value="로그인" type="button" onclick="location.href='/IMPet/Member/LoginForm'"/>
				</c:if>
			</div>
		</form>
	</div>
<br/>
<div align="center" style="float:inherit; width:100%; margin-bottom: 20px;">
	<c:if test="${sessionScope.member_Admin==1 }">
	<input value="룸 수정" type="button" onclick="ajaxRoomModifyForm(${view.ROOM_NO})"/>
	<input value="룸 삭제" type="button" onclick="ajaxRoomDelete(${view.ROOM_NO})"/>
	</c:if>
	<input value="룸 리스트" type="button" onclick="ajaxRoom()"/>
</div>



<script type="text/javascript">

function ReservationCH(userinput){
	if(userinput.res_FirstDate.value==""){
		alert("입실날짜를 적어주세요!");
		return false;
	}
	
	if(userinput.res_LastDate.value==""){
		alert("퇴실날짜를 적어주세요!");
		return false;
	}
	var fd = userinput.res_FirstDate.value;
	var ld = userinput.res_LastDate.value;
	var cd = userinput.curDate.value;
	
	if(fd == ld){
		alert("최소 1박을 해야합니다.");
		return false;
	}
	
	if(fd > ld){
		alert("퇴실날짜가 입실날짜보다 이전입니다.");
		return false;
	}
	
	if(fd < cd){
		alert("이미 지난 날짜입니다.\n 입력하신 검색날짜:"+fd+" / 현재날짜:"+cd);
		
		return false;
	}
	
	if(fd == cd){
		alert("오늘 날짜를 입력하셨습니다.\n입력하신 검색날짜:"+fd+"\n당일 예약은 불가능 합니다.");
		return false;
	}
	
	
}

</script>
