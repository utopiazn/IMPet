<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>QnA 개별페이지</title>
</head>
<body>
			<h2>아이디 : ${view.MEMBER_ID}</h2>
			<h2>번호 : ${view.QNA_NO}</h2><br/>
			<h2>제목 : ${view.QNA_SUBJECT}</h2><br/>
			<h2>내용 : ${view.QNA_CONTENT}</h2><br/>
			<h2>이미지 : ${view.QNA_IMG}</h2><br/>
			<h2>조회수 : ${view.QNA_COUNT}</h2><br/>
			<h2>작성일 : ${view.QNA_DATE}</h2><br/>

QnA 개별페이지

<br/><br/><br/><br/><br/>

<input value="Q&A 수정" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionModifyForm?QnA_NO=${view.QNA_NO}'"/>

<br/><br/><br/><br/><br/>

<input value="Q&A 삭제" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionDelete?QnA_NO=${view.QNA_NO}'"/>

<br/><br/><br/><br/><br/>

<input value="Q&A 리스트" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionList'"/>

</body>
