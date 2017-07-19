<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>QnA 리스트</title>
<style>
.button3 {
	position: relative;
	padding: 1px 0;
	border: 2px #00B488 solid;
	float: right;
	color: black;
	cursor: pointer;
	font-family: 'KoPub Batang' sans-serif;
	font-size: .9em;
	text-transform: uppercase;
	transition: color 0.4s, background-color 0.4s;
	display: inline-block;
	vertical-align: middle;
	line-height: 1em;
	outline: none;
	text-align: center;
	text-decoration: none;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	width: 10%;
	background-color: white;
	height: 30px;
}

.button3:hover, .button3:focus {
	transition: color 0.4s, background-color 0.4s;
	color: white;
	text-decoration: none;
	background-color: #00B488;
}
</style>
</head>
<body>
<%-- 
<div align="center">
	<table border="1">
		<c:forEach var="QNA" items="${list}">
			<tr><td>
			<a href='/IMPet/ServiceCenter/QuestionView?QnA_NO=${QNA.QNA_NO}'>
			<h2>글번호 : 
			<c:if test="${QNA.QNA_REPLY==1}">[답글]</c:if>
			${QNA.QNA_NO}</h2>
제목 : ${QNA.QNA_SUBJECT}</a>
조회수 : ${QNA.QNA_COUNT}<br/>
아이디 : ${QNA.MEMBER_ID}
작성일 : ${QNA.QNA_DATE}<br/>
			
			</td></tr>
		</c:forEach>
	</table>
</div>

QnA 리스트

<br/><br/><br/><br/><br/>

<input value="Q&A 추가" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionInsertForm'"/>
 --%>

	<div align="center">
		<table width="900" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td align="center"><h2>Q&A</h2></td>
			</tr>
			<tr>
				<td height="20"></td>
			</tr>
		</table>
		<div align="right" width="100%">

			<input value="글쓰기" class="button3" type="button" 
			onclick="location.href='/IMPet/ServiceCenter/QuestionInsertForm'"/> <br />
			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				align="center">

				<br />
				<tr align="center" style="line-height: 3em;">

					<td width="50"><strong>NO</strong></td>
					<td width="350"><strong>제목</strong></td>
					<td width="120"><strong>작성자</strong></td>
					<td width="140"><strong>조회수</strong></td>
					<td width="130"><strong>작성일</strong></td>
				</tr>
				<tr bgcolor="#00B488">
					<td height="2" colspan="5"></td>
				</tr>

				<c:forEach var="QNA" items="${list}">
					<tr align="center" style="line-height: 3em;">
						<td width="50"><strong>${QNA.QNA_NO}</strong></td>
						<td width="350"><strong><a
								href='/IMPet/ServiceCenter/QuestionView?QnA_NO=${QNA.QNA_NO}'>
								<c:if test="${QNA.QNA_REPLY==1}">[답글]</c:if>
								${QNA.QNA_SUBJECT}</a></strong></td>
						<td width="120"><strong>${QNA.MEMBER_ID}</strong></td>
						<td width="140"><strong>${QNA.QNA_COUNT}</strong></td>
						<td width="130"><strong>${QNA.QNA_DATE}</strong></td>
					</tr>
					<tr bgcolor="#00B488">
						<td height="1" colspan="5"></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

	<br />
	<br />
	<br />
	<br />
	<br />




</body>

</html>

