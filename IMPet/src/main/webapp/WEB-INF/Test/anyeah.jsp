<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>


<html lang="ko">
<head>

	<meta charset="UTF-8">
<title>안예아 전용 페이지 </title>

<!-- 마이페이지 예시 -->
<link rel="stylesheet" type="text/css" href="/IMPet/resources/css/admin/mypage.css" />

 <style>
 /* 폰트 */
 @import url(//fonts.googleapis.com/earlyaccess/hanna.css);
 
 /* 버튼 예시 1 */
 .button {
  position: relative;
  padding: 14px 0;
  border: 2px #2ecc71 solid;
  float: left;
  color: #2ecc71;
  cursor: pointer;
  font-family: 'Hanna' sans-serif;
  font-size: .9em;
  text-transform: uppercase;
  transition: color 0.4s, background-color 0.4s;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  border-radius: 2px;
  display: inline-block;
  vertical-align: middle;
  line-height: 1em;
  outline: none;
  text-align: center;
  text-decoration: none;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  width: 210px;
  top: 50%;
  left: 50%;
  margin: 0 -105px;
  width: 210px;
}
.button:hover, .button:focus {
  transition: color 0.4s, background-color 0.4s;
  color: white;
  text-decoration: none;
  background-color: #2ecc71;
}

 /* 버튼 예시 2 */
.button2 {
  position: absolute;
  left: 50%;
  top: 50%;
  -webkit-transform: translateX(-50%) translateY(-50%);
          transform: translateX(-50%) translateY(-50%);
}
.button2 {
  background: #333;
  color: #ccc;
  width: 200px;
  height: 60px;
  border: 0;
  font-size: 18px;
  border-radius: 4px;
  font-family: 'Hanna', sans-serif;
  -webkit-transition: .6s;
  transition: .6s;
  overflow: hidden;
}
.button:focus2 {
  outline: 0;
}
.button2:before {
  content: '';
  display: block;
  position: absolute;
  background: rgba(255, 255, 255, 0.5);
  width: 60px;
  height: 100%;
  left: 0;
  top: 0;
  opacity: .5;
  -webkit-filter: blur(30px);
          filter: blur(30px);
  -webkit-transform: translateX(-100px) skewX(-15deg);
          transform: translateX(-100px) skewX(-15deg);
}
.button2:after {
  content: '';
  display: block;
  position: absolute;
  background: rgba(255, 255, 255, 0.2);
  width: 30px;
  height: 100%;
  left: 30px;
  top: 0;
  opacity: 0;
  -webkit-filter: blur(5px);
          filter: blur(5px);
  -webkit-transform: translateX(-100px) skewX(-15deg);
          transform: translateX(-100px) skewX(-15deg);
}
.button2:hover {
  background: #338033;
  cursor: pointer;
}
.button2:hover:before {
  -webkit-transform: translateX(300px) skewX(-15deg);
          transform: translateX(300px) skewX(-15deg);
  opacity: 0.6;
  -webkit-transition: .7s;
  transition: .7s;
}
.button2:hover:after {
  -webkit-transform: translateX(300px) skewX(-15deg);
          transform: translateX(300px) skewX(-15deg);
  opacity: 1;
  -webkit-transition: .7s;
  transition: .7s;
}

#cssmenu,
#cssmenu ul,
#cssmenu ul li,
#cssmenu ul li a,
#cssmenu #menu-button {
  margin: 0;
  padding: 0;
  border: 0;
  list-style: none;
  line-height: 1;
  display: block;
  position: relative;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
#cssmenu:after,
#cssmenu > ul:after {
  content: ".";
  display: block;
  clear: both;
  visibility: hidden;
  line-height: 0;
  height: 0;
}
#cssmenu #menu-button {
  display: none;
}
#cssmenu {
  width: auto;
  font-family: 'Open Sans', sans-serif;
  line-height: 1;
  background: #ffffff;
}
#menu-line {
  position: absolute;
  top: 0;
  left: 0;
  height: 3px;
  background: #009ae1;
  -webkit-transition: all 0.25s ease-out;
  -moz-transition: all 0.25s ease-out;
  -ms-transition: all 0.25s ease-out;
  -o-transition: all 0.25s ease-out;
  transition: all 0.25s ease-out;
}
#cssmenu > ul > li {
  float: left;
}
#cssmenu.align-center > ul {
  font-size: 0;
  text-align: center;
}
#cssmenu.align-center > ul > li {
  display: inline-block;
  float: none;
}
#cssmenu.align-center ul ul {
  text-align: left;
}
#cssmenu.align-right > ul > li {
  float: right;
}
#cssmenu.align-right ul ul {
  text-align: right;
}
#cssmenu > ul > li > a {
  padding: 20px;
  font-size: 12px;
  text-decoration: none;
  text-transform: uppercase;
  color: #000000;
  -webkit-transition: color .2s ease;
  -moz-transition: color .2s ease;
  -ms-transition: color .2s ease;
  -o-transition: color .2s ease;
  transition: color .2s ease;
}
#cssmenu > ul > li:hover > a,
#cssmenu > ul > li.active > a {
  color: #009ae1;
}
#cssmenu > ul > li.has-sub > a {
  padding-right: 25px;
}
#cssmenu > ul > li.has-sub > a::after {
  position: absolute;
  top: 21px;
  right: 10px;
  width: 4px;
  height: 4px;
  border-bottom: 1px solid #000000;
  border-right: 1px solid #000000;
  content: "";
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  -o-transform: rotate(45deg);
  transform: rotate(45deg);
  -webkit-transition: border-color 0.2s ease;
  -moz-transition: border-color 0.2s ease;
  -ms-transition: border-color 0.2s ease;
  -o-transition: border-color 0.2s ease;
  transition: border-color 0.2s ease;
}
#cssmenu > ul > li.has-sub:hover > a::after {
  border-color: #009ae1;
}
#cssmenu ul ul {
  position: absolute;
  left: -9999px;
}
#cssmenu li:hover > ul {
  left: auto;
}
#cssmenu.align-right li:hover > ul {
  right: 0;
}
#cssmenu ul ul ul {
  margin-left: 100%;
  top: 0;
}
#cssmenu.align-right ul ul ul {
  margin-left: 0;
  margin-right: 100%;
}
#cssmenu ul ul li {
  height: 0;
  -webkit-transition: height .2s ease;
  -moz-transition: height .2s ease;
  -ms-transition: height .2s ease;
  -o-transition: height .2s ease;
  transition: height .2s ease;
}
#cssmenu ul li:hover > ul > li {
  height: 32px;
}
#cssmenu ul ul li a {
  padding: 10px 20px;
  width: 160px;
  font-size: 12px;
  background: #333333;
  text-decoration: none;
  color: #dddddd;
  -webkit-transition: color .2s ease;
  -moz-transition: color .2s ease;
  -ms-transition: color .2s ease;
  -o-transition: color .2s ease;
  transition: color .2s ease;
}
#cssmenu ul ul li:hover > a,
#cssmenu ul ul li a:hover {
  color: #ffffff;
}
#cssmenu ul ul li.has-sub > a::after {
  position: absolute;
  top: 13px;
  right: 10px;
  width: 4px;
  height: 4px;
  border-bottom: 1px solid #dddddd;
  border-right: 1px solid #dddddd;
  content: "";
  -webkit-transform: rotate(-45deg);
  -moz-transform: rotate(-45deg);
  -ms-transform: rotate(-45deg);
  -o-transform: rotate(-45deg);
  transform: rotate(-45deg);
  -webkit-transition: border-color 0.2s ease;
  -moz-transition: border-color 0.2s ease;
  -ms-transition: border-color 0.2s ease;
  -o-transition: border-color 0.2s ease;
  transition: border-color 0.2s ease;
}
#cssmenu.align-right ul ul li.has-sub > a::after {
  right: auto;
  left: 10px;
  border-bottom: 0;
  border-right: 0;
  border-top: 1px solid #dddddd;
  border-left: 1px solid #dddddd;
}
#cssmenu ul ul li.has-sub:hover > a::after {
  border-color: #ffffff;
}


