<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>
<link href="/IMPet/resources/css/flexslider.css" rel="stylesheet" style="text/css">
<link href="/IMPet/resources/css/demo.css" rel="stylesheet" style="text/css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="<c:url value='/resources/JQuery/jquery.flexslider.js'/>" charset="utf-8"></script>
<!-- <script src="http://malsup.github.com/jquery.cycle2.js"></script> -->






<!-- <script type="text/javascript">
	$(window).load(function() {
	 
	  // Vimeo API nonsense
	  var player = document.getElementById('player_1');
	  $f(player).addEvent('ready', ready);
	 
	  function addEvent(element, eventName, callback) {
	    if (element.addEventListener) {
	      element.addEventListener(eventName, callback, false)
	    } else {
	      element.attachEvent(eventName, callback, false);
	    }
	  }
	 
	  function ready(player_id) {
	    var froogaloop = $f(player_id);
	    froogaloop.addEvent('play', function(data) {
	      $('.flexslider').flexslider("pause");
	    });
	    froogaloop.addEvent('pause', function(data) {
	      $('.flexslider').flexslider("play");
	    });
	  }
	 
	 
	  // Call fitVid before FlexSlider initializes, so the proper initial height can be retrieved.
	  $(".flexslider")
	    .fitVids()
	    .flexslider({
	      animation: "slide",
	      useCSS: false,
	      animationLoop: false,
	      smoothHeight: true,
	      before: function(slider){
	        $f(player).api('pause');
	      }
	  });
	});
</script> -->

<script type="text/javascript">
$(window).load(function() {
	  $('.flexslider').flexslider({
	    animation: "slide"
	  });
	});
</script>





<meta charset="UTF-8">
</head>






<body>
<br/><br/>



<!-- <div class="flexslider">
  <ul class="slides">
    <li>
      <iframe id="player_1" src="https://player.vimeo.com/video/39683393?api=1&player_id=player_1" width="500" height="281" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
      <iframe id="player_1" width="500" height="290"
 src="https://www.youtube.com/embed/afxLaQiLu-o?
 	autohide=1&autoplay=1&rel=0&controls=0&
 	disablekb=1&showinfo=0&vq=hd720&loop=10">
</iframe>
    </li>
    <li>
      <img src="/IMPet/resources/image/giphy.gif" />
    </li>
    <li>
      <img src="/IMPet/resources/image/sa.gif" />
    </li>
    <li>
      <img src="/IMPet/resources/image/d.jpg" />
    </li>
  </ul>
</div> -->


<div class="flexslider">
  <ul class="slides">
    <li>
	  <img src="/IMPet/resources/image/giphy.gif" />
    </li>
    <li>
      <img src="/IMPet/resources/image/sa.gif" />
    </li>
    <li>
      <img src="/IMPet/resources/image/d.jpg" />
    </li>
  </ul>
</div>


































<!-- <div>

<div align="right" style="float: left; width:24%; padding-top: 13%;">
    <a href=# id="prev"><<</a>
</div>

<div style="float: left;  width: 50%;" >
<div class="cycle-slideshow" 
	data-cycle-fx="scrollHorz"
    data-cycle-timeout="0"
    data-cycle-prev="#prev"
    data-cycle-next="#next"
 >
<img alt="s1" src="resources/image/sa.gif" style="width: 100%; height: 100%">
<img alt="s2" src="resources/image/b.jpg" style="width: 100%; height: 100%">
<img alt="s3" src="resources/image/c.jpg" style="width: 100%; height: 100%">
<img alt="s4" src="resources/image/d.jpg" style="width: 100%; height: 100%">
</div>
</div>

<div style="float: left; width:24%; padding-top: 13%;">
    <a href=# id="next">>></a>
</div>
</div> -->




<!-- <div>
<iframe id="LOL" width="500" height="290"
 src="https://www.youtube.com/embed/Coo3gZv7U0U?
 	autohide=1&autoplay=1&rel=0&controls=0&
 	disablekb=1&showinfo=0&vq=hd720&loop=10">
</iframe>

<iframe id="mv" width="500" height="290"
 src="https://www.youtube.com/embed/afxLaQiLu-o?
 	autohide=1&autoplay=1&rel=0&controls=0&
 	disablekb=1&showinfo=0&vq=hd720&loop=10">
</iframe>
</div> -->


</body>





</html>