<%@ page contentType="text/html; charset=UTF-8"%>



<!-- <link href="/IMPet/resources/css/flexslider.css" rel="stylesheet" style="text/css">
<script src="resources/JQuery/jquery.flexslider.js" charset="utf-8"></script>
 -->

<link href="/IMPet/resources/css/flexslider.css" rel="stylesheet" style="text/css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="/IMPet/resources/JQuery/jquery.flexslider.js" charset="utf-8"></script>


<script type="text/javascript">


$(window).load(function() {
  // The slider being synced must be initialized first
  $('#carousel').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    itemWidth: 210,
    itemMargin: 5,
    asNavFor: '#slider'
  });
 
  $('#slider').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    sync: "#carousel"
  });
});









</script>


dsdddddddddddddddddddddddddddddddddddddddd
<!-- Place somewhere in the <body> of your page -->
<div id="slider" class="flexslider" style="width: 50%; height: 30%; padding-top: 10px;">
  <ul class="slides" style="width: 100%; height: 100%" >
    <li>
      <img src="/IMPet/resources/image/dog1.jpg" style="width: 100%; height: 600px" />
    </li>
    <li>
      <img src="/IMPet/resources/image/dog1.jpg" style="width: 100%; height: 600px"/>
    </li>
    <li>
      <img src="/IMPet/resources/image/dog1.jpg" style="width: 100%; height: 600px"/>
    </li>
    <li>
      <img src="/IMPet/resources/image/dog1.jpg" style="width: 100%; height: 600px"/>
    </li>
    <!-- items mirrored twice, total of 12 -->
  </ul>
</div>
<div id="carousel" class="flexslider">
  <ul class="slides">
    <li>
      <img src="/IMPet/resources/image/dog1.jpg" />
    </li>
    <li>
      <img src="/IMPet/resources/image/dog1.jpg" />
    </li>
    <li>
      <img src="/IMPet/resources/image/dog1.jpg" />
    </li>
    <li>
      <img src="/IMPet/resources/image/dog1.jpg" />
    </li>
    <!-- items mirrored twice, total of 12 -->
  </ul>
</div>




커뮤니티 갤러리 상세 정보

<br/><br/><br/><br/><br/>

<input value="수정" type="button" onclick="location.href='/IMPet/Community/GalleryModifyForm'"/> 
<input value="삭제" type="button" onclick="location.href='/IMPet/Community/GalleryDelete'"/> 
<br/><br/><br/><br/><br/><br/><br/><br/>
<input value="댓글 달기" type="button" onclick="location.href='/IMPet/Community/GalleryComment'"/> 
<input value="댓글 삭제" type="button" onclick="location.href='/IMPet/Community/GalleryCommentDelete'"/> 

<input value="커뮤니티 갤러리 리스트  이동" type="button" onclick="location.href='/IMPet/Community/GalleryList'"/> 


