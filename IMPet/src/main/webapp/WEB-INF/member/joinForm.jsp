<%@ page contentType="text/html; charset=UTF-8"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">

<title>회원가입 폼</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>

<script type="text/javascript">
	
	function ajaxJoinInsertView(){
		
		  
		  
		var obj =document.jform;

		alert(obj.MEMBER_ID.value);     	
		var dataList =
		{ 
			"MEMBER_ID" : obj.MEMBER_ID.value ,	 
			"MEMBER_PW":obj.MEMBER_PW.value,
			"MEMBER_NAME":obj.MEMBER_NAME.value,
			"MEMBER_NICKNAME":obj.MEMBER_NICKNAME.value,
			"MEMBER_ZIPCODE":obj.MEMBER_ZIPCODE.value,
			"MEMBER_ADDRESS":obj.MEMBER_ADDRESS.value,
			"MEMBER_ADDRESS2":obj.MEMBER_ADDRESS2.value,
			"MEMBER_EMAIL":obj.MEMBER_EMAIL.value,
			"MEMBER_TEL":obj.MEMBER_TEL.value,
			"MEMBER_ANIMAL_TYPE":obj.MEMBER_ANIMAL_TYPE.value,
			"MEMBER_REQUESTS":obj.MEMBER_REQUESTS.value
		}
		
	
		var url1 = "/IMPet/Member/JoinInset";
		
		
	    $.ajax({    
	        type : "POST",
	        url : url1,
	        data : dataList,
	        dataType : "text",      
	        error : function() {
	      	  
	      	 alert('오류임!');     	
	        },
	        success : function(data) {  
	      	 $('#ContextJoinForm').html(data);
	          		
	        }
	        
	      });    
	     

}



    </script>


</head>
<body>



<div id ="ContextJoinForm">

<form name="jform">

	<br/><br/>
	
	
	
	<strong>아이디:</strong>
	<input type="text"  name="MEMBER_ID" value="" />
	<br/>
	
	<strong>비밀번호:</strong>
	<input type="password"  name="MEMBER_PW" value="" />
	<br/>	
	
	<strong>이름:</strong>
	<input type="text"  name="MEMBER_NAME" value="" />
	<br/>
	
	<strong>닉네임:</strong>
	<input type="text"  name="MEMBER_NICKNAME" value="" />
	<br/>
	
	<strong>우편번호:</strong>
	<input type="text"  name="MEMBER_ZIPCODE" value="" />
	<br/>
	
	<strong>기본주소:</strong>
	<input type="text"  name="MEMBER_ADDRESS" value="" />
	<br/>
	
	<strong>기본 상제 주소:</strong>
	<input type="text"  name="MEMBER_ADDRESS2" value="" />
	<br/>
	
	<strong>메일주소:</strong>
	<input type="text"  name="MEMBER_EMAIL" value="" />
	<br/>
	
	<strong>전화번호:</strong>
	<input type="text"  name="MEMBER_TEL" value="" />
	<br/>
	
	<strong>반려동물종류:</strong>
	<input type="text"  name="MEMBER_ANIMAL_TYPE" value="" />
	<br/>
	
	<strong>요구사항:</strong>
	<input type="text"  name="MEMBER_REQUESTS" value="" />
	<br/>
			
	
	
	<br/><br/><br/><br/><br/><br/><br/>
	<input value="가입 완료" type="button" onclick="ajaxJoinInsertView();"/>
	
	
</form>	
</div>

</body>
</html>