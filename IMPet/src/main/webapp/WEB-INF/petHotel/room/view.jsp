<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
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
</style>

<div>
	<div style="float:left; width:70%; /* border:1px solid black; */ margin-top: 10px; margin-right: 1px; height:500px;">
		<img alt="s2" src="/IMPet/resources/image/hotel/roomImg/${view.ROOM_IMG}" style="width: 100%; height: 100%;">		
	</div>

	<div style="float:left; width:29%;/*  border:1px solid black;  height:500px; margin-bottom: 10px;*/">
		<form name="RoomReservation" action="RoomReservation" method="post" onsubmit="return ReservationCH(this);">
			<input name="room_NO" type="hidden" value="${view.ROOM_NO}"/>
			<input name="member_ID" type="hidden" value="${sessionScope.member_ID}"/>
			<input name="res_Price" type="hidden" value="${view.ROOM_PRICE}"/>
			<input name="room_Name" type="hidden" value="${view.ROOM_NAME}"/>
			<input name="room_Total" type="hidden" value="${view.ROOM_TOTAL}"/>
	
			<div>
				<div align="left" style="padding-left: 15px;">
					<br/>
					<%-- <font>방 번호 : ${view.ROOM_NO}</font><br/> --%>
					<font size="10px" style="font-weight: bolder;"> ${view.ROOM_NAME}</font><br/>
					<font size="5px" style="border-bottom: 1px solid lightgray;"> ${view.ROOM_PRICE}원</font><br/>
				</div>
				
				<div align="left" style="margin-bottom:10px;">
					<br/>
					<c:set var="cDate" value="<%=new IMPet.util.ProjectUtil().getDate()%>"/>
					<input name="curDate" type="hidden" value="${cDate}"/>
					&nbsp;&nbsp;&nbsp;입실날짜 : <input name="res_FirstDate" type="date" style="width:60%; margin-bottom:3px;"/><br/>
					&nbsp;&nbsp;&nbsp;퇴실날짜 : <input name="res_LastDate" type="date" style="width:60%;"/><br/>
				</div>
				
				<div align="center">
					요구사항<br/>
					<textarea name="res_Requests" rows="13" style="width:90%; border: 1px solid lightgray; margin-bottom: 10px;">${sessionScope.member_Requests}</textarea>
				</div>	
				
				<c:if test="${sessionScope.member_ID!=null}">
				<input value="룸 예약하기" class="button2" type="submit"/>
				</c:if>
				
				<c:if test="${sessionScope.member_ID==null}">
				<input value="로그인" class="button2" type="button" onclick="location.href='/IMPet/Member/LoginForm'"/><br/>
				<small style="color: red;">호텔 예약은 로그인 후 이용가능합니다.</small>			
				</c:if>
			</div>
		</form>
	</div>
</div>

<div>
	<div style="float: left; width: 100%; border:1px solid lightgray; margin-top: 10px;" >
		<div style="float: left; ">
			<img alt="healing" src="/IMPet/resources/image/hotel/healingImg/healing.png">	
		</div>
		
		<div style="float: left; padding-top: 35px; " >
			&nbsp;&nbsp;${view.ROOM_DETAIL}<br/>
		</div>
	</div>
		
	<br/>
	
	<div align="right" style="float: right; width:100%; margin-top: 10px;">
		<c:if test="${sessionScope.member_Admin==1 }">
		<input value="룸 수정" class="button2" type="button" onclick="ajaxRoomModifyForm(${view.ROOM_NO})"/>
		<input value="룸 삭제" class="button2" type="button" onclick="ajaxRoomDelete(${view.ROOM_NO})"/>
		</c:if>
		<input value="목록으로" class="button2" type="button" onclick="ajaxRoom()"/>
	</div>
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
