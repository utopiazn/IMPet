


<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>tab example</title>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>


<link rel="stylesheet" href="/IMPet/resources/css/gallery/gallery.css">

<style>
.main{
    position: absolute;
    top: 50%;
    left: 50%;
    margin-top: -51px;
    margin-left: -153px;
    background-color: yellow;
    border: 1px solid red;
    width: 306px;
    height: 102px;
}
   
.main_common{
    display:inline-table;
    float: left;
    width: 100px;
    height: 100px;
    border: 1px solid blue;
}
 
.content {
    display: table-cell;
    vertical-align: middle;
    text-align: center;
}
 
.single-pen .main_1, .main_3 { font-size: 30px; }
.main_2 { font-size: 40px; }
</style>
	
</head>
<body>
 
 <div class=" search-results pen-grid">
 
  <div class="main">
		<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
		<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
		<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
		<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
		<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
		<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
	</div>
 

</div>


<%-- 	<div class="search-results pen-grid">
		<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
		<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
		<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
		<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
		<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
		<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
	</div> --%>




</body>
</html>