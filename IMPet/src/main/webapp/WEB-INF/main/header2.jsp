<%@ page contentType="text/html; charset=UTF-8"%>

<link rel="stylesheet" type="text/css" href="/IMPet/resources/css/main/main.css" />
 <style type="text/css">

@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

	 
ul.nav {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  position: relative;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
      -ms-flex-direction: row;
          flex-direction: row;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  width: 100%;
  margin: 0 auto;
  padding: 0;
  list-style: none;
  border : 1px solid #00B488;
  border-top-left-radius: 6px;
  border-top-right-radius: 6px;
  font-family: 'Noto Sans KR', sans-serif;
  font-weight: 500;
}
ul.nav > li {
  position: relative;
  -webkit-box-flex: 1;
      -ms-flex-positive: 1;
          flex-grow: 1;
  -ms-flex-negative: 0;
      flex-shrink: 0;
  height: 60px;
  font-size: 14px;
  text-align: center;
  text-transform: uppercase;
  line-height: 50px;
  cursor: pointer;
  z-index: 5;
}
ul.nav > li:hover {
  background: rgba(0, 0, 0);
}
ul.nav > li:hover ul.dropdown {
  visibility: visible;
  -webkit-transform: translate(0, 0);
          transform: translate(0, 0);
  opacity: 1;
  z-index: 0;
}
ul.nav > li:hover ul.dropdown > li {
  -webkit-animation-name: slideInLeft;
          animation-name: slideInLeft;
  -webkit-animation-duration: 0.3s;
          animation-duration: 0.3s;
  -webkit-animation-timing-function: ease-in-out;
          animation-timing-function: ease-in-out;
  -webkit-animation-fill-mode: backwards;
          animation-fill-mode: backwards;
}
ul.nav > li:first-child {
  border-top-left-radius: 6px;
}
ul.nav > li:last-child {
  border-top-right-radius: 6px;
}

ul.dropdown {
  visibility: hidden;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  position: absolute;
  top: 100%;
  left: 30%;
  right: 30%;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  margin: 0;
  padding: 5px 0 30px;
  list-style: none;
  color: #333;
  background: #04c798;
  border-bottom-left-radius: 6px;
  border-bottom-right-radius: 6px;
  box-shadow: 1px 2px 5px -1px rgba(0, 0, 0, 0.15), 0px 4px 14px -1px rgba(0, 0, 0, 0.1);
  -webkit-transform: translate(0, -60px);
          transform: translate(0, -60px);
  -webkit-transition: opacity 0.2s, z-index 0s 0.2s, -webkit-transform 0.2s ease-out;
  transition: opacity 0.2s, z-index 0s 0.2s, -webkit-transform 0.2s ease-out;
  transition: transform 0.2s ease-out, opacity 0.2s, z-index 0s 0.2s;
  transition: transform 0.2s ease-out, opacity 0.2s, z-index 0s 0.2s, -webkit-transform 0.2s ease-out;
  opacity: 0;
  z-index: -1;
}
ul.dropdown > li {
  font-size: 14px;
  cursor: pointer;
}
/* ul.dropdown > li:hover {
  background: rgba(0, 0, 0, 0.06);
} */

@-webkit-keyframes slideInLeft {
  from {
    -webkit-transform: translate(-25%, 0);
            transform: translate(-25%, 0);
    opacity: 0;
  }
  to {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
    opacity: 1;
  }
}

@keyframes slideInLeft {
  from {
    -webkit-transform: translate(-25%, 0);
            transform: translate(-25%, 0);
    opacity: 0;
  }
  to {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
    opacity: 1;
  }
}

.navbar a:link,
.navbar a:visited
{
    color: black;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}
.navbar a:hover
{
    color: hotpink;
}</style>


 
<div align="center" style="height: 60%">

<br/><br/>
<img alt="logo" src="/IMPet/resources/image/logo.png" onclick="/IMPet/Main">
<br/><br/>
</div>

 <nav class="navbar" >
	  <ul class="nav">
	    	<li><a href=javascript:jsHotel(0);>HOTEL</a>
	     		<ul class="dropdown">	     
			    	<li><a href=javascript:jsHotel(1);>ROOM</a></li>
			        <li><a href=javascript:jsHotel(2);>HEALING</a></li>
	    		</ul>
	    	</li>
	    	<li><a href=/IMPet/PetShop/Main>SHOP</a>
	    		<ul class="dropdown">
			        <li><a href=/IMPet/PetShop/Main>사료</a></li>
			        <li><a href=/IMPet/PetShop/Main>간식</a></li>
			        <li><a href=/IMPet/PetShop/Main>의류</a></li>
			        <li><a href=/IMPet/PetShop/Main>장난감</a></li>
			    </ul>
	 	 	</li>
		    <li><a href=/IMPet/Community/Main>COMMU</a>
		      <ul class="dropdown">
		        <li><a href=/IMPet/Community/GalleryList>Gallery</a></li>
		        <li><a href=/IMPet/Community/EventList>Event</a></li>
		       </ul>
		     </li>
	    </ul> 
