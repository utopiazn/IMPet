<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>

<!-- 임시 css -->
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

.header{ /* 헤더부분 main 1 */
width: 100%; height: 100%; display: table-cell; float: left; font-family: 'Hanna', sans-serif; background-color: white; MARGIN-TOP: -8PX; MARGIN-LEFT: -5PX; padding: 15px;
}

.right{ /* main 2 body부분 */
width: 70%; height: 1200px; overflow: auto; display: table-cell; float: left; font-family: 'Hanna', sans-serif; color:black; padding-left: 15%; vertical-align: middle; text-align: center;
}
.footer{
width: 100%;  height: 10%; display: table-cell; float: left; font-family: 'Hanna', sans-serif; color: white;  margin: -15px; padding: 15px; background-color: #FFDC4C;
} 
</style>

<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
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

</body>
</html>