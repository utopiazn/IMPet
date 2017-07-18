<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>공지사항 개별페이지</title>
</head>
<body>

<div>
<table width="800" border="0" cellspacing="0" cellpadding="2" align="center">

            <h2>공지사항 번호 : ${view.NOTICE_NO}</h2><br/>
			<h2>공지사항 제목 : ${view.NOTICE_SUBJECT}</h2><br/>
			<h2>공지사항 내용 : ${view.NOTICE_CONTENT}</h2><br/>
			<h2>공지사항 이미지 : ${view.NOTICE_IMG}</h2><br/>
			<h2>공지사항 조회수 : ${view.NOTICE_COUNT}</h2><br/>
			<h2>공지사항 작성일 : ${view.NOTICE_DATE}</h2><br/>
</table>
</div>

공지사항 개별페이지

<br/><br/><br/><br/><br/>

<input value="공지사항 수정" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeModifyForm?notice_NO=${view.NOTICE_NO}'"/>

<br/><br/><br/><br/><br/>

<input value="공지사항 삭제" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeDelete?notice_NO=${view.NOTICE_NO}'"/>

<br/><br/><br/><br/><br/>

<input value="공지사항 리스트" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeList'"/>



</body>

</html>


