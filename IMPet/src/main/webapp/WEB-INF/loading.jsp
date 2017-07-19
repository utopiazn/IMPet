<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>


<html lang="ko">
<head>

<meta charset="UTF-8">

<style type="text/css">
@keyframes spinner {
  100% {
    transform: rotate(3600deg);
  }
}

.loading-container {
  margin: 0 auto;
  text-align: center;
  position: relative;
  top: 50vh;
  transform: translateY(-50%);
}

.spinner {
  display: inline-block;
  width: 100px;
  height: 100px;
  background: url('http://i.imgur.com/oSHLAzp.png') center center;
  background-size: contain;
  transition-origin: 50% 50%;
  animation: spinner 3s infinite alternate ease-in-out;
}
.spinner-center {
  display: inline-block;
  position: absolute;
  margin-left: -100px;
  width: 100px;
  height: 100px;
  background: url('http://i.imgur.com/u0BC2ZR.png') center center;
  background-size: contain;
  content: '';
}

.loading-text {
  position: relative;
  z-index: 1;
  font-size: 1.5rem;
  font-family: "Comic Sans MS", cursive, sans-serif;
  margin-left: 0.5em;
}
</style>

<script type="text/javascript">

setTimeout( function(){
	location.href="/IMPet/Member/Logout";
}, 30000);

</script>

</head>

<body>

<div class="loading-container">
  <div class="spinner"></div>
  <div class="spinner-center"></div>
  <!-- <div class="loading-text">Loading...</div> -->
  <div class="loading-text">니가 로그아웃을 할수 있을 거 같아?</div>
  
</div>

</body>

</html>