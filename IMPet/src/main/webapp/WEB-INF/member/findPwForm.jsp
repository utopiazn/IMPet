<%@ page contentType="text/html; charset=UTF-8"%>


<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>버번찾기 폼</title>



<script type="text/javascript">

function ajaxFindPwView(){

	var obj =document.findPwform;

	
	var dataList =
	{ 
		"MEMBER_ID" : obj.MEMBER_ID.value ,	 
		"MEMBER_TEL":obj.MEMBER_TEL.value,
		"MEMBER_EMAIL":obj.MEMBER_EMAIL.value		
	}
	

	var url1 = "/IMPet/Member/FindPw";
	
    $.ajax({    
        type : "POST",
        url : url1,
        data : dataList,
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


</script>
<link rel="stylesheet" type="text/css" href="/IMPet/resources/css/member/loginForm.css" />


</head>
<body>


<div id ="ContextFindPw">
	<div class="title">
		<br/><br/>
		비밀번호 찾기
		<br/>
		<!-- 	<hr width="50%;" color="lightgray" size=""> 	 -->
	</div>
	<font color="red">
	${msg }
	</font>
	<br/><br/>

	<form name="findPwform" method="post">	
		<div class="login2">
		 아이디 :  <input  name="MEMBER_ID" type="text" required autofocus><br/>		
		 연락처 :  <input name="MEMBER_TEL" type="tel" autocomplete="off"><br/>
		 이메일 :  <input name="MEMBER_EMAIL" type="email" placeholder="abcd@domain.com" required autocomplete="off">
		<input   TYPE="button"  onclick="ajaxFindPwView();" value="PW 찾기" />
		
		<div class="help">			    
			<a class="font" href="javascript:ajaxFindIDView();">아이디 찾기</a>   
		    <span class="font">|</span>			    
			<a class="font" href="/IMPet/Member/LoginForm">로그인하기</a>				    
		</div>
		</div>			
	</form>
		
	<br/><br/>
	<br/><br/>
</div>



</body>
</html>