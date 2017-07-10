<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>자주묻는질문 개별페이지</title>
</head>
<body>

            <h2>자주묻는질문 번호 : ${view.FAQ_NO}</h2><br/>
			<h2>자주묻는질문 제목 : ${view.FAQ_SUBJECT}</h2><br/>
			<h2>자주묻는질문 내용 : ${view.FAQ_CONTENT}</h2><br/>


자주묻는질문 개별페이지

<br/><br/><br/><br/><br/>

<input value="자주묻는질문 수정" type="button" onclick="location.href='/IMPet/ServiceCenter/FAQModifyForm?FAQ_NO=${view.FAQ_NO}'"/>

<br/><br/><br/><br/><br/>

<input value="자주묻는질문 삭제" type="button" onclick="location.href='/IMPet/ServiceCenter/FAQDelete?FAQ_NO=${view.FAQ_NO}'"/>

<br/><br/><br/><br/><br/>

<input value="자주묻는질문 리스트" type="button" onclick="location.href='/IMPet/ServiceCenter/FAQList'"/>

</body>
