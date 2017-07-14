<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>QnA 리스트</title>
</head>
<body>

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

O

</body>

</html>

