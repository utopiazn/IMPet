<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>커뮤니티 갤러리 리스트</title>

 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
 -->
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<link rel="stylesheet" href="/IMPet/resources/css/gallery/gallery.css">


<style>
.button3 {
  position: relative;
  padding: 14px 0;
  border: 2px #00B488 solid;
  float : left;
  color: black;
  cursor: pointer;
  font-family: 'KoPub Batang' sans-serif;
  font-size: .9em;
  text-transform: uppercase;
  transition: color 0.4s, background-color 0.4s;
  display: inline-block;
  vertical-align: middle;
  line-height: 1em;
  outline: none;
  text-align: center;
  text-decoration: none;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  width: 50%;
  background-color: white;
  height: 70px;
}
.button3:hover, .button3:focus {
  transition: color 0.4s, background-color 0.4s;
  color: white;
  text-decoration: none;
  background-color: #00B488;
}
</style> 




</head>
<body>


<br/><br/>





<div class="search-results pen-grid" style=" margin-left: 24.5%;   margin-right: 24.5%;" >


	<div align="center" style="width: 100%;">
	
		<div style="width: 100%; float: left;" >
		  <div role="group">
		    <button type="button" class="button3" onclick="ajaxRoom();">ROOM</button>
		  </div>
		  <div role="group">
		    <button type="button" class="button3" onclick="ajaxHealing();">HEALING</button>
		  </div>
		</div>
		
	<br/> <br/>
	</div>
	

	<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
	<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
	<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
	<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
	<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
	<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
	<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
	<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
	<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
	<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
					
</div>


	<div class="paging">
	
	
	<strong>1</strong>   <a class='page' href='javascript:ajaxPageView(2);' >2</a>  
			
	
	
	${pagingHtml} 
			
		
		

		
	</div>



커뮤니티 갤러리 리스트

<br/><br/><br/><br/><br/>

<input value="갤러리 리스트 중 한개의 상세보기 이동" type="button" onclick="location.href='/IMPet/Community/GalleryView'"/> 

<input value="갤러리  추가" type="button" onclick="location.href='/IMPet/Community/GalleryForm'"/> 

 -->
</body>
</html>