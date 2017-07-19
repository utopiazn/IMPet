<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

.button{
		background-color: white;
		text-decoration:none;
		font-family: 'Noto sans KR', sans-serif;
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


<!-- 		<input class="button" value="마이페이지" type="button" onclick="location.href='/IMPet/MyPage'"/>
		<input class="button" value="장바구니" type="button" onclick="location.href='/IMPet/PetShop/BasketList?MEMBER_ID=aa'"/>
		<input class="button" value="로그아웃" type="button" onclick="location.href='/IMPet/Member/Logout'"/>
		<input class="button" value="로그인" type="button" onclick="location.href='/IMPet/Member/LoginForm'"/>
		<input class="button" value="회원가입" type="button" onclick="location.href='/IMPet/Member/JoinAgreement'"/>
		<input class="button" value="고객센터" type="button" onclick="location.href='/IMPet/ServiceCenter/Main'"/>
		<input class="button" value="관리자페이지" type="button" onclick="location.href='/IMPet/AdminPage'"/>

 -->

	<c:choose>
	
		<c:when test="${ sessionScope.member_ID  == null }">
		<!--로그인이 아닐 경우 -->	
			
			<input class="button" value="로그인" type="button" onclick="location.href='/IMPet/Member/LoginForm'"/>
			<input class="button" value="회원가입" type="button" onclick="location.href='/IMPet/Member/JoinMain'"/>	
		
		</c:when>	
		
		<c:when test="${ sessionScope.member_ID  != null}">	
		<!-- 로그인일 경우 -->
		
			<input class="button" value="마이페이지" type="button" onclick="location.href='/IMPet/MyPage'"/>
			<input class="button" value="장바구니" type="button" onclick="location.href='/IMPet/PetShop/BasketList?MEMBER_ID=${sessionScope.member_ID}'"/>
			<input class="button" value="로그아웃" type="button" onclick="location.href='/IMPet/Member/Logout'"/>
				
			<c:if test="${ sessionScope.member_Admin eq '1' }">
			<!--관리자 권한일 경우 -->		
		
				<input class="button" value="관리자페이지" type="button" onclick="location.href='/IMPet/AdminPage'"/>
		
			</c:if>
			
		</c:when>
	
	</c:choose>
	
	<input class="button" value="고객센터" type="button" onclick="location.href='/IMPet/ServiceCenter/Main'"/>


</div>