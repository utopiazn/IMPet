<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>공지사항 수정 폼</title>
</head>
<body>

<h2>공지사항 제목 : <input type="text" name=notice_Subject></h2><br/>
<h2>공지사항 내용 : <input type="text" name=notice_Content></h2><br/>
<h2>공지사항 이미지 : <input type="text" name=notice_IMG></h2><br/>



공지사항 수정 폼

<br/><br/><br/><br/><br/>

<input value="공지사항 수정" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeModify'"/>



</body>
