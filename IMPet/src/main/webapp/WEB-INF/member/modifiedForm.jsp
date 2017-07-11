<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>회원 수정 폼</title>

<link rel="stylesheet" href="/IMPet/resources/css/member/joinForm.css">

</head>
<body>


<div class="joinFormBody">

<div id ="ContextJoinForm">


	<div class="joinInbox">
	<form name="jform" class="joinForm">
	
		<fieldset>
			<!-- <legend>로그인 정보</legend> -->
			<ol>
				<li>
					<label   class="reqyestslabel2" >아이디</label>
					<input  name="MEMBER_ID" type="text" value="${memberInfo.MEMBER_ID}"  readonly autofocus>					
								
				</li>
				<li>
					<label class="reqyestslabel2">비밀번호</label>
					<input  name="MEMBER_PW" type="password"  value="${memberInfo.MEMBER_PW}"   required>
				</li>
				<li>
					<label class="reqyestslabel2" >비밀번호 확인</label>
					<input name="MEMBER_PW2" type="password"  value="${memberInfo.MEMBER_PW}"  required>
				</li> 		
			</ol>
		</fieldset>
		
			
		<fieldset>
			<!-- <legend>개인 정보</legend> -->
			<ol>
				<li>
					<label class="reqyestslabel2">이름</label>
					<input name="MEMBER_NAME" type="text" value="${memberInfo.MEMBER_NAME}" placeholder="5자미만 공백없이"  required>
				</li> 
				
				<li>
					<label class="reqyestslabel2" >닉네임</label>
					<input name="MEMBER_NICKNAME" type="text" value="${memberInfo.MEMBER_NICKNAME}" required>
				</li> 				
			</ol>
		</fieldset>	 
		
		<fieldset>
			<!-- <legend>개인 정보</legend> -->
			<ol>
					
				<li>
					<label class="reqyestslabel2">우편번호</label>
					<!-- <input id="name" name="MEMBER_NICKNAME" type="text" required>-->
					<input id="sample6_postcode" name="MEMBER_ZIPCODE" type="text"  value="${memberInfo.MEMBER_ZIPCODE}"  readonly value="">
					<input  type="button" onclick="sample6_execDaumPostcode()" value="우편 번호 찾기" />		
				</li> 	
				
				<li>
					<label class="reqyestslabel2">주소</label>
					<input id="sample6_address" name="MEMBER_ADDRESS" type="text" value="${memberInfo.MEMBER_ADDRESS}" readonly value="">
					<!-- <input id="name" name="MEMBER_NICKNAME" type="text" required> -->
				</li>
				
				<li>
					<label class="reqyestslabel2">상제 주소</label>
					<input id="sample6_address2" name="MEMBER_ADDRESS2" type="text"  value="${memberInfo.MEMBER_ADDRESS2}"  required>
				</li>
				
			</ol>
		</fieldset>
		
		<fieldset>
			<!-- <legend>개인 정보</legend> -->
			<ol>
				<li>
					<label class="reqyestslabel2">메일 주소</label>
	    			<input name="MEMBER_EMAIL" type="email" placeholder="abcd@domain.com" value="${memberInfo.MEMBER_EMAIL}" required autocomplete="off">			
	    		</li> 	 
	    			
	    		<li>
				    <label class="reqyestslabel2">연락처</label>
				    <input name="MEMBER_TEL" type="tel" value="${memberInfo.MEMBER_TEL}" autocomplete="off">
				</li>  			
			</ol>
		</fieldset>	
		
		<fieldset>
			<!-- <legend>부가 정보</legend> -->
			<ol>
				<li>
					<label>반려동물종류</label>				
					
					<input type="radio" name="MEMBER_ANIMAL_TYPE" value="1" <c:if test="${memberInfo.MEMBER_ANIMAL_TYPE eq '1'}">checked="checked"</c:if> />강아지
					<input type="radio" name="MEMBER_ANIMAL_TYPE" value="2" <c:if test="${memberInfo.MEMBER_ANIMAL_TYPE eq '2'}">checked="checked"</c:if> />고양이
					<input type="radio" name="MEMBER_ANIMAL_TYPE" value="3" <c:if test="${memberInfo.MEMBER_ANIMAL_TYPE eq '3'}">checked="checked"</c:if> />기타
					<input type="radio" name="MEMBER_ANIMAL_TYPE" value="0" <c:if test="${memberInfo.MEMBER_ANIMAL_TYPE eq '0'}">checked="checked"</c:if> />없음	
									
				</li>
				
				<li>
					<label  class="reqyestslabel">요구사항(반려동물에 대한 요구사항이 있을시 적어 주세요!)</label>
					
					<textarea name="MEMBER_REQUESTS"  cols="53" rows="10" required >${memberInfo.MEMBER_ANIMAL_TYPE}</textarea>
					
				</li>			
			
			</ol>
		</fieldset>	
		
	
	</form>	
	</div>	
	<br/><br/>
	<!-- <input value="가입 완료" type="button" onclick="ajaxJoinInsertView();"/>
	 -->

</div>
</div>






<br/><br/><br/>

<input value="회원 수정하기" type="button" onclick="location.href='/IMPet/Member/Modified'"/>

<br/><br/>
<input value="마이페이지로 이동" type="button" onclick="location.href='/IMPet/MyPage/Main'"/>


</body>
</html>