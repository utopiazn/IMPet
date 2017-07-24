<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>서비스센터 메인</title>

<style>

/* .button3 {
  position: relative; 
  border: 1px #00B488 solid;
 /*  float : l; 
  color: black;
  cursor: pointer;
  font-family: 'KoPub Batang' sans-serif;
  font-size: 15px;
  text-transform: uppercase;
  transition: color 0.4s, background-color 0.4s;
  display: inline-block;
  vertical-align: middle;
  line-height: 1em;
  outline: none;
  text-align: l;
  text-decoration: none;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  width: 80%;
  margin: 15px 20px;
  background-color: white;
/*   height: 20px; 
   padding: 50px 30px;
     -webkit-transition: all 0.2s linear 0s;
  transition: all 0.2s linear 0s;
}
.button3:hover, .button3:focus {
  transition: color 0.4s, background-color 0.4s;
  color: white;
  text-decoration: none;
  background-color: #00B488;
}

.button3:AFTER {
  content: ">"; 
  font-family:  sans-serif;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  position: absolute;
  top: 0;
  left: 0px;
  height: 100%;
  width: 30px;
  background-color: rgba(255, 255, 255, 0.3);
  border-radius: 0 50% 50% 0;
  -webkit-transform: scale(0, 1);
          transform: scale(0, 1);
  -webkit-transform-origin: left center;
          transform-origin: left center;
  -webkit-transition: all 0.2s linear 0s;
  transition: all 0.2s linear 0s;
}
.button3:hover {
  text-indent: 15px;
}
.button3 hover:before {
  -webkit-transform: scale(3, 1);
          transform: scale(1, 1);
  text-indent:0px;
  }
 */
 
 .hvr-bubble-float-right {
    display: inline-block;
    vertical-align: middle;
    -webkit-transform: perspective(1px) translateZ(0);
    transform: perspective(1px) translateZ(0);
    box-shadow: 0 0 1px transparent;
    position: relative;
    margin: .4em;
    padding: 1em;
    cursor: pointer;
    background: #e1e1e1;
    text-decoration: none;
    color: #666;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    -webkit-font-smoothing: antialiased;
}
.hvr-bubble-float-right:before {
 pointer-events: none;
    position: absolute;
    z-index: -1;
    content: '';
    border-style: solid;
    -webkit-transition-duration: 0.3s;
    transition-duration: 0.3s;
    -webkit-transition-property: transform;
    transition-property: transform;
    top: calc(50% - 10px);
    right: 0;
    border-width: 10px 0 10px 10px;
    border-color: transparent transparent transparent #e1e1e1;
}
.hvr-bubble-float-right:hover, .hvr-bubble-float-right:focus, .hvr-bubble-float-right:active {
  -webkit-transform: translateX(-10px);
  transform: translateX(-10px);
}
.hvr-bubble-float-right:hover:before, .hvr-bubble-float-right:focus:before, .hvr-bubble-float-right:active:before {
  -webkit-transform: translateX(10px);
  transform: translateX(10px);
}

</style>
</head>
<body>
<br/><br/>

<div>
	
	<div style="font-size: 25px; font-weight: bolder; text-align: center; width: 100%; ">
	고객센터
	<hr width="80%;" color="lightgray;" size=""> 
	<br/>
	</div>
	
	<div style="font-size: 15px; width: 80%; margin: 0 auto;">
	고객센터에서 궁금하신 점을 찾아보세요.
	궁금하신 점 또는 필요하신 내용을 선택하시면 좀 더 상세한 안내를 도와드립니다.
	</div>

	<br/><br/>	
	
	<div style="height: 500px;">
	
	<input class="hvr-bubble-float-right" value="Q&A" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionList'"/><br/>
	<input class="hvr-bubble-float-right" value="FAQ" type="button" onclick="location.href='/IMPet/ServiceCenter/FAQList'"/><br/>
	<input class="hvr-bubble-float-right" value="공지사항" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeList'"/>
	
	</div>
</div>


</body>
</html>