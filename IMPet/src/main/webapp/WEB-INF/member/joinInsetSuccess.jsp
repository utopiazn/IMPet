<%@ page contentType="text/html; charset=UTF-8"%>


<!DOCTYPE html>


<html lang="ko">
<head>
<style type="text/css">
.effect2 {
  text-align: center;
 display: inline-block;
    position: relative;
    text-decoration: none;
    color: #fff;
    text-transform: capitalize;
    background-color: #FFDC4C;
    font-family: 'hanna', sans-serif;
    font-size: 18px;
    padding: 12px 0px;
    width: 145px;
    border-radius: 6px;
    overflow: hidden;
}
.effect2.effect-6 {
  -webkit-transition: all 0.2s linear 0s;
  transition:  0pxall 0.2s linear 0s;
}
.effect2.effect-6:before {
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
.effect2.effect-6:hover {
  text-indent: 15px;
}
.effect2.effect-6:hover:before {
  -webkit-transform: scale(3, 1);
          transform: scale(1, 1);
  text-indent:0px;
  }

</style>

<meta charset="UTF-8">
<title>로그인 창으로 이동</title>
</head>
<body>



<br/><br/><br/><br/>

	<img alt="welcome" src="/IMPet/resources/image/welcome.jpg">


<br/><br/><br/><br/><br/><br/><br/>
<!-- <input value="로그인창으로 이동" type="button" class="effect2 effect-6" onclick="location.href='/IMPet/Member/LoginForm'"/> -->
<a class="effect2 effect-6"  title="가입 완료" onclick="location.href='/IMPet/Member/LoginForm'">로그인창으로 이동</a>
<br/><br/>



</body>
</html>