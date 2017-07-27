<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>


<html lang="ko"   >
<head>


<meta charset="UTF-8">

<title>회원가입 폼</title>


<link rel="stylesheet" href="/IMPet/resources/css/member/joinForm.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
<link rel="stylesheet" href="/IMPet/resources/css/shop/orderForm.css">



<script type="text/javascript">


	
	function ajaxJoinInsertView(){
		
		  
		  
		var obj =document.jform;

		//alert(obj.MEMBER_ID.value);     
		
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
	
	
	function setChildValue(name){	
		var obj =document.jform;	
		obj.MEMBER_ID.value =  name;				
	}
	
	
</script>





</head>



<body>

<div id ="ContextJoinForm">

<br/><br/>
<div class="orderArea">

	<div class="boardWrite" align="center">

<form name="jform" >	
		<table border="1" summary="" style="width: 75%">
		
			<tbody>
					
					<tr>						
						<th scope="row">아이디</th>
						<td>
							<input  name="MEMBER_ID" type="text" equired autofocus>		
							<input  type="button" value="ID중복확인"  onclick="openConfirmid(this.form)">			
						</td>						
					</tr>
					
						
					<tr>						
						<th scope="row">비밀번호</th>
						<td>
							<input  name="MEMBER_PW" type="password"  required>			
						</td>						
					</tr>
					
					<tr>						
						<th scope="row">비밀번호 확인</th>
						<td>
							<input name="MEMBER_PW2" type="password" required>	
						</td>						
					</tr>		
					
					<tr>						
						<th scope="row">이름</th>
						<td>
							<input name="MEMBER_NAME" type="text" placeholder="5자미만 공백없이"  required>
						</td>						
					</tr>		
					
					<tr>						
						<th scope="row">닉네임</th>
						<td>
							<input name="MEMBER_NICKNAME" type="text" required>
						</td>						
					</tr>		
				
				
					<tr>						
						<th scope="row">우편번호</th>
						<td>
							<input id="sample6_postcode" name="MEMBER_ZIPCODE" type="text" readonly value="">
							<input  type="button" onclick="sample6_execDaumPostcode()" value="우편 번호 찾기" />		
						</td>						
					</tr>		
					
					<tr>						
						<th scope="row">주소</th>
						<td>
							<input id="sample6_address" name="MEMBER_ADDRESS" type="text" readonly value="">
						</td>						
					</tr>	
					
					<tr>						
						<th scope="row">상세 주소</th>
						<td>
							<input id="sample6_address2" name="MEMBER_ADDRESS2" type="text" required>
						</td>						
					</tr>		
					
					
					<tr>						
						<th scope="row">메일 주소</th>
						<td>
							<input name="MEMBER_EMAIL" type="email" placeholder="abcd@domain.com" required autocomplete="off">	
						</td>						
					</tr>		
					
			
					<tr>						
						<th scope="row">연락처</th>
						<td>
							<input name="MEMBER_TEL" type="tel" autocomplete="off">
						</td>						
					</tr>	
					
					
					
					<tr>						
						<th scope="row">반려동물종류</th>
						<td>
							<input type="radio" name="MEMBER_ANIMAL_TYPE" value="1" />강아지
							<input type="radio" name="MEMBER_ANIMAL_TYPE" value="2"/>고양이
							<input type="radio" name="MEMBER_ANIMAL_TYPE" value="3"/>기타
							<input type="radio" name="MEMBER_ANIMAL_TYPE" value="0" checked="checked"/>없음		
						</td>						
					</tr>	
					
					
					
					
					<tr>						
						<th scope="row">요구사항<br/>(반려동물에 대한 요구사항이 있을시 적어 주세요!)</th>
						<td>
								<textarea name="MEMBER_REQUESTS"  cols="80" rows="10" required ></textarea>
						</td>						
					</tr>	
			
				
					
			</tbody>		
		
		
		</table>
</form>	
	
	</div>


</div>



	<br/><br/>
		<!-- <input value="가입 완료" type="button" onclick="ajaxJoinInsertView();"/>	
		 -->
		<div class="btnArea" style="float: right;">				
			<a class="effect2 effect-6"  title="가입 완료" onclick="ajaxJoinInsertView();">다음 단계로 이동</a>
		<br></br>
		
		</div>	
	<br></br>
</div>	
	
<%-- 
<br/><br/><br/><br/><br/><br/><br/>

<div class="joinFormBody">

<div id ="ContextJoinForm">

	
	
	<div class="joinInbox">
	<form name="jform" class="joinForm">
	
		<fieldset>
			<!-- <legend>로그인 정보</legend> -->
			<ol>
				<li>
					<label   class="reqyestslabel2" >아이디</label>
					<input  name="MEMBER_ID" type="text" equired autofocus>					
					<input  type="button" value="ID중복확인"  onclick="openConfirmid(this.form)">
			
					
				</li>
				<li>
					<label class="reqyestslabel2">비밀번호</label>
					<input  name="MEMBER_PW" type="password"  required>
				</li>
				<li>
					<label class="reqyestslabel2" >비밀번호 확인</label>
					<input name="MEMBER_PW2" type="password" required>
				</li> 		
			</ol>
		</fieldset>
		
			
		<fieldset>
			<!-- <legend>개인 정보</legend> -->
			<ol>
				<li>
					<label class="reqyestslabel2">이름</label>
					<input name="MEMBER_NAME" type="text" placeholder="5자미만 공백없이"  required>
				</li> 
				
				<li>
					<label class="reqyestslabel2" >닉네임</label>
					<input name="MEMBER_NICKNAME" type="text" required>
				</li> 				
			</ol>
		</fieldset>	 
		
		<fieldset>
			<!-- <legend>개인 정보</legend> -->
			<ol>
					
				<li>
					<label class="reqyestslabel2">우편번호</label>
					<!-- <input id="name" name="MEMBER_NICKNAME" type="text" required>-->
					<input id="sample6_postcode" name="MEMBER_ZIPCODE" type="text" readonly value="">
					<input  type="button" onclick="sample6_execDaumPostcode()" value="우편 번호 찾기" />		
				</li> 	
				
				<li>
					<label class="reqyestslabel2">주소</label>
					<input id="sample6_address" name="MEMBER_ADDRESS" type="text" readonly value="">
					<!-- <input id="name" name="MEMBER_NICKNAME" type="text" required> -->
				</li>
				
				<li>
					<label class="reqyestslabel2">상제 주소</label>
					<input id="sample6_address2" name="MEMBER_ADDRESS2" type="text" required>
				</li>
				
			</ol>
		</fieldset>
		
		<fieldset>
			<!-- <legend>개인 정보</legend> -->
			<ol>
				<li>
					<label class="reqyestslabel2">메일 주소</label>
	    			<input name="MEMBER_EMAIL" type="email" placeholder="abcd@domain.com" required autocomplete="off">			
	    		</li> 	 
	    			
	    		<li>
				    <label class="reqyestslabel2">연락처</label>
				    <input name="MEMBER_TEL" type="tel" autocomplete="off">
				</li>  			
			</ol>
		</fieldset>	
		
		<fieldset>
			<!-- <legend>부가 정보</legend> -->
			<ol>
				<li>
					<label>반려동물종류</label>				
					
					<input type="radio" name="MEMBER_ANIMAL_TYPE" value="1" />강아지
					<input type="radio" name="MEMBER_ANIMAL_TYPE" value="2"/>고양이
					<input type="radio" name="MEMBER_ANIMAL_TYPE" value="3"/>기타
					<input type="radio" name="MEMBER_ANIMAL_TYPE" value="0" checked="checked"/>없음					
				</li>
				
				<li>
					<label  class="reqyestslabel">요구사항(반려동물에 대한 요구사항이 있을시 적어 주세요!)</label>
					
					<textarea name="MEMBER_REQUESTS"  cols="53" rows="10" required ></textarea>
					
				</li>			
			
			</ol>
		</fieldset>	
		
	
	</form>	
	</div>	
	<br/><br/>
	<input value="가입 완료" type="button" onclick="ajaxJoinInsertView();"/>
	

</div>
</div>
 --%>
</body>
</html>