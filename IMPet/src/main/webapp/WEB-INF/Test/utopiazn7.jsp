<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>tab example</title>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>


	<style>

.search-results {
    padding-bottom: 75px;
}
.pen-grid, .projects-grid {
    display: -webkit-flex !important;
    display: -ms-flexbox !important;
    display: flex !important;
    -webkit-flex-wrap: wrap;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
}

.single-project, .single-pen {
    /* width: 32%; *//* 
    border: 5px solid #2F2F31; */
    border: 2px solid #00B488;    
    border-radius: 2px;
    overflow: hidden;
    margin: 0 2% 25px 0;
    position: relative;
    box-shadow: 2px 2px 3px rgba(0,0,0,0.28);
}


.iframe-wrap, .thumbnail-wrap {
    position: relative;
    height: 0;
    padding-top: 56.25%;
    overflow: hidden;
}


.cover-link {
    position: absolute;
    top: 0;
    right: 0;
    left: 0;
    bottom: 0;
    border: 0 !important;
    z-index: 1;
}

.iframe-wrap.loaded iframe, .featured-pen .iframe-wrap iframe, .thumbnail-wrap.loaded iframe, .featured-pen .thumbnail-wrap iframe {
    visibility: visible;
    opacity: 1;
}




.iframe-wrap iframe, .thumbnail-wrap iframe {
    width: 201%;
    height: 201%;
    border: 0;
    position: absolute;
    top: 0;
    left: 0;
    background: white;
    -webkit-transform: scale(0.5);
    transform: scale(0.5);
    -webkit-transform-origin: top left;
    transform-origin: top left;
    transition: opacity 0.4s ease;
    opacity: 0;
    visibility: hidden;
}


.iframe-wrap>.meta-overlay, .thumbnail-wrap>.meta-overlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    padding: 12px 15px 0 15px;
    opacity: 0;
    transition: opacity 0.15s ease;
    background: rgba(68,68,68,0.95);
}

.iframe-wrap>.meta-overlay .pen-actions, .iframe-wrap>.meta-overlay .project-actions, .thumbnail-wrap>.meta-overlay .pen-actions, .thumbnail-wrap>.meta-overlay .project-actions {
    position: absolute;
    z-index: 2;
    bottom: 0;
    padding-bottom: 10px;
    left: 0;
    width: 101%;
    text-align: center;
    border-bottom: 3px solid #0ebeff;
}


.meta {
    background:#ebeff9; /* #2F2F31; */
    position: relative;
    font-size: 0.85em;
    white-space: nowrap;
    padding: 8px 10px 4px;
    box-shadow: 0 0 2px rgba(0,0,0,0.25);
    z-index: 3;
}


.meta .item-title {
    color: #999999;
    font-size: 1rem;
    margin: 4px 0 12px 0;
    text-overflow: ellipsis;
    overflow: hidden;
}

h3, .h3, dt {
    font-size: 1.4rem;
    font-weight: bold;
}

h2, h3, h4, h5, h6 {
    font-family: "Lato", "Lucida Grande", "Lucida Sans Unicode", Tahoma, Sans-Serif;
}

h1, h2, h3, h4, h5, h6 {
    line-height: 1.2;
    margin: 0 0 10px 0;
    font-weight: normal;
}

.meta .user-and-stats {
    white-space: nowrap;
}

.meta .user {
    padding: 0 5px 0 0;
}

.meta .user .username {
    display: block;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.meta a {
    color: #999;
    transition: 0.2s;
}

media (max-width: 830px)
page-MQ-37928fe….css:1
.stats .single-stat, .stats .single-stat.comments {
    padding-top: 2px;
}

.stats .single-stat, .stats .single-stat.comments {
    display: inline-block;
    height: 100%;
    text-align: center;
    padding: 0 7px 0 9px;
    margin-left: -6px;
}

a {
    text-decoration: none;
    color: #76daff;
}


.stats .single-stat:not(.loves) svg, .stats .single-stat.comments:not(.loves) svg {
    fill: #999999;
}

.stats svg.icon-eye {
    top: -2px;
    width: 17px;
}


.stats svg {
    width: 12px;
    height: 12px;
    display: inline-block;
    position: relative;
    top: -1px;
    vertical-align: middle;
    margin-left: 2px;
}

.stats {
    position: absolute;
    right: 0;
    bottom: 4px;
}


	</style>


	
</head>
<body>


<div class="search-results pen-grid">

	<div class="single-pen" data-slug-hash="aOBgpj">
	
		<div class="iframe-wrap loaded">
		
			<a href="https://codepen.io/tailofmoon/pen/aOBgpj" class="cover-link">
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
	
		<div class="single-pen" data-slug-hash="aOBgpj">
	
		<div class="iframe-wrap loaded">
		
			<a href="https://codepen.io/tailofmoon/pen/aOBgpj" class="cover-link">
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
	
	</div>	<div class="single-pen" data-slug-hash="aOBgpj">
	
		<div class="iframe-wrap loaded">
		
			<a href="https://codepen.io/tailofmoon/pen/aOBgpj" class="cover-link">
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
	
	</div>	<div class="single-pen" data-slug-hash="aOBgpj">
	
		<div class="iframe-wrap loaded">
		
			<a href="https://codepen.io/tailofmoon/pen/aOBgpj" class="cover-link">
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
	
	</div>	<div class="single-pen" data-slug-hash="aOBgpj">
	
		<div class="iframe-wrap loaded">
		
			<a href="https://codepen.io/tailofmoon/pen/aOBgpj" class="cover-link">
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
	
	</div>	<div class="single-pen" data-slug-hash="aOBgpj">
	
		<div class="iframe-wrap loaded">
		
			<a href="https://codepen.io/tailofmoon/pen/aOBgpj" class="cover-link">
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
	
	</div>	<div class="single-pen" data-slug-hash="aOBgpj">
	
		<div class="iframe-wrap loaded">
		
			<a href="https://codepen.io/tailofmoon/pen/aOBgpj" class="cover-link">
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
	
	</div>	<div class="single-pen" data-slug-hash="aOBgpj">
	
		<div class="iframe-wrap loaded">
		
			<a href="https://codepen.io/tailofmoon/pen/aOBgpj" class="cover-link">
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
	
	</div>	<div class="single-pen" data-slug-hash="aOBgpj">
	
		<div class="iframe-wrap loaded">
		
			<a href="https://codepen.io/tailofmoon/pen/aOBgpj" class="cover-link">
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
	
	</div>	<div class="single-pen" data-slug-hash="aOBgpj">
	
		<div class="iframe-wrap loaded">
		
			<a href="https://codepen.io/tailofmoon/pen/aOBgpj" class="cover-link">
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

</body>
</html>