<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>회원 리스트 </title>
</head>
<body>

회원 리스트
<br/><br/>

<div align="center">
	<table border="1">
		<c:forEach var="Member" items="${listAll}">
		
		<tr>
			<td>								
				<a href="/IMPet/Member/ModifiedForm?NO=${Member.NO}">${Member.MEMBER_ID}</a>				
			</td>
			<td>								
				${Member.MEMBER_NAME}				
			</td>
			
			
		</tr>
		</c:forEach>
	</table>
</div>


<!-- 
"MEMBER_ID" VARCHAR2(15 BYTE) NOT NULL ENABLE, 
	"MEMBER_PW" VARCHAR2(12 BYTE) NOT NULL ENABLE, 
	"MEMBER_NAME" VARCHAR2(10 BYTE) NOT NULL ENABLE, 
	"MEMBER_NICKNAME" VARCHAR2(10 BYTE) NOT NULL ENABLE, 
	"MEMBER_ZIPCODE" VARCHAR2(7 BYTE) NOT NULL ENABLE, 
	"MEMBER_ADDRESS" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"MEMBER_ADDRESS2" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"MEMBER_NEWZIPCODE" VARCHAR2(7 BYTE) NOT NULL ENABLE, 
	"MEMBER_NEWADDRESS" VARCHAR2(100 BYTE), 
	"MEMBER_NEWADDRESS2" VARCHAR2(100 BYTE), 
	"MEMBER_EMAIL" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"MEMBER_TEL" VARCHAR2(13 BYTE) NOT NULL ENABLE, 
	"MEMBER_ANIMAL_TYPE" NUMBER NOT NULL ENABLE, 
	"MEMBER_REQUESTS" VARCHAR2(1000 BYTE), 
	"MEMBER_USERYN" VARCHAR2(1 BYTE) NOT NULL ENABLE, 
	"MEMBER_ADMIN" NUMBER NOT NULL ENABLE, 
	"MEMBER_JOIN_DATE" DATE NOT NULL ENABLE, 
	"MEMBER_DEL_DATE" DATE, 

 -->
<br/><br/><br/>


회원 리스트  선택 햇다 치고

<br/><br/>
<input value="회원 한면을 선택 행을 경우 회원 수정 폼으로 이동" type="button" onclick="location.href='/IMPet/Member/ModifiedForm'"/>


</body>
</html>