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
      	 $('#ContextFindID').html(data);
          		
        }
        
      });  
}






</script>

</head>
<body>


<div id ="ContextFindID">



<br/><br/><br/>

${msg }

<form name="finfIDform" method="post">	

	<br/>	
	이름:<input name="MEMBER_NAME" type="text" placeholder="5자미만 공백없이"  required>
	<br/>
	전화 번호: <input name="MEMBER_TEL" type="tel" autocomplete="off">
	<br/>
	메일:<input name="MEMBER_EMAIL" type="email" placeholder="abcd@domain.com" required autocomplete="off">
	<br/><br/>
	
	<input   TYPE="button"  onclick="ajaxFindIDView();" value="ID 찾기" />	
		
</form>
	<br/><br/>
	<input   TYPE="button"  onclick="javascript:ajaxFindPwView();" value="pw 찾기 이동" />	

	<br/><br/>
	<input value="로그인 창으로 이동" type="button" onclick="location.href='/IMPet/Member/LoginForm'"/>
<br/><br/>
</div>
</body>
</html>