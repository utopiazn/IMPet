<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<br/><br/>

<center>
<form action="RoomResSuccess" method="post">

<input type="hidden" name="room_NO" value="${res.room_NO}">
<input type="hidden" name="member_ID" value="${res.member_ID}">
<input type="hidden" name="res_FirstDate" value="${res.res_FirstDate}">
<input type="hidden" name="res_LastDate" value="${res.res_LastDate}">
<input type="hidden" name="res_Price" value="${res.res_Price}">
<input type="hidden" name="res_Requests" value="${res.res_Requests}">

<div class="resArea" style="width: 50%">
	<h3>예약 정보</h3>
		<div class="boardWrite">
			<table border="1" summary="">
			
				<tbody>
					<tr>
						<th scope="row">객실 타입 번호</th>
						<td>${res.room_NO}</td>
					</tr>
					<tr>
						<th scope="row">객실 이름</th>
						<td>${res.room_Name}</td>
					</tr>
					<tr>
						<th scope="row">예약 아이디</th>
						<td>${res.member_ID}</td>
					</tr>
					<tr>
						<th scope="row">예약 날짜</th>
						<td>${res.res_FirstDate} ~ ${res.res_LastDate}</td>
					</tr>
					
					<tr>
						<th scope="row">예약금</th>
						<td>${res.res_Price}원</td>
					</tr>
					<tr>
						<th scope="row">이용가능 객실 수</th>
						<td>${retotal.NUM} / ${res.room_Total}
						<c:if test="${retotal.NUM == 0}">
						&nbsp;&nbsp;<font style="color:#ff0000;">* 이용가능 객식이 없습니다. 날짜를 새로 조정해주십시오.</font>
						</c:if>
						</td>
					</tr>
					<tr>
						<th scope="row">기타 요구사항</th>
						<td style="height: 200px;">${res.res_Requests}</td>
					</tr>
				</tbody>
			</table>
		</div>
</div>

<div align="center" style=" margin-bottom: 20px; margin-top: 20px;">
	<c:if test="${retotal.NUM != 0}">
	<input value="예약하기" class="button2" type="submit" />
	</c:if>
	<input value="예약취소" class="button2" type="button" onclick="jsHotel(1);"/>
</div>
</form>