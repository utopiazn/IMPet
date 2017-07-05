<%@ page contentType="text/html; charset=UTF-8" %>

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



<link rel="stylesheet" type="text/css" href="/IMPet/resources/css/admin/admin.css" />

</head>
<body>

<div class="nestedsidemenu">
<ul>
	 <li><a href="/IMPet/Member/MemberList">회원 관리</a>
	 </li>
	 
	 <li><a href="javascript:vold(0)">호텔 관리</a>
		  <ul>
			  <li><a href="/IMPet/PetHotel/RoomResAllList">룸 예약 리스트</a></li>
			  <li><a href="/IMPet/PetHotel/RoomList">룸 리스트</a></li>   
		 </ul>
	</li>
	
	 <li><a href="javascript:vold(0)">상품 관리</a>
		  <ul>
			  <li><a href="/IMPet/PetShop/AdminItemList">상품 리스트</a></li>
			  <li><a href="/IMPet/PetShop/AdminOrderList">회원 주문 내역 리스트</a></li>   
		 </ul>
	</li>

	<li><a href="/IMPet/ServiceCenter/NoticeList">공지사항</a>
	</li>
	
	<li><a href="/IMPet/ServiceCenter/FAQList">FAQ</a>
	</li>

</ul>
</div>


</body>
</html>