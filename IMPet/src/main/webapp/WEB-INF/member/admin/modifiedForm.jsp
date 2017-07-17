<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>회원 수정 폼</title>

<link rel="stylesheet" href="/IMPet/resources/css/member/admin/joinForm.css">

<script type="text/javascript">


	
	function ajaxJoinUpdateView(){
		
		  
		  
		var obj =document.jform;

	
		
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
			"MEMBER_REQUESTS":obj.MEMBER_REQUESTS.value,
			
		}
		
	
		var url1 = "/IMPet/Member/Modified";
	
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
					<input id="sample6_postcode" name="MEMBER_ZIPCODE" type="text"  value="${memberInfo.MEMBER_ZIPCODE}"  readonly >
					<input  type="button" onclick="sample6_execDaumPostcode()" value="우편 번호 찾기" />		
				</li> 	
				
				<li>				
					<label class="reqyestslabel2">주소</label>
					<input id="sample6_address" name="MEMBER_ADDRESS" type="text" value="${memberInfo.MEMBER_ADDRESS}" readonly >
					<!-- <input id="name" name="MEMBER_NICKNAME" type="text" required> -->
				</li>
				
				<li>
					<label class="reqyestslabel2">상제 주소</label>
					<input id="sample6_address2" name="MEMBER_ADDRESS2" type="text"  value="${memberInfo.MEMBER_ADDRESS2}"  required >
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
					
						<textarea name="MEMBER_REQUESTS"  style="width:100%;" rows="10" required >${memberInfo.MEMBER_REQUESTS}</textarea>
			
					<%-- <textarea name="MEMBER_REQUESTS"  cols="53" rows="10" required >${memberInfo.MEMBER_ANIMAL_TYPE}</textarea>
					 --%>
				</li>			
			
			</ol>
		</fieldset>	
		
	<input value="회원 수정하기" type="button"  onclick="ajaxJoinUpdateView();"/>
	
	</form>	
	</div>	
	<br/><br/>


</div>
</div>






<br/><br/><br/>

<br/><br/>
<input value="마이페이지로 이동" type="button" onclick="location.href='/IMPet/MyPage/Main'"/>


</body>
</html>