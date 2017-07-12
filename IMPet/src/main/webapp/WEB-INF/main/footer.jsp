<%@ page contentType="text/html; charset=UTF-8"%>


	<style type="text/css">
	@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
/* 	.button2{
			background-color: #87EAA2;
			text-decoration:none;
			font-family: 'Jeju Gothic', sans-serif;
			line-height:0px;
			text-align:left;
			vertical-align:middle;
			display:inline-block;
			font-size:15px;
			width: 97px;
			height:0px;
			padding:8px;
			border-color:#e3bf54;
			border-width:0px;
			border-style:solid;
	
	} 	
	.foot{
	vertical-align: middle;
    font-family: 'Jeju Gothic', sans-serif;
    line-height: 2em;
    float: left;
    font-size: 15px;
    padding-left: 10%;
    color: black;
    font-weight: bold; 
	}
	
	.foot2{
	vertical-align: middle;
    font-family: 'Jeju Gothic', sans-serif;
    line-height: 3em;
    float: left;
    font-size: 15px;
    padding-left: 10%;
    color: black;
     font-weight: bold;
	} */
	
	


ul {
  list-style: none;
}

.flex-rw a {
  text-decoration: none;
  color: white;
}

.generic-anchor {
  color: #00B488;
}
.generic-anchor:visited {
  color: #00B488;
}
.generic-anchor:hover {
  color: #ccc;
}

.flex-rw {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-flow: row wrap;
      flex-flow: row wrap;
}


footer {
  background: #00B488;
  margin-top: auto;
  width: 100%;
}

.footer-list-top {
  width: 21%;
  padding: 0;
}

.footer-list-top > li {
  text-align: center;
  line-height: 2em;

}

.footer-list-header {
    padding: 0;
    color: #fff;
    font: 20px "Noto Sans KR", sans-serif;
    font-weight: 600;
    width: 10%;
    text-align: center;
    
}


.footer-list-anchor {
  font:"Noto Sans KR", sans-serif;
}

.footer-social-section {
  width: 100%;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  -ms-flex-pack: distribute;
      justify-content: space-around;
  position: relative;
/*   margin-top: 5px; */
}

.footer-social-section::after {
  content: "";
  position: absolute;
  z-index: 1;
/*   top: 50%; */
  left: 10px;
  border-top: 1px solid white;
  width: calc(100% - 20px);
}

.footer-social-overlap {
  position: relative;
  z-index: 2;
  background: #00B488;
}

.footer-social-connect {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
     font: 2em "Noto sans KR", sans-serif;
  color: #fff;
}

.footer-social-small {
  font-size: 0.6em;
  padding: 0px 20px;
}

.footer-social-overlap > a {
  font-size: 2em;
}

.footer-social-overlap > a:not(:first-child) {
  margin-left: 0.38em;
}

.footer-bottom-section {
  width: 100%;
  padding: 10px;
  border-top: 1px solid #ccc;
  margin-top: 10px;
}

.footer-bottom-section > div:first-child {
  margin-right: auto;
}

.footer-bottom-wrapper {
  font-size: 1.5em;
  color: #fff;
}

.footer-address {
  display: inline;
  font-style: normal;
}

@media only screen and (max-width: 768px) {
  .footer-list-header {
    font-size: 2em;
  }

  .footer-list-anchor {
    font-size: 1.1em;
  }

  .footer-social-connect {
    font-size: 2.5em;
  }

  .footer-social-overlap > a {
    font-size: 3em;
  }

  .footer-bottom-wrapper {
    font-size: 1.3em;
  }
}
@media only screen and (max-width: 568px) {
  main {
    font-size: 3em;
  }

  .footer-list-top {
    width: 100%;
  }

  .footer-list-header {
    font-size: 3em;
  }

  .footer-list-anchor {
    font-size: 1.5em;
  }

  .footer-social-section {
    -webkit-box-pack: center;
        -ms-flex-pack: center;
            justify-content: center;
  }

 /*  .footer-social-section::after {
    top: 25%;
  } */

  .footer-social-connect {
    margin-bottom: 10px;
    padding: 0 10px;
  }

  .footer-social-overlap {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
        -ms-flex-pack: center;
            justify-content: center;
  }

  .footer-social-icons-wrapper {
    width: 100%;
    padding: 0;
  }

  .footer-social-overlap > a:not(:first-child) {
    margin-left: 20px;
  }

  .footer-bottom-section {
    padding: 0 5px 10px 5px;
  }

  .footer-bottom-wrapper {
    text-align: center;
    width: 100%;
    margin-top: 10px;
  }
}
@media only screen and (max-width: 480px) {
  .footer-social-overlap > a {
    margin: auto;
  }

  .footer-social-overlap > a:not(:first-child) {
    margin-left: 0;
  }

  .footer-bottom-rights {
    display: block;
  }
}
@media only screen and (max-width: 320px) {
  .footer-list-header {
    font-size: 2.2em;
  }

  .footer-list-anchor {
    font-size: 1.2em;
  }

  .footer-social-connect {
    font-size: 2.4em;
  }

  .footer-social-overlap > a {
    font-size: 2.24em;
  }

  .footer-bottom-wrapper {
    font-size: 1.3em;
  }
}

	
	</style>
<!-- 
	<div style="float: left; padding-left: 5%;">
	<input class="button2" value="회사소개" type="button" onclick="location.href='/IMPet/Info'"/>
	<br/>
	<br/>
	<br/>
	<br/>
	<input class="button2" value="찾아오시는길" type="button" onclick="location.href='/IMPet/Way'"/>
	</div>
	
	<div class="foot">
	고객센터 02) XXX – XXXX<br/>
	이용시간 11:00 ~ 20:00<br/>
	토일, 공휴일 휴무<br/>
	</div>


	<div class="foot2">
	<font color="yellow" style="font-weight: bolder;" > YELLOW ID</font> IMPET<br/>
	무통장 입금 아임펫 1002-053-209817(우리은행)<br/>
	</div> -->



<footer class="flex-rw">
  
  <ul>
  	<li>&nbsp;</li>
    <li class="footer-list-header">About</li>
    <li class="footer-list-header">IMPET</li>
    </ul>
   
  <ul class="footer-list-top"> 
    <li><a href='/IMPet/Info' >COMPANY</a></li>
    <li>&nbsp;</li>
    <li><a href='/IMPet/Way'>STORE LOCATOR</a></li>    
  </ul>
  
  <ul>
    <li>&nbsp;</li>
    <li class="footer-list-header">INFO</li>
    <li>&nbsp;</li>
  </ul>
  
  <ul class="footer-list-top">
    <li>고객센터 02) XXX – XXXX</li>
     <li>&nbsp;</li>
    <li>이용시간 11:00 ~ 20:00</li>
   </ul>
   
   <ul class="footer-list-top">
    <li>토일, 공휴일 휴무</li> 
     <li>&nbsp;</li> 
    <li>무통장 입금 아임펫 1002-053-209817(우리은행)</li>  
  </ul> 
  
  <div class="footer-list-top">
  <img alt="mungmung" src="/IMPet/resources/image/logo2.png" style="width: 300px; height: 150px; float: right;"> 
  </div>
  <section class="footer-social-section flex-rw">
      <span class="footer-social-overlap footer-social-connect">
      	<span>▶</span>YELLOW ID <span class="footer-social-small">IS</span><span  style="color: yellow;"> IMPET</span>◀
      </span>
      
  </section>
  
</footer>

