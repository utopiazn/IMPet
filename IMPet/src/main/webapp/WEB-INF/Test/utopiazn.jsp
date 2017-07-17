<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>tab example</title>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>


<link rel="stylesheet" href="/IMPet/resources/css/test/demo-slideshow.css">

	
</head>
<body>

<div class="cycle-slideshow" 
    data-cycle-fx=scrollHorz
    data-cycle-timeout=0
    data-cycle-pager="#no-template-pager"
    data-cycle-pager-template=""
    >
    <img src="http://malsup.github.io/images/p1.jpg">
    <img src="http://malsup.github.io/images/p2.jpg">
    <img src="http://malsup.github.io/images/p3.jpg">
    <img src="http://malsup.github.io/images/p4.jpg">
</div>
<div id=no-template-pager class="cycle-pager external">
    <!-- using thumbnail image files would be even better! -->
    <img src="http://malsup.github.io/images/p1.jpg" width=20 height=20>
    <img src="http://malsup.github.io/images/p2.jpg" width=20 height=20> 
    <img src="http://malsup.github.io/images/p3.jpg" width=20 height=20> 
    <img src="http://malsup.github.io/images/p4.jpg" width=20 height=20>
</div>


</body>
</html>