<%@ page contentType="text/html; charset=UTF-8"%>


										
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
																	<td width="130"><input type="password" name="confirm_password" id="confirm_password">																		
																	</td>
																</tr>
																
																<tr align="left">
																	<td colspan="4" id="cp_text1">${msg}</td>
																</tr>
																</tbody>
															</table>
														</div>
													</div>
													
													<div id="cp_button">
														<table align="center" border="0" cellpadding="0" cellspacing="0">
															<tbody>
																<tr class="ok">
																	<td valign="top"><a href="javascript:;" onclick="javascript:ajaxmembermodify(2); ">확인</a></td>
																	<td width="5"></td>
 																	<td valign="top"><a href="javascript:;" onclick="history.go(-1);">취소</a></td>
																</tr>
															</tbody>
														</table>
													</div>
												</form>
											</div>													 