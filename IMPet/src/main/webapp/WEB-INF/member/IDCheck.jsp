<%@ page contentType="text/html; charset=UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<?xml version="1.0" encoding="UTF-8" ?>
<html lang="ko"  xmlns="http://www.w3.org/1999/xhtml" >
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<script type="text/javascript">
	  
		function windowclose(memberID){		 
			//부모클래스
			opener.setChildValue(memberID);			
			//자식 클래스
			window.close();		
		}
	
	</script>


</head>
<!-- <body bgcolor="#A9E76E"> -->
<body>

<c:choose>
		<c:when test="${ distinctID  == 1 }">
		 <!-- 중복일 경우 -->
		 
			<table width=360 border=0 cellspacing=0 cellpadding=5>
				<tr align="center">
					<td height=30>
						<font size=2> ${MEMBER_ID} 는 이미 사용중인 아이디입니다.</font>
					</td>
				</tr>
			</table>
			 
		 	<form action="/IMPet/Member/IDCheck">
				<table width=360 border=0 cellspacing=0 cellpadding=5>
					<tr>
						<td align="center">
							<font size=2>다른 아이디를 선택하세요.</font><p>
							<input type=text size=10 maxlength=12 name="MEMBER_ID"/>
							<input type=submit value=중복확인 />
						</td>
					</tr>
				</table>
			</form> 
		
		</c:when>
		<c:when test="${ distinctID  == 0 }">
		
		 <!-- 중복일 경우 -->
		 
		 	<table width=360 border=0 cellspacing=0 cellpadding=5>
				<tr>
					<td align="center">
						<font size=2>입력하신 ${MEMBER_ID} 는 사용할 수 있는 아이디입니다.</font><br/><br/>					
						<input type="button"  value="닫기" onclick="windowclose('${MEMBER_ID}')">
						
	 				</td>
				</tr>
			</table> 
				
			
			
		</c:when>



</c:choose>
	
<%-- 	<!-- ID 사용중일때 -->	
	<s:if test="%{check != 1}">
	
		<table width=360 border=0 cellspacing=0 cellpadding=5>
			<tr align="center">
				<td height=30>
					<font size=2> ${memberID} 는 이미 사용중인 아이디입니다.</font>
				</td>
			</tr>
		</table>
		
		<form action="idCheck.action">
			<table width=360 border=0 cellspacing=0 cellpadding=5>
				<tr>
					<td align="center">
						<font size=2>다른 아이디를 선택하세요.</font><p>
						<input type=text size=10 maxlength=12 name="memberID"/>
						<input type=submit value=중복확인 />
					</td>
				</tr>
			</table>
		</form> 
		
	</s:if>	
	
	<!-- ID 사용가능할경우-->	
	<s:else>
	
		<table width=360 border=0 cellspacing=0 cellpadding=5>
			<tr>
				<td align="center">
					<font size=2>입력하신 ${memberID} 는 사용할 수 있는 아이디입니다.</font><br/><br/>					
					<input type="button"  value="닫기" onclick="windowclose('${memberID}')">
					
 				</td>
			</tr>
		</table> 
	
	
	
	
	</s:else>	
	
	 --%>

		
</body>
</html>