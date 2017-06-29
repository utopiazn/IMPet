<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>관리자상품리스트</title>
</head>
<body>

관리자상품리스트
<c:forEach items="${list }" var="list">
	${ list.ITEM_NO}
</c:forEach>
<br/><br/>
<input value="관리자 상품 추가폼" type="button" onclick="location.href='/IMPet/PetShop/AdminItemWriteForm'"/>
<input value="관리자 상품 수정폼" type="button" onclick="location.href='/IMPet/PetShop/AdminItemModifyForm'"/>
<input value="관리자 상품 삭제" type="button" onclick="location.href='/IMPet/PetShop/AdminItemDelete'"/>

</body>
</html>