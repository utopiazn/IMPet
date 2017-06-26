<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>

<!-- 임시 css -->
<style type="text/css">
.header{ /* 헤더부분 main 1, 2 */
width: 100%; height: 100%; display: table-cell; float: left; font-family: serif; background-color: #d4f4fa;
}
.right{ /* main 2 body부분 */
width: 70%; height: 1200px; overflow: auto; display: table-cell; float: left; font-family: '맑은고딕', sans-serif; color:black; padding-left: 15%; vertical-align: middle; text-align: center;
}
.footer{
width: 100%;  height: 10%; display: table-cell; float: left; font-family: '맑은고딕', sans-serif; color: white;  margin: -15px; padding: 15px; background-color: #202f58;
} 
</style>

<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
<div class="header">
<tiles:insertAttribute name="header" />
</div>
<div class="right">
<tiles:insertAttribute name="body" />	
</div>
<div class="footer">
<tiles:insertAttribute name="footer" />
</div>

</body>
</html>