<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">
<meta charset="UTF-8">
<title>QnA 수정 폼</title>
</head>
<body>
<center>
<form action="QuestionModify" method="post">
<br/><br/><br/>
	<div class="panel panel-default" style="width: 80%;">
		<div class="panel-heading" >QnA 수정 페이지입니다. </div>						
							
		<div class="panel-body" style=text-align:left;>
		  <div class="form-group">
		      <label> 제목 </label>
		      <input type="text" value="${view.QNA_SUBJECT}" class="form-control" name="QnA_Subject" style="width:70%;"/>
		   </div>
		   
		   <div class="form-group">
		      <label> 내용 </label>
		        <textarea class="form-control" value="${view.QNA_CONTENT}" name="QnA_Content" style="width:70%;"></textarea>
		   </div>
		   
		    <div class="file_input">
               	<b>QnA 이미지</b><br/>
               	 
                    <label style="background-color: #333;  border-color: #ccc;">파일 첨부 
                
                   <input type="file" name="QnA_IMG" value="${view.QNA_IMG}" onchange="javascript:document.getElementById('file_route').value=this.value" >                         
                   </label>
                   <input type="text" readonly="readonly" title="File Route" id="file_route" value="">
                   <p class="help-block">QnA 이미지 입니다 800x800 사이즈 권장합니다</p>
                   
            </div>
		   
		</div>                     
	 </div>
	 <input  class="button2" value="QnA수정" type="submit">
	<input class="button2" name="list" type="button" value="뒤로가기" onclick="location.href='/IMPet/ServiceCenter/QuestionList'"/>
	<input name="QnA_NO" type=hidden value="${view.QNA_NO}">
	<input name="QnA_Count" type=hidden value="${view.QNA_COUNT}">
	<input name="QnA_Date" type=hidden value="${view.QNA_DATE}">
	<input name="member_ID" type=hidden value="${view.MEMBER_ID}">
	<input name="QnA_Ref" type=hidden value="${view.QNA_REF}">
	<input name="QnA_Reply" type=hidden value="${view.QNA_REPLY}">
	 

</form>




<br/><br/><br/><br/><br/>

</body>