.upload {  
  opacity: 0;       /*input type="file" tag 투명하게 처리*/
  position: relative;
    width: 100px;
  height: 100px;
}
.replace {    /*button tag 에 원하는 스타일 적용*/
  position: absolute;
  width: 100px;
  height: 100px;
  border-radius: 3px;
  font-weight: 600;
  border-color: transparent;
  font-size: 25px;
  background: hotpink;
  color: #fff;
  cursor: pointer;
}
 </style>



</head>
<body>



<div id='cssmenu'>
<ul>
   <li><a href='#'>Home</a></li>
   <li class='active has-sub'><a href='#'>Products</a>
      <ul>
         <li class='has-sub'><a href='#'>Product 1</a>
            
         </li>
         <li class='has-sub'><a href='#'>Product 2</a>
           
         </li>
      </ul>
   </li>
   <li><a href='#'>About</a></li>
   <li><a href='#'>Contact</a></li>
</ul>
</div>


<!-- 마이페이지 -->
<div id="middler_body">

		<table cellpadding="0" cellspacing="0" width="100%">
			<tbody><tr>
				<td align="center">
					
						<table cellpadding="0" cellspacing="0" width="1140" border="0">
						<tbody><tr>
							<td>



<div style="padding:20px 0;">

	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
			<td style="font-size:25px;color:#303030;"><b>MYPAGE</b> <span style="font-size:12px;padding-left:3px">회원가입부터 주문/배송 등 쇼핑에 필요한 궁금한 사항을 친절한 안내로 보다 편안한 쇼핑을 할 수 있도록 도와드리겠습니다.</span></td>
			</tr>
		</tbody>
	</table>

