<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">
<meta charset="UTF-8">
<title>자주묻는질문 수정 폼</title>
</head>
<body>
<center>
<form action="FAQModify" method="post">
<br/><br/><br/>
	<div class="panel panel-default" style="width: 80%;">
		<div class="panel-heading" >자주묻는 질문 추가 페이지입니다. </div>						
							
		<div class="panel-body" style=text-align:left;>
		  <div class="form-group">
		      <label> 제목 </label>
		      <input type="text" class="form-control" value="${view.FAQ_SUBJECT}" name="FAQ_Subject" style="width:70%;"/>
		   </div>
		   
		   <div class="form-group">
		      <label> 내용 </label>
		        <textarea class="form-control" name="FAQ_Content" style="width:70%;">${view.FAQ_CONTENT}</textarea>
		   </div>
		   
		</div>                     
	 </div>   
<input name="FAQ_NO" type=hidden value="${view.FAQ_NO}">

<input class="button2" style="width: 140px;" value="자주묻는질문 수정" type="submit">
<input class="button2" name="list" type="button" value="뒤로가기" onclick="location.href='/IMPet/ServiceCenter/FAQList'"/>

</form>


<br/><br/><br/><br/><br/>

</body>
