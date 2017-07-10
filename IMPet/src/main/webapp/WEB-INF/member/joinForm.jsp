<%@ page contentType="text/html; charset=UTF-8"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<!DOCTYPE html>


<html lang="ko"  xmlns="http://www.w3.org/1999/xhtml" >
<head>


<meta charset="UTF-8">

<title>회원가입 폼</title>

<link rel="stylesheet" href="/IMPet/resources/css/member/joinForm.css">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>


<!-- <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="resources/JQuery/joinForm.js" charset="utf-8"></script>

 -->



<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>


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
<body class="joinFormBody">
<input type="text" id="sample6_postcode" placeholder="우편번호">
<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
<input type="text" id="sample6_address" placeholder="주소">
<input type="text" id="sample6_address2" placeholder="상세주소">


<div id ="ContextJoinForm">


	<div class="joinInbox">
	<form name="jform" class="joinForm">
	
			<fieldset>
			<!-- <legend>로그인 정보</legend> -->
			<ol>
				<li>
					<label for="MEMBER_ID"  class="reqyestslabel2" >아이디</label>
					<input id="userid" name="MEMBER_ID" type="text" equired autofocus>
					<input id="userid" type="button" value="중복 체크" />
					
				</li>
				<li>
					<label for="pwd1" class="reqyestslabel2">비밀번호</label>
					<input id="pwd1" name="MEMBER_PW" type="password"  required>
				</li>
				<li>
					<label pwd="pwd2" class="reqyestslabel2" >비밀번호 확인</label>
					<input id="pwd2" name="MEMBER_PW2" type="password" required>
				</li> 
				
			
			</ol>
		</fieldset>
		
			
		<fieldset>
			<!-- <legend>개인 정보</legend> -->
			<ol>
				<li>
					<label  pwd="name" class="reqyestslabel2">이름</label>
					<input id="name" name="MEMBER_NAME" type="text" placeholder="5자미만 공백없이"  required>
				</li> 
				
				
				<li>
					<label  pwd="name" class="reqyestslabel2" >닉네임</label>
					<input id="name" name="MEMBER_NICKNAME" type="text" required>
				</li> 				
			</ol>
		</fieldset>	 
		
		<fieldset>
			<!-- <legend>개인 정보</legend> -->
			<ol>
				
				
				<li>
					<label  pwd="name" class="reqyestslabel2">우편번호</label>
					<!-- <input id="name" name="MEMBER_NICKNAME" type="text" required>-->
					<input id="sample6_postcode" name="MEMBER_NICKNAME" type="text" readonly value="">
					<input id="level" type="button" onclick="sample6_execDaumPostcode()" value="우편 번호 찾기" />		
				</li> 	
				
				<li>
					<label  pwd="name" class="reqyestslabel2">주소</label>
					<input id="sample6_address" name="MEMBER_NICKNAME" type="text" readonly value="">
					<!-- <input id="name" name="MEMBER_NICKNAME" type="text" required> -->
				</li>
				
				<li>
					<label  pwd="name" class="reqyestslabel2">상제 주소</label>
					<input id="sample6_address2" name="MEMBER_NICKNAME" type="text" required>
				</li>
				
			
			</ol>
		</fieldset>
		
		
		<fieldset>
			<!-- <legend>개인 정보</legend> -->
			<ol>
				<li>
					<label pwd="email" class="reqyestslabel2">메일 주소</label>
	    			<input id="email" name="MEMBER_EMAIL" type="email" placeholder="abcd@domain.com" required autocomplete="off">			
	    		</li> 	 
	    		
	    		
	    		<li>
				    <label pwd="tel" class="reqyestslabel2">연락처</label>
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
		
	
	</form>	
	</div>	
	
<!-- 	
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
			
	
	 -->
	<br/><br/><br/><br/><br/><br/><br/>
	<input value="가입 완료" type="button" onclick="ajaxJoinInsertView();"/>
	
	<%-- 
</form>	 --%>
</div>

</body>
</html>