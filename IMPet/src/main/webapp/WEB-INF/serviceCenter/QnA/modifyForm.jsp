<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>QnA 수정 폼</title>
</head>
<body>

<form action="QuestionModify" method="post">

<input name="QnA_NO" type=hidden value="${view.QNA_NO}">
<input name="QnA_Count" type=hidden value="${view.QNA_COUNT}">
<input name="QnA_Date" type=hidden value="${view.QNA_DATE}">
<input name="member_ID" type=hidden value="${view.MEMBER_ID}">
<input name="QnA_Ref" type=hidden value="${view.QNA_REF}">
<input name="QnA_Reply" type=hidden value="${view.QNA_REPLY}">

<h2>제목 : <input type="text" name=QnA_Subject value="${view.QNA_SUBJECT}"  maxlength="15"></h2><br/>
<h2>내용 : <input type="text" name=QnA_Content value="${view.QNA_CONTENT}"></h2><br/>
<h2>이미지 : <input type="text" name=QnA_IMG value="${view.QNA_IMG}"></h2><br/>
<input  value="QnA수정" type="submit">

</form>


QnA 수정 폼

<br/><br/><br/><br/><br/>

</body>
