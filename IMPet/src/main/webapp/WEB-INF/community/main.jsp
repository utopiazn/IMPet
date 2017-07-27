<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>서비스센터 메인</title>

<style>
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

.button4
{
    text-transform: uppercase;
    letter-spacing: 2px;
    text-align: center;
    color: #0C5;
    font-size: 15px;
    font-family: "Noto Sans KR", sans-serif; */
    font-weight: 300;
    margin: 1em auto;
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    padding: 20px 0;
    width: 50%;
    height: 80px;
    background: white;
    border: 2px solid #00B488;
    color: black;
    overflow: hidden;
    transition: all 0.5s;
    display: inline-block;
    position: relative;
    padding-right: 0;
    transition: padding-right 0.5s;
}

.button4:hover, .button4:active 
{
	
  text-decoration: none;
  color: #00B488;
  border-color: #00B488;
  background: #FFF;
}


.button4:hover:after, .button4:active:after 
{
  transition: opacity 0.5s, top 0.5s, right 0.5s;
  opacity: 1;
  border-color: #00B488;
  right: 0;
  top: 50%;
}
 
</style>
</head>
<body>
<br/><br/>

<div>
	
	<div style="font-size: 25px; font-weight: bolder; text-align: center; width: 100%; ">
	커뮤니티
	<hr width="80%;" color="lightgray;" size=""> 
	<br/>
	</div>
	
	<div style="font-size: 15px; width: 80%; margin: 0 auto;">
	갤러리 및 이벤트 게시판 입니다.
	비방이나 불법적인 게시물은 경고 조치 및 삭제 합니다.
	</div>

	<br/><br/>	
	
	<div style="height: 500px;" class="sub-main">
	
	<input class="button4" value="갤러리 게시판" type="button" onclick="location.href='/IMPet/Community/GalleryList'"/>
	<input class="button4" value="이벤트 게시판" type="button" onclick="location.href='/IMPet/Community/EventList'"/>
	
	</div>
</div>


</body>
</html>