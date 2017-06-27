<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>펫샵상품리스트</title>
</head>
<body>

펫샵상품리스트

<br/><br/><br/><br/><br/>

<input value="상품상세보기" type="button" onclick="location.href='/IMPet/PetShop/ItemView'"/>

<!-- 관리자!!어녕오빠질문!!! -->
<br/><br/>
<input value="관리자상품추가폼" type="button" onclick="location.href='/IMPet/PetShop/AdminItemWriteForm'"/>
<input value="관리자상품수정폼" type="button" onclick="location.href='/IMPet/PetShop/AdminItemModifyForm'"/>
<input value="상품삭제" type="button" onclick="location.href='/IMPet/PetShop/AdminItemDelete'"/>

</body>
</html>