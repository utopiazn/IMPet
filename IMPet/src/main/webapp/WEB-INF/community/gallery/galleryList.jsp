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
<!-- <link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
 -->
<!-- 

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
</style> -->





</head>
<body>


<br/><br/>

<!-- <div class="container">
<div class="outer">
<div class="inner">
 -->


<div class="search-results pen-grid" >
	<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
	<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
	<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
	<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
	<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
	<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>	
</div>

<!-- </div>
</div>
</div>

 -->

<!-- <div align="center" style="width: 100%;">


	<div style="width: 100%; float: left;" >
	  <div role="group">
	    <button type="button" class="button3" onclick="ajaxRoom();">갤러리</button>
	  </div>
	  <div role="group">
	    <button type="button" class="button3" onclick="ajaxHealing();">이벤트</button>
	  </div>
	</div>	
	
</div>
 -->
<!-- 
<div class="search-results pen-grid">

	<div class="single-pen" data-slug-hash="aOBgpj">
	
		<div class="iframe-wrap loaded">
		
			<a href="/IMPet/Community/GalleryView" class="cover-link">
						<img alt="s2" src="/IMPet/resources/image/dog1.jpg" >	
			</a>
			
	
	    	<iframe id="iframe_embed_3915307" name="pen-aOBgpj" title="slider"  data-slug-hash="aOBgpj" data-username="/tailofmoon" data-title="slider" allowtransparency="true" frameborder="0" scrolling="no" sandbox="allow-scripts allow-pointer-lock allow-same-origin">
	      	</iframe> 
	
	
			<div class="meta-overlay">	
		  		<div class="pen-actions">
			  	</div>			
			</div>			
			
		</div>
			
		<div class="meta">
			
			<h3 class="item-title">
				제목: 강아지 사진 테스트트			
				
			</h3>
			
			<div class="user-and-stats">
			
				<div class="user">
			
			  	<a class="username" href="/tailofmoon">
			    		작성자 :<span>조장</span>
			 	 </a>
			</div>
			
			<div class="stats">
			
				<a class="single-stat views">
				
					41				
					<img  src="/IMPet/resources/image/gallery/view.png" width="17px" height="12px" >
				
			  	</a>
			
			    <a class="single-stat comments">
			    	0
			    	<img  src="/IMPet/resources/image/gallery/comment.png" width="17px" height="12px" >
			    </a>
			
			
			</div>
			
		  </div>
		
		</div>
	
	</div>
	
	
	
</div>
 -->






<!-- 




커뮤니티 갤러리 리스트

<br/><br/><br/><br/><br/>

<input value="갤러리 리스트 중 한개의 상세보기 이동" type="button" onclick="location.href='/IMPet/Community/GalleryView'"/> 

<input value="갤러리  추가" type="button" onclick="location.href='/IMPet/Community/GalleryForm'"/> 

 -->
</body>
</html>