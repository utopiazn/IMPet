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
		<form id="insertForm"  action="QuestionInsert" method="post">
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
				      <input type="text" class="form-control" name="QnA_Subject" style="width:70%;"/>
				   </div>
				   
				   <div class="form-group">
				      <label> 내용 </label>
				        <textarea class="form-control" name="QnA_Content" style="width:70%;"></textarea>
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
			 </div>
			 <br/><br/>
			 <input class="button2"  value="QnA 답글추가" type="submit">
			 <input class="button2" name="list" type="button" value="뒤로가기" onclick="location.href='/IMPet/ServiceCenter/QuestionList'"/>
			 
		
		</form>
		
	</c:when>

	<c:otherwise>
	<form action="QuestionInsert" method="post">
	<br/><br/><br/>
	<div class="panel panel-default" style="width: 80%;">
	
		<div class="panel-heading" >QnA 추가 페이지입니다. </div>		
	
			<div class="panel-body" style=text-align:left;>
			
			  <div class="form-group">		    
				<input name="member_ID" type=hidden value="${sessionScope.member_ID}">
			  </div>
			   
			  <div class="form-group">
			      <label> 제목 </label>
			      <input type="text" class="form-control" name="QnA_Subject" style="width:70%;"/>
			   </div>
			   
			   <div class="form-group">
			      <label> 내용 </label>
			        <textarea class="form-control" name="QnA_Content" style="width:70%;"></textarea>
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
	<input class="button2" value="QnA 추가" type="submit">	
				 <input class="button2" name="list" type="button" value="뒤로가기" onclick="location.href='/IMPet/ServiceCenter/QuestionList'"/>	
					
</form>
</c:otherwise>
</c:choose>


<br/><br/><br/><br/><br/>

</body>
