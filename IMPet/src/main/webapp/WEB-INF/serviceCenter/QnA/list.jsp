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
			<h2>번호 : ${QNA.QNA_NO}</h2><br/>
			<input value="QnA 개별페이지" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeView?QNA_NO=${QNA.QNA_NO}'"/>
			<h2>제목 : ${QNA.QNA_SUBJECT}</h2><br/>
			<h2>조회수 : ${QNA.QNA_COUNT}</h2><br/>
			<h2>아이디 : ${QNA.QNA_DATE}</h2><br/>
			<h2>작성일 : ${QNA.QNA_DATE}</h2><br/>
			
			</td></tr>
		</c:forEach>
	</table>
</div>

QnA 리스트

<br/><br/><br/><br/><br/>

<input value="Q&A 개별페이지" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionView'"/>

<br/><br/><br/><br/><br/>

<input value="Q&A 추가" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionInsertForm'"/>




</body>

</html>

