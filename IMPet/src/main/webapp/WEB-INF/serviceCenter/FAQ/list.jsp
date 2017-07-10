<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>자주묻는질문 리스트</title>
</head>
<body>

<div align="center">
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




</body>

</html>