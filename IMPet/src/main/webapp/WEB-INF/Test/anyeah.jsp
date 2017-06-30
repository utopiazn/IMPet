<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>

	<meta charset="UTF-8">
<title>안예아 전용 페이지 </title>

<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

/* 버튼 */
	.effect {
	  text-align: center;
	  display: inline-block;
	  position: relative;
	  text-decoration: none;
	  color: #fff;
	  text-transform: capitalize;
	  background-color:#FFDC4C;
	  font-family: 'hanna', sans-serif;
	  font-size: 18px;
	  padding: 20px 0px;
	  width: 150px;
	  border-radius: 6px;
	  overflow: hidden;
	}
	.effect.effect-5 {
	  -webkit-transition: all 0.2s linear 0s;
	  transition: all 0.2s linear 0s;
	}
	.effect.effect-5:before {
	  content: ">"; 
	  font-family:  sans-serif;
	  display: -webkit-box;
	  display: -ms-flexbox;
	  display: flex;
	  -webkit-box-align: center;
	      -ms-flex-align: center;
	          align-items: center;
	  -webkit-box-pack: center;
	      -ms-flex-pack: center;
	          justify-content: center;
	  position: absolute;
	  top: 0;
	  left: 0px;
	  height: 100%;
	  width: 30px;
	  background-color: rgba(255, 255, 255, 0.3);
	  border-radius: 0 50% 50% 0;
	  -webkit-transform: scale(0, 1);
	          transform: scale(0, 1);
	  -webkit-transform-origin: left center;
	          transform-origin: left center;
	  -webkit-transition: all 0.2s linear 0s;
	  transition: all 0.2s linear 0s;
	}
	.effect.effect-5:hover {
	  text-indent: 15px;
	}
	.effect.effect-5:hover:before {
	  -webkit-transform: scale(3, 1);
	          transform: scale(1, 1);
	  text-indent:0px;
	  }
/* 드롭다운 */	
	.nav {
	  width: 100%;
	  margin: 0 auto;
	  background: #1e8449;
	  color: #f0f0f0;
	}
	.nav a {
	  display: block;
	  padding: 0 16px;
	  line-height: inherit;
	  cursor: pointer;
	}
	.nav__menu {
	  line-height: 45px;
	  font-weight: 700;
	  text-transform: uppercase;
	}
	.nav__menu-item {
	  display: inline-block;
	  position: relative;
	}
	.nav__menu-item:hover {
	  background-color: #9b59b6;
	}
	.nav__menu-item:hover .nav__submenu {
	  display: block;
	}
	.nav__submenu {
	  font-weight: 300;
	  text-transform: none;
	  display: none;
	  position: absolute;
	  width: 220px;
	  background-color: #9b59b6;
	}
	.nav__submenu-item:hover {
	  background: rgba(0, 0, 0, 0.1);
	}
	nav ul {
  list-style: none;
  padding-left: 0;
  margin-top: 0;
  margin-bottom: 0;
}
</style>
</head>
<body>

	<nav class="nav">
	  <ul class="nav__menu">
	    <li class="nav__menu-item"><a>HOTEL</a>
	     <ul class="nav__submenu">	     
	    	<li class="nav__submenu-item"> <a href="https://codepen.io/">ROOM</a></li>
	        <li class="nav__submenu-item"> <a>HEALING</a></li>
	        <li class="nav__submenu-item"> <a>Web Hosting</a></li>
		</ul>
	    <li class="nav__menu-item"><a>SHOP</a>
	      <ul class="nav__submenu">
	        <li class="nav__submenu-item"> <a>Web Design</a></li>
	        <li class="nav__submenu-item"> <a>Web Development</a></li>
	        <li class="nav__submenu-item"> <a>Web Hosting</a></li>
	      </ul>
	    </li>
	    <li class="nav__menu-item"><a>COMMUNITY</a>
	      <ul class="nav__submenu">
	        <li class="nav__submenu-item"> <a>Our Company</a></li>
	        <li class="nav__submenu-item"> <a>Our Team</a></li>
	        <li class="nav__submenu-item"> <a>Our Reach</a></li>
	      </ul>
	      </li>
	      </ul>
	</nav>
	
	<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<div class="button-effect">
<a class="effect effect-5" href="/IMPet/Main" title="Learn More">Learn More</a>
</div>


</body>
</html>