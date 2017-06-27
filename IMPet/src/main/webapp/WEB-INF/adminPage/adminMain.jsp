<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
</head>
<body>

관리자페이지


<!-- 상품관리 -->
<br/><br/><br/><br/><br/>

<input value="상품리스트" type="button" onclick="location.href='/IMPet/PetShop/ItemList'"/>

<br/><br/>

<input value="관리자상품추가폼" type="button" onclick="location.href='/IMPet/PetShop/AdminItemWriteForm'"/>

<br/><br/>

<input value="관리자상품수정폼" type="button" onclick="location.href='/IMPet/PetShop/AdminItemModifyForm'"/>

<br/><br/>

<input value="상품삭제" type="button" onclick="location.href='/IMPet/PetShop/AdminItemDelete'"/>

<br/><br/>

<input value="관리자 회원 주문 내역 리스트" type="button" onclick="location.href='/IMPet/PetShop/AdminOrderList'"/>


</body>
</html>