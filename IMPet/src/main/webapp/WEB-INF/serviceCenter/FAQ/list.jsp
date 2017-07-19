<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>자주묻는질문 리스트</title>

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

<%-- <div align="center">
	<table border="1">
		<c:forEach var="FAQ" items="${list}">
			<tr><td>
			<h2>자주묻는질문 번호 : ${FAQ.FAQ_NO}</h2><br/>
			<input value="자주묻는질문 개별페이지" type="button" onclick="location.href='/IMPet/ServiceCenter/FAQView?FAQ_NO=${FAQ.FAQ_NO}'"/>
			<h2>자주묻는질문 제목 : ${FAQ.FAQ_SUBJECT}</h2><br/>
			</td></tr>
		</c:forEach>
	</table>
</div>
<br/><br/><br/><br/><br/>
<input value="자주묻는질문 추가" type="button" onclick="location.href='/IMPet/ServiceCenter/FAQInsertForm'"/>


 --%>
<div align="center">
		<table width="900" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td align="center"><h2>FAQ</h2></td>
			</tr>
			<tr>
				<td height="20"></td>
			</tr>
		</table>
		<div align="right" width="100%">

			<input value="글쓰기" class="button3" type="button" 
			onclick="location.href='/IMPet/ServiceCenter/FAQInsertForm'"/>
<br />
			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				align="center">

				<br />
				<tr align="center" style="line-height: 3em;">

					<td width="50"><strong>NO</strong></td>
					<td width="350"><strong>제목</strong></td>
				</tr>
				<tr bgcolor="#00B488">
					<td height="2" colspan="2"></td>
				</tr>

				<c:forEach var="FAQ" items="${list}">
					<tr align="center" style="line-height: 3em;">
						<td width="50"><strong>${FAQ.FAQ_NO}</strong></td>
						<td width="350"><strong><a
								href='/IMPet/ServiceCenter/FAQView?FAQ_NO=${FAQ.FAQ_NO}'>${FAQ.FAQ_SUBJECT}</a></strong></td>
					</tr>
					<tr bgcolor="#00B488">
						<td height="1" colspan="2"></td>
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