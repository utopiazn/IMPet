<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>자주묻는질문 추가 폼</title>
</head>
<body>

<form action="FAQInsert" method="post">
<h2>자주묻는질문 제목 : <input type="text" name=FAQ_Subject maxlength="15"></h2><br/>
<h2>자주묻는질문 내용 : <input type="text" name=FAQ_Content></h2><br/>
<input  value="자주묻는질문" type="submit">

</form>

<br/><br/><br/><br/><br/>

</body>
