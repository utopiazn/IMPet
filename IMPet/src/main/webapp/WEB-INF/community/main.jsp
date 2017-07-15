<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>커뮤니티 메인</title>


<style>
.button3 {
  position: relative;
  padding: 14px 0;
  border: 2px #00B488 solid;
  float : left;
  color: black;
  cursor: pointer;
  font-family: 'KoPub Batang' sans-serif;
  font-size: .9em;
  text-transform: uppercase;
  transition: color 0.4s, background-color 0.4s;
  display: inline-block;
  vertical-align: middle;
  line-height: 1em;
  outline: none;
  text-align: center;
  text-decoration: none;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  width: 50%;
  background-color: white;
  height: 70px;
}
.button3:hover, .button3:focus {
  transition: color 0.4s, background-color 0.4s;
  color: white;
  text-decoration: none;
  background-color: #00B488;
}
</style>



</head>
<body>




<br/><br/>

<div align="center" style="width: 100%;">

	<div style="width: 100%; float: left;" >
	  <div role="group">
	    <button type="button" class="button3" onclick="ajaxRoom();">갤러리</button>
	  </div>
	  <div role="group">
	    <button type="button" class="button3" onclick="ajaxHealing();">이벤트</button>
	  </div>
	</div>
	
	<div id="ContextHotel" align="center" style="width:100%;  float: left;">
		<div style="width: 100%; height: 600px">
			<c:if test="${car==0}">		
				<img alt="s2" src="/IMPet/resources/image/hotel/main.jpg" style="width: 100%; height: 600px">
			</c:if>
		</div>
	</div>
</div>

&nbsp;



커뮤니티 메인

<br/><br/><br/><br/><br/>

<input value="갤러리 리스트" type="button" onclick="location.href='/IMPet/Community/GalleryList'"/> 
<br/> <br/> 
<input value="이벤트 리스트" type="button" onclick="location.href='/IMPet/Community/EventList'"/>  





</body>
</html>