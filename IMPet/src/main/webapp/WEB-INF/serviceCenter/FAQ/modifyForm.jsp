<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>자주묻는질문 수정 폼</title>
</head>
<body>

<form action="FAQModify" method="post">

<input name="FAQ_NO" type=hidden value="${view.FAQ_NO}">

<h2>자주묻는질문 제목 : <input type="text" name=FAQ_Subject value="${view.FAQ_SUBJECT}"  maxlength="15"></h2><br/>
<h2>자주묻는질문 내용 : <input type="text" name=FAQ_Content value="${view.FAQ_CONTENT}"></h2><br/>
<input  value="자주묻는질문 수정" type="submit">

</form>

자주묻는질문 수정 폼

<br/><br/><br/><br/><br/>

</body>
