<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="/IMPet/resources/ajax/HotelAjax.js" charset="utf-8"></script>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 --><!-- <link rel="stylesheet" type="text/css" href="/IMPet/resources/css/button.css" /> -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
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


<script type="text/javascript">

window.onload=function(){
	var on = ${car};
	if(on == 1){
		ajaxRoom();
	}else if(on == 2){
		ajaxHealing();
	}
}

</script>



<br/><br/>

<div align="center" style="width: 100%;">

	<div style="width: 100%; float: left;" >
	  <div role="group">
	    <button type="button" class="button3" onclick="ajaxRoom();">ROOM</button>
	  </div>
	  <div role="group">
	    <button type="button" class="button3" onclick="ajaxHealing();">HEALING</button>
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