</nav> 

 <!-- <nav class="nav" id="header2">
	  <ul class="nav__menu">
	    	<li class="nav__menu-item"><a href=javascript:jsHotel(0);>HOTEL</a>
	     		<ul class="nav__submenu">	     
			    	<li class="nav__submenu-item"><a href=javascript:jsHotel(1);>ROOM</a></li>
			        <li class="nav__submenu-item"><a href=javascript:jsHotel(2);>HEALING</a></li>
	    		</ul>
	    	</li>
	    	<li class="nav__menu-item"><a href=/IMPet/PetShop/Main>SHOP</a>
	    		<ul class="nav__submenu">
			        <li class="nav__submenu-item"><a href=/IMPet/PetShop/Main>사료</a></li>
			        <li class="nav__submenu-item"><a href=/IMPet/PetShop/Main>간식</a></li>
			        <li class="nav__submenu-item"><a href=/IMPet/PetShop/Main>의류</a></li>
			        <li class="nav__submenu-item"><a href=/IMPet/PetShop/Main>장난감</a></li>
			    </ul>
	 	 	</li>
		    <li class="nav__menu-item"><a href=/IMPet/Community/Main>COMMU</a>
		      <ul class="nav__submenu">
		        <li class="nav__submenu-item"><a href=/IMPet/Community/GalleryList>Gallery</a></li>
		        <li class="nav__submenu-item"><a href=/IMPet/Community/EventList>Event</a></li>
		       </ul>
		     </li>
	    </ul> 
</nav>  -->




<!-- <nav>
  <ul id="main"> 
    <li><a href=javascript:jsHotel(0);>HOTEL</a>
      <ul class="drop">
        <div>
	        <li><a href=javascript:jsHotel(1);>ROOM</a></li>
	        <li><a href=javascript:jsHotel(2);>HEALING</a></li>
	    </div>
      </ul>
    </li>
    
      <li><a href=/IMPet/PetShop/Main>SHOP</a>
      <ul class="drop">
        <div>
	        <li><a href=/IMPet/PetShop/Main>사료</a></li>
	        <li><a href=/IMPet/PetShop/Main>간식</a></li>
	        <li><a href=/IMPet/PetShop/Main>의류</a></li>
	        <li><a href=/IMPet/PetShop/Main>장난감</a></li>
	    </div>
      </ul>
    </li>
    
    
      <li><a href=/IMPet/Community/Main>COMMU</a>
      <ul class="drop">
        <div>
	        <li><a href=/IMPet/Community/GalleryList>Gallery</a></li>
	        <li><a href=/IMPet/Community/EventList>Event</a></li>
	    </div>
      </ul>
    </li>
 
   
    <div id="marker"></div> 
</nav>    -->
<!-- <div align="center" id="header2">
<a href='/IMPet/PetHotel/Main'>HOTEL</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href='/IMPet/PetShop/Main'>SHOP</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href='/IMPet/Community/Main'>COMMUNITY</a>
<br/><br/>
</div>-->

<form name="hotel">
<input type="hidden" name="car">
</form>
<script type="text/javascript">
function jsHotel(value){
    var f = document.hotel; //폼 name
    f.car.value = value; //POST방식으로 넘기고 싶은 값
    f.action="/IMPet/PetHotel/Main";//이동할 페이지
    f.method="post";//POST방식
    f.submit();
}

$(document).ready(function() {
	// Loop through each nav item
	$("nav.navbar").children("ul.nav").children("li").each(function(indexCount) {
		// loop through each dropdown, count children and apply a animation delay based on their index value
		$(this).children("ul.dropdown").children("li").each(function(index) {
			// Turn the index value into a reasonable animation delay
			var delay = 0.1 + index * 0.03;

			// Apply the animation delay
			$(this).css("animation-delay", delay + "s");
		});
	});
});


</script>