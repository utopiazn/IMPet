<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>

<meta charset="UTF-8">
</head>






<body>
<br/><br/>
<div>

<div align="right" style="float: left; width:24%; ">
    <a href=# id="prev"><<</a>
</div>

<div style="float: left;  width: 50%; height: 50%" >
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

<div style="float: left; width:24%;">
    <a href=# id="next">>></a>
</div>
</div>




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