<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/IMPet/resources/css/member/joinForm4.css">

</head>
<body class="joinFormBody">

	<div class="joinInbox">
	<form class="joinForm">
	
		<fieldset>
			<!-- <legend>로그인 정보</legend> -->
			<ol>
				<li>
					<label for="MEMBER_ID">아이디</label>
					<input id="userid" name="MEMBER_ID" type="text" equired autofocus>
					<input id="userid" type="button" value="중복 체크" />
					
				</li>
				<li>
					<label for="pwd1">비밀번호</label>
					<input id="pwd1" name="MEMBER_PW" type="password"  required>
				</li>
				<li>
					<label pwd="pwd2">비밀번호 확인</label>
					<input id="pwd2" name="MEMBER_PW2" type="password" required>
				</li> 
				
			
			</ol>
		</fieldset>
		
		
		
		<fieldset>
			<!-- <legend>개인 정보</legend> -->
			<ol>
				<li>
					<label  pwd="name">이름</label>
					<input id="name" name="MEMBER_NAME" type="text" placeholder="5자미만 공백없이"  required>
				</li> 
				
				
				<li>
					<label  pwd="name">닉네임</label>
					<input id="name" name="MEMBER_NICKNAME" type="text" required>
				</li> 				
			</ol>
		</fieldset>	
		
		<fieldset>
			<!-- <legend>개인 정보</legend> -->
			<ol>
				
				
				<li>
					<label  pwd="name">우편번호</label>
					<!-- <input id="name" name="MEMBER_NICKNAME" type="text" required>-->
					<input id="level" name="MEMBER_NICKNAME" type="text" readonly value="">
					<input id="userid" type="button" value="우편 번호 찾기" />		
				</li> 	
				
				<li>
					<label  pwd="name">주소</label>
					<input id="level" name="MEMBER_NICKNAME" type="text" readonly value="">
					<!-- <input id="name" name="MEMBER_NICKNAME" type="text" required> -->
				</li>
				
				<li>
					<label  pwd="name">기본 상제 주소</label>
					<input id="name" name="MEMBER_NICKNAME" type="text" required>
				</li>
				
			
			</ol>
		</fieldset>
		
		
		
		<fieldset>
			<!-- <legend>개인 정보</legend> -->
			<ol>
				<li>
					<label pwd="email">메일 주소</label>
	    			<input id="email" name="MEMBER_EMAIL" type="email" placeholder="abcd@domain.com" required autocomplete="off">			
	    		</li> 	 
	    		
	    		
	    		<li>
				    <label pwd="tel">연락처</label>
				    <input id="tel" name="MEMBER_TEL" type="tel" autocomplete="off">
				</li>  			
			</ol>
		</fieldset>	
		
		<fieldset>
			<!-- <legend>부가 정보</legend> -->
			<ol>
				<li>
					<label for="MEMBER_ANIMAL_TYPE">반려동물종류</label>				
					
					<input type="radio" name="MEMBER_ANIMAL_TYPE" value="1" />강아지
					<input type="radio" name="MEMBER_ANIMAL_TYPE" value="2"/>고양이
					<input type="radio" name="MEMBER_ANIMAL_TYPE" value="3"/>기타
					<input type="radio" name="MEMBER_ANIMAL_TYPE" value="0" checked="checked"/>없음
					
					
					
				</li>
				<li>
					<label for="pwd1" class="reqyestslabel">요구사항(반려동물에 대한 요구사항이 있을시 적어 주세요!)</label>
					
					<textarea name="MEMBER_REQUESTS" theme="simple"  cols="53" rows="10" required ></textarea>
					
				</li>
				
				
			
			</ol>
		</fieldset>	
		
	<!-- 	<fieldset>
			
	  		<button type="button"> 회원 가입 </button>
	  		<button type="button"> 회원 가입 취소 </button> 
		</fieldset> -->
	</form>
</div>

</body>
</html>