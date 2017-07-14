<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>회원 리스트 </title>
<!-- <link href="/IMPet/resources/css/admin/memberList.css" rel="stylesheet" style="text/css">
 -->
 
 <link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">

</head>
<body>

<br/><br/>

<div class="row" >    
	<h1 class="page-header">회원 관리 목록</h1>
</div>

<div class="row">
	<div class="col-sm-12">
	
		<table class="table  table-bordered table-hover dataTable no-footer"
				id="dataTables-example" role="grid"
				aria-describedby="dataTables-example_info">
			
			<thead>
				<tr role="row" style="vertical-align:middle;">
					<th style="width: 5%; text-align:center;vertical-align:middle;">번호</th>
					<th style="width: 8%; text-align:center;vertical-align:middle;">ID</th>										
					<th style="width: 7%; text-align:center;vertical-align:middle;">이름</th>
					<th style="width: 7%; text-align:center;vertical-align:middle;">별칭</th>
					<th style="width: 20%; text-align:center;vertical-align:middle;">전화번호 </th>
					<th style="width: 8%; text-align:center;vertical-align:middle;">메일</th>
					<th style="width: 8%; text-align:center;vertical-align:middle;">가입일</th>
					
				</tr>
			</thead>	
			
			<tbody>
				
				<c:forEach var="itemList" items="${listAll}"  varStatus="stat">
				
					<c:url var="viewURL" value="/PetShop/AdminItemModifyForm" >
						<c:param name="MEMBER_ID" value="${itemList.MEMBER_ID }" />
					</c:url>
					
				<%-- 	<c:url var="viewURL2" value="/PetShop/AdminItemDelete" >
						<c:param name="ITEM_NO" value="${itemList.ITEM_NO }" />							
					</c:url>	 --%>
					
				<%-- 	
					<tr class="gradeA even" role="row">
					
						<td style="text-align:center;vertical-align:middle;">
							${itemList.ITEM_NAME}
							<div style='display:none;'>${itemList.ITEM_NO}</div>
						</td>
					
							
					</tr> --%>
				
				<a href="${viewURL}"><input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cog_font_awesome.svg/32px-Cog_font_awesome.svg.png"></a>&nbsp;&nbsp;
								
				</c:forEach>
			</tbody>				
								
		</table>						
	
	
	
	</div>


</div>



<div align="center">
	<table border="1">
		<c:forEach var="Member" items="${listAll}">
		
		<tr>
			<td>								
				<a href="/IMPet/Member/ModifiedForm?NO=${Member.NO}">${Member.MEMBER_ID}</a>				
			</td>
			<td>								
				${Member.MEMBER_NAME}				
			</td>
			
			
		</tr>
		</c:forEach>
	</table>
</div>


<!-- 
"MEMBER_ID" VARCHAR2(15 BYTE) NOT NULL ENABLE, 
	"MEMBER_PW" VARCHAR2(12 BYTE) NOT NULL ENABLE, 
	"MEMBER_NAME" VARCHAR2(10 BYTE) NOT NULL ENABLE, 
	"MEMBER_NICKNAME" VARCHAR2(10 BYTE) NOT NULL ENABLE, 
	"MEMBER_ZIPCODE" VARCHAR2(7 BYTE) NOT NULL ENABLE, 
	"MEMBER_ADDRESS" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"MEMBER_ADDRESS2" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"MEMBER_NEWZIPCODE" VARCHAR2(7 BYTE) NOT NULL ENABLE, 
	"MEMBER_NEWADDRESS" VARCHAR2(100 BYTE), 
	"MEMBER_NEWADDRESS2" VARCHAR2(100 BYTE), 
	"MEMBER_EMAIL" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"MEMBER_TEL" VARCHAR2(13 BYTE) NOT NULL ENABLE, 
	"MEMBER_ANIMAL_TYPE" NUMBER NOT NULL ENABLE, 
	"MEMBER_REQUESTS" VARCHAR2(1000 BYTE), 
	"MEMBER_USERYN" VARCHAR2(1 BYTE) NOT NULL ENABLE, 
	"MEMBER_ADMIN" NUMBER NOT NULL ENABLE, 
	"MEMBER_JOIN_DATE" DATE NOT NULL ENABLE, 
	"MEMBER_DEL_DATE" DATE, 

 -->
<br/><br/><br/>


회원 리스트  선택 햇다 치고

<br/><br/>
<input value="회원 한면을 선택 행을 경우 회원 수정 폼으로 이동" type="button" onclick="location.href='/IMPet/Member/ModifiedForm'"/>


</body>
</html>