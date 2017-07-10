<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>QnA 추가 폼</title>
</head>
<body>


<form action="QuestionInsert" method="post">

<input name="member_ID" type=hidden value="${sessionScope.member_ID}">

<h2>제목 : <input type="text" name=QnA_Subject maxlength="15"></h2><br/>
<h2>내용 : <input type="text" name=QnA_Content></h2><br/>
<h2>이미지 : <input type="text" name=QnA_IMG></h2><br/>

<input  value="QnA 추가" type="submit">

</form>

QnA 추가 폼

<br/><br/><br/><br/><br/>
</body>
