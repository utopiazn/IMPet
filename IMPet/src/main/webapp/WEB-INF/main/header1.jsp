<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
.button{
		background-color: white;
		text-decoration:none;
		font-family: 'Jeju Gothic', sans-serif;
		line-height:0px;
		text-align:center;
		vertical-align:middle;
		display:inline-block;
		font-size:15px;
	/* 	width:56px; */
		height:0px;
		padding:8px;
		border-color:#e3bf54;
		border-width:0px;
		border-style:solid;

}

</style>


<div align="right">
		<input class="button" value="마이페이지" type="button" onclick="location.href='/IMPet/MyPage'"/>
		<input class="button" value="장바구니" type="button" onclick="location.href='/IMPet/PetShop/BasketList?MEMBER_ID=aa'"/>
		<input class="button" value="로그아웃" type="button" onclick="location.href='/IMPet/Member/Logout'"/>
		<input class="button" value="로그인" type="button" onclick="location.href='/IMPet/Member/LoginForm'"/>
		<input class="button" value="회원가입" type="button" onclick="location.href='/IMPet/Member/JoinAgreement'"/>
		<input class="button" value="고객센터" type="button" onclick="location.href='/IMPet/ServiceCenter/Main'"/>
		<input class="button" value="관리자페이지" type="button" onclick="location.href='/IMPet/AdminPage'"/>

<%-- <c:choose>

	<c:when test="${ sessionScope.memberID  == null}">
		<input class="button" value="마이페이지" type="button" onclick="location.href='/IMPet/MyPage'"/>
		<input class="button" value="장바구니" type="button" onclick="location.href='/IMPet/PetShop/BasketList?MEMBER_ID=aa'"/>
		<input class="button" value="로그아웃" type="button" onclick="location.href='/IMPet/Member/Logout'"/>
	</c:when>

	<c:otherwise>
		<input class="button" value="로그인" type="button" onclick="location.href='/IMPet/Member/LoginForm'"/>
		<input class="button" value="회원가입" type="button" onclick="location.href='/IMPet/Member/JoinAgreement'"/>
		<input class="button" value="고객센터" type="button" onclick="location.href='/IMPet/ServiceCenter/Main'"/>
	</c:otherwise>
</c:choose>


<c:if test="${ sessionScope.MEMBER_ADMIN eq '1' }">
	<input class="button" value="로그아웃" type="button" onclick="location.href='/IMPet/Member/Logout'"/>
	<input class="button" value="관리자페이지" type="button" onclick="location.href='/IMPet/AdminPage'"/>
</c:if> --%>

</div>