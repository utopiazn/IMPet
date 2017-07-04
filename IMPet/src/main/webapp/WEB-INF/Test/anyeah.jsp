<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>


<html lang="ko">
<head>

	<meta charset="UTF-8">
<title>안예아 전용 페이지 </title>
<!-- 
<link href="//fonts.googleapis.com/css?family=Comfortaa&subset=latin" rel="stylesheet" type="text/css"> -->
<link rel="stylesheet" type="text/css" href="/IMPet/resources/css/admin/admin.css" />
<link href="http://fonts.googleapis.com/css?family=Bitter&subset=latin" rel="stylesheet" type="text/css">


<%-- <script src="<c:url value='/IMPet/resources/js/admin.js'/>" charset="utf-8"></script> --%>
<!-- <script src="/IMPet/resources/js/admin.js" charset="utf-8"></script>
 -->
<style>* { font-family: 'Comfortaa', sans-serif; }</style>



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
			  <li><a href="/IMPet/PetShop/AdminOpenItemList">상품 리스트</a></li>
			  <li><a href="/IMPet/PetShop/AdminOrderList">회원 주문 내역 리스트</a></li>   
		 </ul>
	</li>

	<li><a href="/IMPet/ServiceCenter/NoticeList">공지사항</a>
	</li>
	
	<li><a href="/IMPet/ServiceCenter/FAQList">FAQ</a>
	</li>
	
<!--<li><a href="javascript:vold(0)">Folder 2</a>
  <ul>
	  <li><a href="#">Sub Item 2.1</a></li>
	  <li><a href="#">Sub Item 2.2</a></li>
	  <li><a href="javascript:vold(0)">Folder 2.3</a>
	    <ul>
		    <li><a href="#">Sub Item 2.3.1</a></li>
		    <li><a href="#">Sub Item 2.3.2</a></li>
		    <li><a href="#">Sub Item 2.3.3</a></li>
		    <li><a href="#">Sub Item 2.3.4</a></li>
			</ul>
		</li>
	  <li><a href="#">Sub Item 2.4</a></li>
	  <li><a href="#">Sub Item 2.5</a></li>
	  <li><a href="#">Sub Item 2.6</a></li>
	  <li><a href="#">Sub Item 2.7</a></li>
  </ul>
</li>
<li><a href="#">Item 3</a></li>
<li><a href="javascript:vold(0)">Folder 3</a>
  <ul>
	  <li><a href="#">Sub Item 3.1</a></li>
	  <li><a href="javascript:vold(0)">Folder 3.2</a>
	    <ul>
		    <li><a href="#">Sub Item 3.2.1</a></li>
		    <li><a href="#">Sub Item 3.2.2</a></li>
		    <li><a href="javascript:vold(0)">Folder 3.2.3</a>
					<ul>
			    		<li><a href="#">Sub Item 3.2.3.1</a></li>
			    		<li><a href="#">Sub Item 3.2.3.2</a></li>
			    		<li><a href="#">Sub Item 3.2.3.3</a></li>
			    		<li><a href="#">Sub Item 3.2.3.4</a></li>
			    		<li><a href="#">Sub Item 3.2.3.5</a></li>
					</ul>
		    </li>
		    <li><a href="#">Sub Item 3.2.4</a></li>
	    </ul>
	  </li>
  </ul>
</li>
 -->
</ul>
<br style="clear: left" />
</div>


</body>
</html>