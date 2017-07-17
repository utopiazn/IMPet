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
<div align="left" style="width:100%;" >
	<div style="width: 19%;   float: left; ">
		<div class="nestedsidemenu">
			<ul>
				 <li><a href="/IMPet/Member/MemberList">회원 관리</a>
				 </li>
				 
				 <li><a href="javascript:vold(0)">&nbsp;&nbsp;호텔 관리</a>
					  <ul>
						  <li><a href="/IMPet/PetHotel/RoomAdminList">룸 리스트</a></li>   
						  <li><a href="/IMPet/PetHotel/RoomResAllList">룸 예약 리스트</a></li>
						  
					 </ul>
				</li>
				
				 <li><a href="javascript:vold(0)">&nbsp;&nbsp;상품 관리</a>
					  <ul>
						  <li><a href="/IMPet/PetShop/AdminItemList">상품 리스트</a></li>
						  <li><a href="/IMPet/PetShop/AdminItemWriteForm">상품 추가</a></li>   
						  <li><a href="/IMPet/PetShop/AdminOrderList">회원 주문 내역 리스트</a></li> 
					 </ul>
				</li>
			
				<li><a href="/IMPet/ServiceCenter/NoticeList">공지사항</a>
				</li>
				
				<li><a href="/IMPet/ServiceCenter/FAQList">FAQ</a>
				</li>
			
			</ul>
		</div>
	</div>

	<div align="center" style="width:80%; margin-left: 5px;  float: left;" >
	
		<c:if test="${listAll[0].MEMBER_ID!=null}">
		<div style="width:90%; padding-top: 50px;">
		<jsp:include page="/WEB-INF/member/admin/memberList.jsp"/>
		</div>
		</c:if>
		<c:if test="${list[0].ROOM_NAME!=null}">
		<div id="ContextHotel" style="width:70%; padding-top: 50px;">
		<jsp:include page="/WEB-INF/petHotel/room/list.jsp"/>
		</div>
		</c:if>
		<c:if test="${list[0].RES_NO!=null}">
		<div style="width:90%; padding-top: 50px;">
		<jsp:include page="/WEB-INF/petHotel/roomRes/resAllList.jsp"/>
		</div>
		</c:if>
		<c:if test="${itemList[0].ITEM_REMAINCOUNT!=null}">
		<div style="width:90%; padding-top: 50px;">
		<jsp:include page="/WEB-INF/petShop/admin/adminItemList.jsp"/>
		</div>
		</c:if>
		<c:if test="${form!=null}">
		<div style="width:90%; padding-top: 50px;">
		<jsp:include page="/WEB-INF/petShop/admin/adminItemWrite.jsp"/>
		</div>
		</c:if>
		
	</div>

<%-- <jsp:include page="/WEB-INF/petHotel/room/list.jsp"></jsp:include> --%>



</div>

</body>
</html>