</div>
<!-- 서브메뉴 -->
<div>
	<table cellpadding="0" cellspacing="0">
		<tbody>
		<tr></tr>
		<tr>
			<td>
				
				<table cellpadding="0" cellspacing="0">
					<tbody><tr>
						<td><a href="/IMPet/Member/ModifiedForm"><img src="http://img.funpick.co.kr/button/button_mypage_menu_1.png" border="0"></a></td>
						<td><a href="/IMPet/PetHotel/RoomReservationList"><img src="http://img.funpick.co.kr/button/button_mypage_menu_2.png" border="0"></a></td>
						<td><a href="/IMPet/PetShop/OrderList"><img src="http://img.funpick.co.kr/button/button_mypage_menu_3.png" border="0" ></a></td>
						<td><a href="/IMPet/Member/DeleteForm"><img src="http://img.funpick.co.kr/button/button_mypage_menu_4_over.png" border="0" ></a></td>
						<td><a href="/IMPet/PetShop/OrderList"><img src="http://img.funpick.co.kr/button/button_mypage_menu_5.png" border="0" ></a></td>
					</tr>
				</tbody></table>
			</td>
		</tr>
	</tbody></table>
</div>
		
	<div style="padding-bottom:20px;">
	
			<table cellpadding="0" cellspacing="0" width="100%" bgcolor="#ecf0f1">
				<tbody>
					<tr>
						<td style="padding:20px 19px;">
							<table cellpadding="0" cellspacing="0" width="100%" bgcolor="#ffffff" style="border:1px #dee1e2 solid;">
								<tbody>
									<tr>
										<td style="padding:20px;">									
																			
											<script language="JavaScript">
												addOnloadEvent(function() {_ID('confirm_password').focus()});
											</script>
											
											<style type="text/css">
												#cp_body form		{ padding:0px; margin:0px; }
												#cp_title			{ padding:20px 0px; text-align:center; }
												#cp_form_border		{ border:1px solid #DEDEDE; }
												#cp_form			{ border:4px solid #F3F3F3; color:#404040; padding:33px 0px; text-align:center; }
												.cp_formTitle		{ color:#5D5D5D; font-weight:bold; }
												.cp_formValue		{ color:#008AE0; }
												#confirm_password	{ border:1px solid #CCCCCC; width:120px; }
												#cp_text1			{ color:#FF0000; font-family:dotum; font-size:12px; padding-top:10px; }
												#cp_button			{ padding:20px 0px; text-align:center; }
											</style>
											
											<div id="cp_body">
												<form name="confirmForm" method="post" action="/shop/member/indb.confirm.php?&amp;">
												<input type="hidden" name="mode" id="mode" value="confirmPassword">
													<div id="cp_title"><img src="/shop/data/skin/standard/img/common/h_pass_rember.gif">
													</div>
													
													<div id="cp_form_border">
														<div id="cp_form">
															<table cellpadding="4" cellspacing="0" border="0" align="center">
																<tbody>
																<tr align="left">
																	<td width="70" class="cp_formTitle">비밀번호</td>
																	<td width="130"><input type="password" name="confirm_password" id="confirm_password"></td>
																</tr>
																
																<tr align="left">
																	<td colspan="4" id="cp_text1">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한 번 확인합니다.</td>
																</tr>
																</tbody>
															</table>
														</div>
													</div>
													
													<div id="cp_button">
														<table align="center" border="0" cellpadding="0" cellspacing="0">
															<tbody>
																<tr>
																	<td valign="top"><a href="javascript:;" onclick="history.go(-1);"><!-- <img src="/shop/data/skin/standard/img/common/btn_gr_cancle.gif" border="0"> -->취소</a></td>
																	<td width="5"></td>
																	<td valign="top"><input type="image" src="/shop/data/skin/standard/img/common/btn_gr_enter.gif"></td>
																</tr>
															</tbody>
														</table>
													</div>
												</form>
											</div>																		
											</td>
										</tr>
									</tbody>	
								</table>																	
							</td>
						</tr>
					</tbody>
				</table>
		
		</div>

	</td>
	</tr>
	<tbody>
	</table>
	</td>
	</tr>
	</tbody>
	</table>
	</div>
	
	<!-- 버튼 예시 -->
	<div class="button">
		<div>확인</div>
	</div>

	<!-- 버튼 예시2 -->
	<button class="button2">hover</button>
	
	<input type="file" value="button" class="ex">
	
	<!-- <input type="submit" value="등록"> -->
	<button class="replace">파일 업로드</button>
	<input type="file" value="파일 업로드" class="upload"> 
</body>
</html>