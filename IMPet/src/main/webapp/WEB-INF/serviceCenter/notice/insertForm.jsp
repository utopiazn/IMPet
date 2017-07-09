<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>공지사항 추가 폼</title>
</head>
<body>
<form action="NoticeInsert" method="post">
<h2>공지사항 제목 : <input type="text" name=notice_Subject maxlength="15"></h2><br/>
<h2>공지사항 내용 : <input type="text" name=notice_Content></h2><br/>
<h2>공지사항 이미지 : <input type="text" name=notice_IMG></h2><br/>
<input  value="공지사항 추가" type="submit">

</form>

공지사항 추가 폼

<br/><br/><br/><br/><br/>

</body>
