<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<!DOCTYPE html>




<html lang="ko">
<head>
 	<c:if test="${LoginSuccess==1}">
		<meta http-equiv="refresh" content="0;url=http://localhost:8080/IMPet/Main" />	
 	</c:if>

<meta charset="UTF-8">

<link rel="stylesheet" type="text/css" href="/IMPet/resources/css/member/loginForm.css" />

<title>로그인 폼 </title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>


<script type="text/javascript">

function ajaxLoginView(){
	  
	 var obj =document.jform;
	
	 var dataList =
	 { 
		 "MEMBER_ID" : obj.MEMBER_ID.value ,	 
		 "MEMBER_PW" : obj.MEMBER_PW.value
	 }
  
	var url1 = "/IMPet/Member/Login";
	
    $.ajax({
    
      type : "POST",
      url : url1,      
       data: dataList,       
      dataType : "text",
      
      error : function() {    	  
    	 alert('오류임!');     	
      },
      success : function(data) {  
    	 $('#Context').html(data);
        		
      }
      
    });    
   
}



function ajaxFindIDView(){
	  

 
	var url1 = "/IMPet/Member/FindIDForm";
	
   $.ajax({
   
     type : "POST",
     url : url1,             
     dataType : "text",
     
     error : function() {    	  
   	 	alert('오류임!');     	
     },
     success : function(data) {  
   	 $('#Context').html(data);
       		
     }
     
   });    
  
}



function ajaxFindPwView(){	 
	var url1 = "/IMPet/Member/FindPwForm";
	
   $.ajax({
   
     type : "POST",
     url : url1,             
     dataType : "text",
     
     error : function() {    	  
   	 	alert('오류임!');     	
     },
     success : function(data) {  
   	 $('#Context').html(data);
       		
     }
     
   });    
  
}




</script>
</head>


<body>

<div id ="Context">
	
	${ errorMsg }
	<br/><br/><br/>
	 
	<form name="jform" method="post">	
	 
		<div class="login">	
			
			<input id="member_id" name="MEMBER_ID" type="text"  placeholder="ID 입력"  /> 
			<input id="member_passwd" name="MEMBER_PW" type="password" placeholder="password 입력"/>		
		 	<input   TYPE="button"  onclick="ajaxLoginView();" value="Sign In" />		 	
		 	<br/>	  		  
		    <div class="help">
		     
			    <a class="font" href="javascript:ajaxFindIDView();" >아이디 찾기</a>
			    
			    <span class="font">|</span>			    
			    <a class="font" href="javascript:ajaxFindPwView();">비밀번호 찾기</a>
			    
			    <span class="font">|</span>			    
			    <a class="font" href="/IMPet/Member/JoinMain">회원가입</a>
			    
		    </div>
		  	
		</div>
			
	</form>
	
	<br/><br/><br/>
	
</div>

<!-- <input value="아디찾기" type="button" onclick="location.href='/IMPet/Member/FindIDForm'"/> /

<input value="비번찾기" type="button" onclick="location.href='/IMPet/Member/FindPwForm'"/>


 -->

</body>
</html>