<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>

<link rel="stylesheet" href="/IMPet/resources/css/main.css" type="test/css">

<!-- 임시 css -->
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

.header{ /* 헤더부분 main 1 */
width: 100%; height: 100%; display: table-cell; float: left; font-family: 'Hanna', sans-serif; background-color: white; MARGIN-TOP: -8PX; MARGIN-LEFT: -5PX; padding: 15px;
}

.right{ /* main 2 body부분 */
width: 1125px;  font-family: 'Hanna', sans-serif; color:black;  vertical-align: middle; text-align: center; margin: 0 auto; 
}
.footer{
width: 100%;  height: 80px; display: table-cell; float: left; font-family: 'Hanna', sans-serif; color: white;   MARGIN-TOP: -8PX; MARGIN-LEFT: -5PX; padding: 15px; background-color: #87EAA2;
} 
	.nav {
	width: 100%;
    margin: 0 auto;
    background: #87EAA2;
    color: #87EAA2;
    MARGIN-LEFT: -69PX;
    text-align: center;
    padding: 7px 90px 4px;
    font-size: 20px;

	}
	.nav a {
	  color: black;
	  text-decoration: none;
	  display: block;
	  padding: 0 16px;
	  line-height: inherit;
	  cursor: pointer;
	}
	.nav__menu {
	  line-height: 45px;
	  font-weight: 700;
	  text-transform: uppercase;
	  word-spacing: 270px;
	}
	.nav__menu-item {
	  display: inline-block;
	  position: relative;
	  
	}
	.nav__menu-item:hover {
	  color: hotpink;
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
	  background-color: #FFDC4C;
	   z-index: 2;
	 MARGIN-LEFT: -60PX;
	}
	/* .nav__submenu-item:hover {
	  background: rgba(0, 0, 0, 0.1);
	} */
	nav ul {
  list-style: none;
  padding-left: 0;
  margin-top: 0;
  margin-bottom: 0;
}
</style>

<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
	<div class="wrap">
		<div class="header">
		<tiles:insertAttribute name="header1" />
		<tiles:insertAttribute name="header2" />
		</div>
		<div class="right">
		<tiles:insertAttribute name="body" />	
		</div>
		<div class="footer">
		<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>