<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>공지사항 리스트</title>
</head>
<body>


${list[0].NOTICE_SUBJECT}
       


공지사항 리스트

<br/><br/><br/><br/><br/>

<input value="공지사항 개별페이지" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeView'"/>

<br/><br/><br/><br/><br/>

<input value="공지사항 추가" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeInsertForm'"/>




</body>

</html>