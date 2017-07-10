<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- <link rel="stylesheet" href="/SG/resources/file/css/owl.theme.default.min.css"> -->
   <!-- <script src="/SG/resources/file/css/owl.carousel.min.js"></script>
   <script src="/SG/resources/file/css/owl.js"></script> -->
<!-- <link rel="stylesheet" href="/SG/resources/file/css/ui.css"> -->

<link rel="stylesheet" href="/IMPet/resources/css/member/main.min.css">

<style type="text/css">
@import url('//cdn.rawgit.com/young-ha/webfont-archive/master/css/PureunJeonnam.css'); 

.body_center {
 width:900px;
 height:1000px;
 margin-left:auto;
 margin-right:auto;
 padding-top:50px;
 font-family: PureunJeonnam;

}
.main_subject {
 color:000000;
 text-align:left;
 margin-left:10px;
 margin-bottom:10px;
}
.join_submit {
   float:left;
   width: 150px;
   height:40px;
   background-color:#00CCCF;
   margin-bottom: 10px;
   margin-right:auto;
   margin-left:370px;
   margin-top: 10px;
   text-align: right;
   font-size: 1%;
   line-height: 1%;
   font-family: PureunJeonnam;
}
.join_submit input[type='submit'] {
	width: 150px;
	border: 0;
	border-radius: 4px;
	color: #FFFFFF;
    background-color:#00CCCF;
	font-size: 18px;
	line-height: inherit;
	text-transform: uppercase;
	cursor: pointer;
	height: 40px;
	padding-right: 20px;
	margin-bottom: 12px;
	padding-left: 20px;
    font-weight: bold;
}
</style>
</head>
</head>
<body>
<div class="body_center">

<section class="input-horizontal list-horizontal section box-shadow">
            <div class="main_subject">
               <h2>회원정보</h2>
            </div>

 
<ul class="section-body">
   <li class="id">
      <div class="item-label col-lg-3 col-md-4">
         <label for="mi">
            <strong>* 아이디</strong>
         </label>
      </div>
      <div class="col-lg-21 col-md-20">
         <input type="text" name="MEMBER_ID" id="MEMBER_ID" value="" maxlength="20" class="xx-control" label="아이디" required="">
         <p class="alert alert-positive"></p>
      </div>
   </li>
   
   <li class="password">
      <div class="item-label col-lg-3 col-md-4">
         <label for="input-password">
            <strong>* 비밀번호</strong>
         </label>
      </div>
      <div class="col-lg-21 col-md-20">
         <input type="password" id="input-password" class="xx-control" value="" name="MEMBER_PASSWORD" required="" label="비밀번호">
      </div>
   </li>
   <li class="password check">
      <div class="item-label col-lg-3 col-md-4">
         <label for="input-password-check">
            <strong>* 비밀번호 확인</strong>
         </label>
      </div>
      <div class="col-lg-21 col-md-20">
         <input type="password" id="input-password-check" class="xx-control" value="" name="password_confirm" required="" label="비밀번호">
      </div>
   </li>
   <li class="name">
      <div class="item-label col-lg-3 col-md-4">
         <label for="input-name">
            <strong>* 이름</strong>
         </label>
      </div>
      <div class="col-lg-21 col-md-20">
         <input type="text" id="input-name" class="xx-control" name="MEMBER_NAME" value="" required="" label="이름"><!--disabled="disabled"-->
      </div>
   </li>
   <li class="cell-phone">
      <div class="item-label col-lg-3 col-md-4">
         <label for="input-cell-phone01">
            <strong>* 핸드폰</strong>
         </label>
      </div>
      <div class="col-lg-21 col-md-20">
         <div class="input-box">
            <input type="text" name="MEMBER_PHONE" id="input-cell-phone01" label="휴대폰" value=""  maxlength="11" class="xx-control" required="">
         </div>
         
         
      </div>
   </li>
   <li class="mail">
      <div class="item-label col-lg-3 col-md-4">
         <label for="input-mail">
            <strong>* 이메일</strong>
         </label>
      </div>
      <div class="col-lg-21 col-md-20">
         <div class="input-box">
            <input type="text" name="MEMBER_EMAIL1" class="xx-control x01" label="이메일" required="" value="" size="10" readonly>
            <span>@</span>
            <input type="text" name="MEMBER_EMAIL2" id="email2" class="xx-control x02" label="이메일" required="" value="" size="20" readonly>
            
         </div>

         
      </div>
   </li>
   <li class="address">
      <div class="item-label col-lg-3 col-md-4">
         <strong>* 주소</strong>
      </div>
      <div class="col-lg-21 col-md-20">
         <div class="input-box">
         <input type="text" id="sample6_postcode"  name="MEMBER_ZIPCODE" disabled="disabled" label="우편번호" value="" maxlength="6" required="">
            <span class="button button-dimmed" onclick="sample6_execDaumPostcode()">주소 찾기</span>
         </div>
         <input type="text" id="sample6_address" class="xx-control" name="MEMBER_ADDRESS1" label="주소" disabled="disabled" value="" size="48" readonly="" required="">
         <input type="text" id="sample6_address2" class="xx-control" name="MEMBER_ADDRESS2" value="" label="주소" required="">
      </div>
   </li>
   <li class="birth input-placeholder">
      <div class="item-label col-lg-3 col-md-4">
         <label for="input-birth01">
            <strong>생년월일</strong>
         </label>
      </div>
      <div class="col-lg-21 col-md-20">
         <div class="input-box">
               <input type="text" id="input-birth01" name="MEMBER_BIRTHDAY" value="" maxlength="8" placeholder="예)19000101" class="xx-control" required="">
         </div>
      </div>
   </li>
   <li class="birth input-placeholder">
      <div class="item-label col-lg-3 col-md-4">
         <label for="height">
            <strong>키</strong>
         </label>
      </div>
      <div class="col-lg-21 col-md-20">
         <div class="input-box">
               <input type="text" id="height" name="MEMBER_HEIGHT" value="" maxlength="8" placeholder="예)180" class="xx-control" required="">
         </div>
      </div>
   </li>
   <li class="birth input-placeholder">
      <div class="item-label col-lg-3 col-md-4">
         <label for="weight">
            <strong>몸무게</strong>
         </label>
      </div>
      <div class="col-lg-21 col-md-20">
         <div class="input-box">
               <input type="text" id="weight" name="MEMBER_WEIGHT" value="" maxlength="8" placeholder="예)180" class="xx-control" required="">
         </div>
      </div>
      <div class="join_submit">   
       <input type="submit" id="submit" value="가입 완료" onclick="location.href='/SG/joinSuccess'">
         </div>
   </li>
</ul>
         </section>
         </div>
</body>
</html>