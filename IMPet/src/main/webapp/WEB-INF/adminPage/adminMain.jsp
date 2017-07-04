<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">


<link rel="stylesheet" type="text/css" href="/IMPet/resources/css/admin/admin.css" />

</head>
<body><title>관리자페이지</title>

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
			  <li><a href="/IMPet/PetShop/AdminOpenItemList">상품 리스트</a></li>
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