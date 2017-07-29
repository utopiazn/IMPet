<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>ID찾기  폼</title>


<script type="text/javascript">

function ajaxFindIDView(){

	var obj =document.finfIDform;

	
	var dataList =
	{ 
		"MEMBER_NAME":obj.MEMBER_NAME.value,
		"MEMBER_TEL":obj.MEMBER_TEL.value,
		"MEMBER_EMAIL":obj.MEMBER_EMAIL.value		
	}
	

	var url1 = "/IMPet/Member/FindID";
	
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

function ajaxFindPwView(){
	  

	 
	var url1 = "/IMPet/Member/FindPw";
	
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


<div id ="ContextFindID">
	<div class="title">
	<br/><br/>
	아이디 찾기
	<br/>
<!-- 	<hr width="50%;" color="lightgray" size=""> 	 -->
</div>
	<font color="red">
	${msg }
	</font>
	<br/><br/>
	
	<form name="finfIDform" method="post">	
	
		<div class="login2">
			 이&nbsp;&nbsp;&nbsp;름 : <input name="MEMBER_NAME" type="text" placeholder="5자미만 공백없이"  required><br/>
			 연락처 :  <input name="MEMBER_TEL" type="tel" autocomplete="off"><br/>
			 이메일 :  <input name="MEMBER_EMAIL" type="email" placeholder="abcd@domain.com" required autocomplete="off">
			<input   TYPE="button"  onclick="ajaxFindIDView();" value="ID 찾기" />
		
			<div class="help">			    
				<a class="font" href="javascript:ajaxFindPwView();">비밀번호 찾기</a>   
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