<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<meta charset="UTF-8">
<title>자주묻는질문 추가 폼</title>
</head>
<body>


<center>
<form name="insertForm">
	<br/><br/><br/>
	<div class="panel panel-default" style="width: 80%;">
		<div class="panel-heading" >자주묻는 질문 추가 페이지입니다. </div>						
							
		<div class="panel-body" style=text-align:left;>
		  <div class="form-group">
		      <label> 제목 </label>
		      <input type="text" class="form-control" name="FAQ_Subject" required style="width:70%;"/>
		   </div>
		   
		   <div class="form-group">
		      <label> 내용 </label>
		        <textarea class="form-control" name="FAQ_Content" required style="width:70%;"></textarea>
		   </div>
		   
		</div>                     
	 </div>   
	                     	 
	 <div style="text-align:center; padding-bottom: 3%;" >
		<button type="submit" class="btn btn-success" onClick="chk_radio();" >질문 추가</button>
		<button type="reset" class="btn btn-default" onclick="location.href='/IMPet/ServiceCenter/FAQList'">작성취소</button>	
	</div>	

</form>

<br/><br/><br/><br/><br/>

</body>
<script>
function chk_radio() { 

	
	 var frm = document.insertForm;
	
	if(frm.FAQ_Subject.value == ""){
		alert("제목을 입력해 주세요.");
		return false;
	}
	
	 if(frm.FAQ_Content.value == ""){
		alert("내용을 입력해 주세요.");
		return false;
	}
	
	
	else{
		  frm.method = "post";
		  frm.action = "/IMPet/ServiceCenter/FAQInsert";
		  frm.enctype= "multipart/form-data";
		  frm.submit();
		  return true;
	 } 

}	
</script>