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
      	 $('#ContextFindPw').html(data);
          		
        }
        
      });  
}




</script>


</head>
<body>



<div id ="ContextFindPw">

<br/><br/><br/>
${msg }

<form name="findPwform" method="post">	
	<br/>	
	ID:	<input  name="MEMBER_ID" type="text" equired autofocus>			
	<br/>
	전화 번호: <input name="MEMBER_TEL" type="tel" autocomplete="off">
	<br/>
	메일:<input name="MEMBER_EMAIL" type="email" placeholder="abcd@domain.com" required autocomplete="off">
	<br/><br/>
	
	<input   TYPE="button"  onclick="ajaxFindPwView();" value="비밀번호번 찾기" />	
</form>
	<input value="로그인 창으로 이동" type="button" onclick="location.href='/IMPet/Member/LoginForm'"/>
	

</div>




</body>
</html>