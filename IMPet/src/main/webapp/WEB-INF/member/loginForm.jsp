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
</script>
</head>


<body>

<div id ="Context">


${ errorMsg }

<div class="xans-member-login" >

	<div class="login">



<form name="jform" method="post">	
		 <fieldset>
		 	
		 	<label class="id">
		 	
		 		<img src="/IMPet/resources/image/SkinImg/id.gif" alt="id"/>             
		 		<input id="member_id" name="MEMBER_ID" type="text" class="inputTypeText" value="" /> <br/><br/>		 	
		 	
		 	</label>
		 	
		 	
		 	<label class="password">
		 	
		 		<img src="/IMPet/resources/image/SkinImg/pw.gif" alt="pw"/>       	
		 		<input id="member_passwd" name="MEMBER_PW" type="password" value=""/>
		 	
		 	</label>
		 	
		 	 <p class="security"></p>		 	
		 	
		 </fieldset>

</form>
	
	</div>
	
	<div class="login_btn">
	
		<!-- <input value="룸 추가"  type="button" onclick="ajaxLoginView();"/>
		 --> 		
	
	 <input TYPE="IMAGE" src="/IMPet/resources/image/SkinImg/btn_login.gif"   onclick="ajaxLoginView();" />
	 
	</div>
	
</div>




</div>





<!-- <input value="로그인" type="button" onclick="location.href='/IMPet/Member/Login'"/> <br/>



<br/><br/><br/>


<input value="아디찾기" type="button" onclick="location.href='/IMPet/Member/FindIDForm'"/> /

<input value="비번찾기" type="button" onclick="location.href='/IMPet/Member/FindPwForm'"/>

 -->


</body>
</html>