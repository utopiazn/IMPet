<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="/IMPet/resources/ajax/HotelAjax.js" charset="utf-8"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>


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

	<div class="btn-group btn-group-justified" role="group" aria-label="..." >
	  <div class="btn-group" role="group">
	    <button type="button" class="btn btn-default" onclick="ajaxRoom();" style="height:100px; ">ROOM</button>
	  </div>
	  <div class="btn-group" role="group">
	    <button type="button" class="btn btn-default" onclick="ajaxHealing();" style="height:100px;">HEALING</button>
	  </div>
	</div>
	
	<div id="ContextHotel" align="center" style="width:100%;  float: left;">
		<div style="width: 100%; height: 600px">
			<c:if test="${car==0}">		
			<img alt="s2" src="/IMPet/resources/image/dog1.jpg" style="width: 100%; height: 600px">
			</c:if>
		</div>
	</div>
</div>

&nbsp;
