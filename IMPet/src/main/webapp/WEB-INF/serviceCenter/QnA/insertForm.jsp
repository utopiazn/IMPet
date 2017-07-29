<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>


<html lang="ko">
<head>
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<meta charset="UTF-8">
<title>QnA 추가 폼</title>
</head>
<body>

<center>
<c:choose>
	<c:when test="${view.QnA_Reply!=null}">
		<form name="insertForm">
		<br/><br/><br/>
			<div class="panel panel-default" style="width: 80%;">
				<div class="panel-heading" >QnA 페이지입니다. </div>						
									
				<div class="panel-body" style=text-align:left;>
				
				  <div class="form-group">		  
				     <input name="QnA_Ref" type=hidden value="${view.QnA_Ref}">
				   </div>
				   
				     <div class="form-group">		  
				      <input name="member_ID" type=hidden value="${sessionScope.member_ID}">
				     </div>
				   
				   
				  <div class="form-group">		  
				      <label> 제목 </label>
				      <input type="text" class="form-control" name="QnA_Subject" required style="width:70%;"/>
				   </div>
				   
				   <div class="form-group">
				      <label> 내용 </label>
				        <textarea class="form-control" name="QnA_Content" required style="width:70%;"></textarea>
				   </div>
				   
				    <div class="file_input">
               			<b>QnA 이미지</b><br/>               	 
                    	<label style="background-color: #333;  border-color: #ccc;">파일 첨부                 
                   			<input type="file" name="QnA_IMG" onchange="javascript:document.getElementById('file_route').value=this.value" >                         
                   		</label>
                  	 <input type="text" readonly="readonly" title="File Route" id="file_route" value="">
                  	 <p class="help-block">QnA 이미지 입니다 800x800 사이즈 권장합니다</p>
                   
           		 </div>
				   
				</div>                     
			 </div>
			 <br/><br/>
			 <div style="text-align:center; padding-bottom: 3%;" >
		<button type="submit" class="btn btn-success" onClick="chk_radio();" >답글 추가</button>
		<button type="reset" class="btn btn-default" onclick="location.href='/IMPet/ServiceCenter/QuestionList'">작성취소</button>	
	</div>
			 
		
		</form>
		
	</c:when>

	<c:otherwise>
	<form name="QuestionInsert">
	<br/><br/><br/>
	<div class="panel panel-default" style="width: 80%;">
	
		<div class="panel-heading" >QnA 추가 페이지입니다. </div>		
	
			<div class="panel-body" style=text-align:left;>
			
			  <div class="form-group">		    
				<input name="member_ID" type=hidden value="${sessionScope.member_ID}">
			  </div>
			   
			  <div class="form-group">
			      <label> 제목 </label>
			      <input type="text" class="form-control" name="QnA_Subject" required style="width:70%;"/>
			   </div>
			   
			   <div class="form-group">
			      <label> 내용 </label>
			        <textarea class="form-control" name="QnA_Content" required style="width:70%;"></textarea>
			   </div>
			   
			    <div class="file_input">
           			<b>QnA 이미지</b><br/>               	 
                	<label>파일 첨부                 
               			<input type="file" name="QnA_IMG" onchange="javascript:document.getElementById('file_route').value=this.value" >                         
               		</label>
              	 <input type="text" readonly="readonly" title="File Route" id="file_route" value="">
              	 <p class="help-block">QnA 이미지 입니다 800x800 사이즈 권장합니다</p>
                   
           	 </div>		   
		</div>
		<br/><br/>
			
	</div>	

			 
	<div style="text-align:center; padding-bottom: 3%;" >
		<button type="submit" class="btn btn-success" onClick="chk_radio();" >QnA 추가</button>
		<button type="reset" class="btn btn-default" onclick="location.href='/IMPet/ServiceCenter/QuestionList'">작성취소</button>	
	</div>	
					
</form>
</c:otherwise>
</c:choose>


<br/><br/><br/><br/><br/>

</body>
<script>
function chk_radio() { 
	
	
	var reply = "${view.QnA_Reply}";
	alert(reply);
	var url;
	var frm ;
	
	if(reply == 0){
		url = "/IMPet/ServiceCenter/QuestionInsertRef";
		frm = document.insertForm;
	}
	else { 
		url = "/IMPet/ServiceCenter/QuestionInsert";
		frm = document.QuestionInsert;
	}
	
	 
	
	 
	if(frm.QnA_Subject.value == ""){
		alert("제목을 입력해 주세요.");
		return false;
	}
	
	 if(frm.QnA_Content.value == ""){
		alert("내용을 입력해 주세요.");
		return false;
	}

	
	
	else{
		  frm.method = "post";
		  frm.action = url;
		  frm.enctype= "multipart/form-data";
		  frm.submit();
		  return true;
	 } 

}	
</script>
