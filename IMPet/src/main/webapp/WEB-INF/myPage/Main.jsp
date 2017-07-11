<%@ page contentType="text/html; charset=UTF-8"%>
<link rel="stylesheet" type="text/css" href="/IMPet/resources/css/admin/mypage.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>

<script type="text/javascript">

function ajaxRoomResList(){
    $.ajax({
      type : "POST",
      url : "/IMPet/PetHotel/RoomResList",
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {
        $('#ContextMyPage').html(data);
      }

    });
}

</script>






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
						<td><a href="javascript:ajaxRoomResList();"><img src="http://img.funpick.co.kr/button/button_mypage_menu_2.png" border="0"></a></td>
						<td><a href="/IMPet/PetShop/OrderList"><img src="http://img.funpick.co.kr/button/button_mypage_menu_3.png" border="0" ></a></td>
						<td><a href="/IMPet/Member/DeleteForm"><img src="http://img.funpick.co.kr/button/button_mypage_menu_4.png" border="0" ></a></td>
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
										<td id="ContextMyPage" style="padding:20px;">									
																			
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
													<div id="cp_title"><img src="/IMPet/resources/image/c.png">
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
																	<td valign="top"><a href="javascript:;" onclick="history.go(-1);">확인</a></td>
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


<!-- <div align="right">
<input value="회원수정" type="button" onclick="location.href='/IMPet/Member/ModifiedForm'"/>
<input value="룸예약" type="button" onclick="location.href='/'"/>
<input value="주문내역" type="button" onclick="location.href='/IMPet/PetShop/OrderList'"/>
<input value="회원탈퇴" type="button" onclick="location.href='/IMPet/Member/DeleteForm'"/>
<input value="주문상품리스트" type="button" onclick="location.href='/IMPet/PetShop/OrderList'"/>

</div> -->