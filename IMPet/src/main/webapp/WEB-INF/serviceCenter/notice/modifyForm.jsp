<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">
<meta charset="UTF-8">
<title>공지사항 수정 폼</title>
</head>
<body>
<center>
<form action="NoticeModify" method="post">
<br/><br/><br/>
	<div class="panel panel-default" style="width: 80%;">
		<div class="panel-heading" >공지사항 수정 페이지입니다. </div>						
							
		<div class="panel-body" style=text-align:left;>
		  <div class="form-group">
		      <label> 제목 </label>
		      <input type="text" class="form-control" value="${view.NOTICE_SUBJECT}" name="notice_Subject" style="width:70%;"/>
		   </div>
		   
		   <div class="form-group">
		      <label> 내용 </label>
		        <textarea class="form-control" value="${view.NOTICE_CONTENT}" name="notice_Content" style="width:70%;"></textarea>
		   </div>
		     
		     
		    <div class="file_input">
               	<b>공지사항 이미지</b><br/>
               	 
                    <label>파일 첨부 
                
                   <input type="file" value="${view.NOTICE_IMG}" name="notice_IMG" onchange="javascript:document.getElementById('file_route').value=this.value" >                         
                   </label>
                   <input type="text" readonly="readonly" title="File Route" id="file_route" value="">
                   <p class="help-block">공지사항 이미지 입니다 800x800 사이즈 권장합니다</p>
                   
            </div>
		   
		</div>                     
	 </div> 
<input name="notice_NO" type=hidden value="${view.NOTICE_NO}">
<input name="notice_Count" type=hidden value="${view.NOTICE_COUNT}">
<input name="notice_Date" type=hidden value="${view.NOTICE_DATE}">

<input class="button2" value="공지사항 수정" type="submit">
<input class="button2" name="list" type="button" value="뒤로가기" onclick="location.href='/IMPet/ServiceCenter/NoticeList'"/>


</form>



<br/><br/><br/><br/><br/>


</body>
