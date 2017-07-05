<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>공지사항 리스트</title>
</head>
<body>
       
<div align="center">
	<table border="1">
		<c:forEach var="notice" items="${list}">
			<tr><td>
			<h2>공지사항 번호 : ${notice.NOTICE_NO}</h2><br/>
			<input value="공지사항 개별페이지" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeView?notice_NO=${notice.NOTICE_NO}'"/>
			<h2>공지사항 제목 : ${notice.NOTICE_SUBJECT}</h2><br/>
			<h2>공지사항 조회수 : ${notice.NOTICE_COUNT}</h2><br/>
			<h2>공지사항 작성일 : ${notice.NOTICE_DATE}</h2><br/>
			</td></tr>
		</c:forEach>
	</table>
</div>

<br/><br/><br/><br/><br/> 



<br/><br/><br/><br/><br/>

<input value="공지사항 추가" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeInsertForm'"/>




</body>

</html>