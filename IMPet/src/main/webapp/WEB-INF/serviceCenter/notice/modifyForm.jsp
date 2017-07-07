<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>공지사항 수정 폼</title>
</head>
<body>
<form action="NoticeModify" method="post">

<input name="notice_NO" type=hidden value="${view.NOTICE_NO}">
<input name="notice_Count" type=hidden value="${view.NOTICE_COUNT}">
<input name="notice_Date" type=hidden value="${view.NOTICE_DATE}">

<h2>공지사항 제목 : <input type="text" name=notice_Subject value="${view.NOTICE_SUBJECT}"></h2><br/>
<h2>공지사항 내용 : <input type="text" name=notice_Content value="${view.NOTICE_CONTENT}"></h2><br/>
<h2>공지사항 이미지 : <input type="text" name=notice_IMG value="${view.NOTICE_IMG}"></h2><br/>
<input  value="공지사항 수정" type="submit">

</form>

공지사항 수정 폼

<br/><br/><br/><br/><br/>


</body>
