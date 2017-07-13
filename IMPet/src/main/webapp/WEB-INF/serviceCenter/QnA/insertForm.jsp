<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>QnA 추가 폼</title>
</head>
<body>
<c:choose>
<c:when test="${view.QnA_Reply!=null}">
<form action="QuestionInsertRef" method="post">
<input name="QnA_Ref" type=hidden value="${view.QnA_Ref}">
<input name="member_ID" type=hidden value="${sessionScope.member_ID}">

<h2>제목 : <input type="text" name=QnA_Subject maxlength="15"></h2><br/>
<h2>내용 : <input type="text" name=QnA_Content></h2><br/>
<h2>이미지 : <input type="text" name=QnA_IMG></h2><br/>
<input  value="QnA 답글추가" type="submit">

</form>
</c:when>

<c:otherwise>
<form action="QuestionInsert" method="post">

<input name="member_ID" type=hidden value="${sessionScope.member_ID}">

<h2>제목 : <input type="text" name=QnA_Subject maxlength="15"></h2><br/>
<h2>내용 : <input type="text" name=QnA_Content></h2><br/>
<h2>이미지 : <input type="text" name=QnA_IMG></h2><br/>

<input  value="QnA 추가" type="submit">

</form>
</c:otherwise>
</c:choose>




QnA 추가 폼

<br/><br/><br/><br/><br/>
</body>
