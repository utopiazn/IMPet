<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>회원 수정 폼</title>
</head>
<body>

회원 수정 폼
<br/><br/>






<table width="550" border="0" cellspacing="0" cellpadding="0">
 	<tr>
		<td width="100" bgcolor="#202f58" align="left">
		<font color="#FFFFFF">아이디</font>
		</td>
			
		<td width="60" bgcolor="#FFFFFF"align="left">
		&nbsp;<input type="text" name="MEMBER_ID" value="${member.MEMBER_ID}" disabled="disabled" />										
		</td>
	</tr>

	<tr bgcolor="#777777">
		<td height="1" colspan="2"></td>	
	</tr>
	
	<tr>
		<td width="100" bgcolor="#202f58" align="left">
		<font color="#FFFFFF">비밀번호</font>
		</td>
			
		<td width="60" bgcolor="#FFFFFF"align="left">
		&nbsp;<input type="password" name="MEMBER_PW" value="${member.MEMBER_PW}" />										
		</td>
	</tr>

	<tr bgcolor="#777777">
		<td height="1" colspan="2"></td>	
	</tr>
		


</table>	


<!-- {NO=2, MEMBER_NAME=허어녕, MEMBER_ADMIN=0, MEMBER_ANIMAL_TYPE=0, MEMBER_USERYN=Y, MEMBER_REQUESTS=졸려, MEMBER_ADDRESS2=4, MEMBER_ZIPCODE=2, MEMBER_PW=aa, MEMBER_ID=aa, MEMBER_ADDRESS=3, MEMBER_JOIN_DATE=2017-06-30 07:55:35.0, MEMBER_NICKNAME=대원1, MEMBER_TEL=9, MEMBER_EMAIL=8, MEMBER_NEWADDRESS2=7, MEMBER_NEWZIPCODE=5, MEMBER_NEWADDRESS=6}
 -->

<br/><br/><br/>

<input value="회원 수정하기" type="button" onclick="location.href='/IMPet/Member/Modified'"/>

<br/><br/>
<input value="마이페이지로 이동" type="button" onclick="location.href='/IMPet/MyPage/Main'"/>


</body>
</html>