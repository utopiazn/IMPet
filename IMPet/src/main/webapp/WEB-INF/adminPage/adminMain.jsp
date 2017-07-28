<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">

<title>관리자페이지</title>
</head>
<!-- <body>

관리자페이지


회원관리
<br/><br/><br/><br/><br/>
<input value="회원리스트" type="button" onclick="location.href='/IMPet/Member/MemberList'"/>

호텔관리
<br/><br/><br/><br/><br/>
<input value="룸예약리스트" type="button" onclick="location.href='/IMPet/PetHotel/RoomResAllList'"/>
<input value="룸리스트" type="button" onclick="location.href='/IMPet/PetHotel/RoomList'"/>

상품관리
<br/><br/><br/><br/><br/>
<input value="관리자 상품 리스트" type="button" onclick="location.href='/IMPet/PetShop/AdminItemList'"/>
<input value="관리자 회원 주문 내역 리스트" type="button" onclick="location.href='/IMPet/PetShop/AdminOrderList'"/>

공지사항
<br/><br/><br/><br/><br/>
<input value="공지사항리스트" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeList'"/>

자주묻는질문
<br/><br/><br/><br/><br/>
<input value="자주묻는질문리스트" type="button" onclick="location.href='/IMPet/ServiceCenter/FAQList'"/> -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
<script src="/IMPet/resources/ajax/HotelAjax.js" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="/IMPet/resources/css/admin/admin.css" />

</head>
<body>
<div class="adminMian" align="left" style="width:100%;" >
	<div class="adminLeft" style="width: 19%;  float: left; ">
		<div class="nestedsidemenu">
			<ul>
				 <li style="line-height: 2em; text-align: center; vertical-align: middle;">&nbsp;관리자 페이지<br/>
				 </li>
				 
				 <li><a href="/IMPet/Member/MemberList">회원 관리</a>
				 </li>
				 
				 <li><a href="javascript:vold(0)">&nbsp;&nbsp;&nbsp;호텔 관리</a>
					  <ul>
						  <li><a href="/IMPet/PetHotel/RoomAdminList">룸 리스트</a></li>
						  <li><a href="/IMPet/PetHotel/HealingAdminList">힐링 리스트</a></li>   
						  <li><a href="/IMPet/PetHotel/RoomResAllList">룸 예약 리스트</a></li>
						  
					 </ul>
				</li>
				
				 <li><a href="javascript:vold(0)">&nbsp;&nbsp;&nbsp;상품 관리</a>
					  <ul>
						  <li><a href="/IMPet/PetShop/AdminItemList">상품 리스트</a></li>
						  <li><a href="/IMPet/PetShop/AdminItemWriteForm">상품 추가</a></li>   
						  <li><a href="/IMPet/PetShop/AdminOrderList">회원 주문 내역 리스트</a></li> 
					 </ul>
				</li>
				
				<li><a href="javascript:vold(0)">&nbsp;&nbsp;&nbsp;고객센터</a>
					  <ul>
					  	<li><a href="/IMPet/ServiceCenter/AdminNoticeList">공지사항</a></li>				
						<li><a href="/IMPet/ServiceCenter/AdminFAQList">FAQ</a></li>				
						<li><a href="/IMPet/ServiceCenter/AdminQuestionList">QnA</a></li>								  
					 </ul>
				</li>		
				
				<li><a href="javascript:vold(0)">&nbsp;&nbsp;&nbsp;커뮤니티</a>
					  <ul>
					  	<li><a href="/IMPet/Community/AdminGalleryList">GALLERY</a></li>			
						<li><a href="/IMPet/Community/AdminEventList">EVENT</a></li>	
						<li><a href="/IMPet/Community/EventForm">EVENT 추가</a></li>					  						  
					 </ul>
				</li>				
			</ul>
		</div>
	</div>

	<div class="adminCenter" align="center" style="width: 80%; margin-left: 5px;  float: left;" >
		
		<c:choose>
			<c:when test="${adminCode==1}">
				<div style="width: 90%; padding-top: 10px;">
					<jsp:include page="/WEB-INF/member/admin/memberList.jsp"/>
				</div>
			</c:when>
			
			<c:when test="${adminCode==2 || adminCode==3}">
				<div id="ContextHotel" style="width: 90%; padding-top: 10px;">
					<c:if test="${adminCode==2}">
						<jsp:include page="/WEB-INF/petHotel/room/list.jsp"/>
					</c:if>
					<c:if test="${adminCode==3}">
						<jsp:include page="/WEB-INF/petHotel/roomRes/resAllList.jsp"/>
					</c:if>
				</div>
			</c:when>
			
			<c:when test="${adminCode==4}">
				<div id="ContextHotel" style="width: 90%; ">
					<jsp:include page="/WEB-INF/petHotel/healing/list.jsp"/>
				</div>
			</c:when>
			
			<c:when test="${adminCode==5}">
				<div style="width: 90%; ">
					<jsp:include page="/WEB-INF/petShop/admin/adminItemList.jsp"/>
				</div>
			</c:when>
			
			<c:when test="${adminCode==6}">
				<div style="width: 90%;">
					<jsp:include page="/WEB-INF/petShop/admin/adminItemWrite.jsp"/>
				</div>
			</c:when>
			
			<c:when test="${adminCode==12}">
				<div style="width: 90%; height: 1400px;">
						<jsp:include page="/WEB-INF/petShop/admin/adminOrderList.jsp"/>
				</div>
			</c:when>
			
			<c:when test="${adminCode==13}">
				<div style="width: 90%; ">
						<jsp:include page="/WEB-INF/petShop/admin/adminItemModify.jsp"/>
				</div>
			</c:when>
			
			<c:when test="${adminCode==14}">
				<div style="width: 90%; ">
						<jsp:include page="/WEB-INF/community/event/eventForm.jsp"/>
				</div>
			</c:when>
			
			<c:when test="${adminCode==7}">
				<div style="width: 90%;">
					<jsp:include page="/WEB-INF/serviceCenter/notice/list.jsp"/>
				</div>
			</c:when>
			
			<c:when test="${adminCode==8}">
				<div style="width: 90%; padding-top: 10px;">
					<jsp:include page="/WEB-INF/serviceCenter/FAQ/list.jsp"/>
				</div>
			</c:when>
			
			<c:when test="${adminCode==9}">
				<div style="width: 90%; padding-top: 10px;">
					<jsp:include page="/WEB-INF/serviceCenter/QnA/list.jsp"/>
				</div>
			</c:when>
			
			<c:when test="${adminCode==10}">
				<div style="width: 90%; ">
					<jsp:include page="/WEB-INF/community/admin/galleryMemberList.jsp"/>
				</div>
			</c:when>
			
			<c:when test="${adminCode==11}">
				<div style="width: 90%; ">
					<jsp:include page="/WEB-INF/community/admin/eventMemberList.jsp"/>
				</div>
			</c:when>
			
			
			
			
			<c:otherwise>
				<div style="width: 90%; height: 400px; margin-top: 10px;">
					<img alt="admin" src="/IMPet/resources/image/admin.jpg">
				</div>
			</c:otherwise>
			
		</c:choose>
		
	</div>

<%-- <jsp:include page="/WEB-INF/petHotel/room/list.jsp"></jsp:include> --%>



</div>

</body>
</html>