<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>
<script type="text/javascript">
//현재 돌고있는 메인 이미지
var count = 0;
// setInterval 객체(메인)
var obj;
// 이미지 슬라이드(메인)
// @param num 슬라이드 되는 페이지.. 0이 자동
// 갯수를 늘릴려면 index.jsp 에서 같은형태의 id로 여러개 만들어 주면 된다. 
// 한번 네비아이콘을 클릭하면 자동기능이 멈춘다.
function slide_img(num){
 if(num != "0"){
  count = num - 1;
 }
 if(count > $(".imgzone>ul").find("li").size()){
  count = 0;
 } 
 
 count = count +1;
 
 var img_id = "img"+(count);
 var img_id2 = "#img"+(count);
 var btn_id = "btn"+(count);
 if($(img_id2).css("display") == "none"){
  $(".imgzone>div").find("div").each(function(index){
   if($(this).attr("id") == img_id){
    $(this).stop().fadeIn(1000);
//    $(this).show("slide",{direction: "right"},1000);
   }else {
    $(this).css("display","none");
   }
  });
  $(".imgzone>ul").find("li").each(function(index){
   if($(this).find("a>img").attr("id") == btn_id){
    var src = $(this).find("a>img").attr("src").replace(".png", "_on.png");
    $(this).find("a>img").attr("src",src);
   }else {
    var src = $(this).find("a>img").attr("src");
    if(src.match(".*_on.*")){
     src = $(this).find("a>img").attr("src").replace("_on.png", ".png");
    }
    $(this).find("a>img").attr("src",src);
   }
  });
 }
 if(num != "0"){
  clearInterval(obj);
 }
}
 
$(window).load(function(){
 getFaq();
 // 메인 이미지 슬라이드
 obj = setInterval('slide_img(0)', 3000);
});
 

</script>



<meta charset="UTF-8">
<title>이동훈 전용 페이지 </title>
</head>
<body>
<br/><br/>

<div align="center" >
<table>
<tr>
<td>멍멍<br/>
<iframe id="LOL" width="500" height="290"
 src="https://www.youtube.com/embed/Coo3gZv7U0U?
 	autohide=1&autoplay=1&rel=0&controls=0&
 	disablekb=1&showinfo=0&vq=hd720&loop=10">
</iframe>
</td>
<td>
헤이즈 - 비도 오고 그래서<br/>
<iframe id="mv" width="500" height="290"
 src="https://www.youtube.com/embed/afxLaQiLu-o?
 	autohide=1&autoplay=1&rel=0&controls=0&
 	disablekb=1&showinfo=0&vq=hd720&loop=10">
</iframe></td>
</tr>
</table>
</div>

<!--s:imgzone (메인이미지)-->
<div class="imgzone">
<h3>image zone</h3>
<ul class="numarea">
<li><a href="javascript:slide_img('1')">
<iframe id="LOL" width="500" height="290"
 src="https://www.youtube.com/embed/Coo3gZv7U0U?
	 autohide=1&autoplay=1&rel=0&controls=0&
	 disablekb=1&showinfo=0&vq=hd720&loop=10">
</iframe>
</a></li>
<li><a href="javascript:slide_img('2')"><img id="btn2" src="<bean:message bundle="portal.path" key="moctPortal.img.dir"/>/n_portal/main/ico_cir.png" width="11" height="11" alt="" /></a></li>
<li><a href="javascript:slide_img('3')"><img id="btn3" src="<bean:message bundle="portal.path" key="moctPortal.img.dir"/>/n_portal/main/ico_cir.png" width="11" height="11" alt="" /></a></li>
</ul>
<div class="imgarea">
<div id="img1"><a href="#">
<iframe id="LOL" width="500" height="290"
src="https://www.youtube.com/embed/Coo3gZv7U0U?
	 autohide=1&autoplay=1&rel=0&controls=0&
	 disablekb=1&showinfo=0&vq=hd720&loop=10">
</iframe>
</a></div>
<div id="img2" style="display:none;"><a href="#"><img src="<bean:message bundle="portal.path" key="moctPortal.img.dir"/>/n_portal/main/visual_01.jpg" width="410" height="324" alt="" /></a></div>
<div id="img3" style="display:none;"><a href="#"><img src="<bean:message bundle="portal.path" key="moctPortal.img.dir"/>/n_portal/main/visual_01.jpg" width="410" height="324" alt="" /></a></div>
    </div>
</div>
<!--e:imgzone (메인이미지)-->
</body>
</html>