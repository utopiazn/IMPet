<%@ page contentType="text/html; charset=UTF-8"%>


<!DOCTYPE html>


<html lang="ko">
<head>

<style>
.ok a{
text-decoration: none;
color: black;
}

.ok a:HOVER {
	color: hotpink;
}
</style>


<meta charset="UTF-8">
<title>회원 탈퇴 폼</title>
</head>
<body>

<!-- 휘원 탈퇴 폼

<br/><br/><br/><br/><br/>

<input value="탈퇴하기" type="button" onclick="location.href='/IMPet/Member/Delete'"/>

<br/><br/>
<input value="마이페이지로 이동" type="button" onclick="location.href='/IMPet/MyPage/Main'"/>
 -->
<div style="padding-bottom:20px;">
	
			<table cellpadding="0" cellspacing="0" width="100%" bgcolor="#ecf0f1">
				<tbody>
					<tr>
						<td style="padding:20px 19px;">
							<table cellpadding="0" cellspacing="0" width="100%" bgcolor="#ffffff">
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
													<div id="cp_title"><img src="/IMPet/resources/image/delete.png">
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
																	<td colspan="4" id="cp_text1">회원 탈퇴 전 비밀번호를 다시 한 번 확인합니다.</td>
																</tr>
																</tbody>
															</table>
														</div>
													</div>
													
													<div id="cp_button">
														<table align="center" border="0" cellpadding="0" cellspacing="0">
															<tbody>
																<tr class="ok">
																	<td valign="top"><a href="javascript:;" onclick="history.go(-1);">확인</a></td>
																	<td width="5"></td>
 																	<td valign="top"><a href="javascript:;" onclick="history.go(-1);">취소</a></td>
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
</body>
</html>