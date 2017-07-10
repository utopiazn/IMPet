<%@ page contentType="text/html; charset=UTF-8"%>

<link rel="stylesheet" type="text/css" href="/IMPet/resources/css/main/main.css" />
 <style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/hanna.css); 


#main a:link,
#main a:visited
{
    color: black;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}
#main a:hover
{
    color: #FEC4CB;
}



</style>

 
<div align="center" style="height: 70%">

<br/><br/>
<h1><a href='/IMPet/Main'>I'm Pet</a></h1>
<br/><br/>
</div>


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
</nav> -->

<!-- not responsive yet -->
<nav>
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
</nav>
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

</script>