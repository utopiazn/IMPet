<%@ page contentType="text/html; charset=UTF-8"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">

<link rel="stylesheet" type="text/css" href="/IMPet/resources/css/member/loginForm.css" />

<title>로그인 폼 </title>
</head>
<body>


로그인 폼

<br/><br/><br/><br/><br/><br/><br/>



<div class="xans-member-login" >

	<div class="login">
	
		 <fieldset>
		 	
		 	<label class="id">
		 	
		 		<img src="/IMPet/resources/image/SkinImg/id.gif" alt="id"/>             
		 		<input id="member_id" name="MEMBER_ID" type="text" class="inputTypeText" value=""/> <br/><br/>		 	
		 	
		 	</label>
		 	
		 	
		 	<label class="password">
		 	
		 		<img src="/IMPet/resources/image/SkinImg/pw.gif" alt="pw"/>       	
		 		<input id="member_passwd" name="MEMBER_PW" type="password" value=""/>
		 	
		 	</label>
		 	
		 	 <p class="security"></p>		 	
		 	
		 </fieldset>
	
	</div>
	
	<div class="login_btn">
				
		<input TYPE="IMAGE" src="/IMPet/resources/image/SkinImg/btn_login.gif" name="Submit" value="Submit"  onclick="location.href='/IMPet/Member/Login'"/>
		
	</div>
	
</div>




<input value="로그인" type="button" onclick="location.href='/IMPet/Member/Login'"/> <br/>



<br/><br/><br/>


<input value="아디찾기" type="button" onclick="location.href='/IMPet/Member/FindIDForm'"/> /

<input value="비번찾기" type="button" onclick="location.href='/IMPet/Member/FindPwForm'"/>




</body>
</html>