<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
</head>
<body>

관리자페이지


<!-- 회원관리 -->
<br/><br/><br/><br/><br/>
<input value="회원리스트" type="button" onclick="location.href='/IMPet/Member/MemberList'"/>

<!-- 호텔관리 -->
<br/><br/><br/><br/><br/>
<input value="룸예약리스트" type="button" onclick="location.href='/IMPet/PetHotel/RoomResAllList'"/>
<input value="룸리스트" type="button" onclick="location.href='/IMPet/PetHotel/RoomList'"/>

<!-- 상품관리 -->
<br/><br/><br/><br/><br/>
<input value="상품리스트" type="button" onclick="location.href='/IMPet/PetShop/ItemList'"/>
<input value="관리자 회원 주문 내역 리스트" type="button" onclick="location.href='/IMPet/PetShop/AdminOrderList'"/>

<!-- 공지사항 -->
<br/><br/><br/><br/><br/>
<input value="공지사항리스트" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeList'"/>

<!-- 자주묻는질문 -->
<br/><br/><br/><br/><br/>
<input value="자주묻는질문리스트" type="button" onclick="location.href='/IMPet/ServiceCenter/FAQList'"/>





</body>
</html>