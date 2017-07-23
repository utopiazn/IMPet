<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>




<link rel="stylesheet" href="/IMPet/resources/css/main.css" type="test/css">

<!-- 임시 css -->
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
@import url(//fonts.googleapis.com/earlyaccess/kopubbatang.css);


/* .header{
width: 100%; height: 100%; display: table-cell; float: left; font-family: 'Hanna', sans-serif; background-color: white; MARGIN-TOP: -8PX; MARGIN-LEFT: -5PX; padding: 15px;
} */

.right{ /* main 2 body부분 */
width: 100%; height: 100%; font-family: 'Noto sans KR', sans-serif; color:black;  vertical-align: middle; text-align: center; margin: 0 0; 
}
.footer{
width: 100%;  /* height: 80px; */ display: table-cell; float: left; font-family: 'Noto sans KR', sans-serif; color: white;  /*   MARGIN-TOP: -8PX;     MARGIN-LEFT: -5px; padding: 15px; */ background-color: #87EAA2;    
} 

	
</style>

<meta charset="UTF-8">
<title>♥IMPET : 아임펫♥</title>
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