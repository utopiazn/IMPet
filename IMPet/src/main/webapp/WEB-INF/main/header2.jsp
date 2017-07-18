<%@ page contentType="text/html; charset=UTF-8"%>

<link rel="stylesheet" type="text/css" href="/IMPet/resources/css/main/main.css" />


<script src="/IMPet/resources/JQuery/petShop.js" charset="utf-8"></script>
<script type="text/javascript">
function jsHotel(value){
    var f = document.hotel; //폼 name
    f.car.value = value; //POST방식으로 넘기고 싶은 값
    f.action="/IMPet/PetHotel/Main";//이동할 페이지
    f.method="post";//POST방식
    f.submit();
}
</script>


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
<img alt="logo" src="/IMPet/resources/image/logo.png" onclick="location.href='/IMPet/Loading'">
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
			        <li><a href="/IMPet/PetShop/Main#feed1" onclick="javascript:tab(0)">사료</a></li>
			        <li><a href="/IMPet/PetShop/Main#snack1" onclick="javascript:tab(1)">간식</a></li>
			        <li><a href="/IMPet/PetShop/Main#clothing1"	onclick="javascript:tab(2)">의류</a></li>
			        <li><a href="/IMPet/PetShop/Main#toy1" onclick="javascript:tab(3)">장난감</a></li>		
					<li><a href="/IMPet/PetShop/Main#stuff1" onclick="javascript:tab(4)">잡화 </a></li>
			    </ul>
	 	 	</li>
		    <li><a href=/IMPet/Community/GalleryList>COMMU</a>
		      <ul class="dropdown">
		        <li><a href=/IMPet/Community/GalleryList>Gallery</a></li>
		        <li><a href=/IMPet/Community/EventList>Event</a></li>
		       </ul>
		     </li>
	    </ul> 
</nav> 


<form name="hotel">
	<input type="hidden" name="car">
</form>
