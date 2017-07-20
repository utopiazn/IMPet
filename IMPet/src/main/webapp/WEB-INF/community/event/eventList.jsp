<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="/IMPet/resources/ajax/HotelAjax.js" charset="utf-8"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
@import url(//fonts.googleapis.com/earlyaccess/kopubbatang.css);
.button3 {
  position: relative;
  padding: 14px 0;
  border: 2px #00B488 solid;
  float : left;
  color: black;
  cursor: pointer;
  font-family: 'Noto sans KR', sans-serif;
  font-size: 30px;
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



function ajaxEvent(){
		  
	var url1 = "/IMPet/Community/EventList";
	

	var dataList =
	{ 
		"Event" : "1" 	
	}	

	
	
	
	
    $.ajax({    
      type : "POST",
      url : url1,
      data : dataList,
      dataType : "text",      
      error : function() {
    	  
    	 alert('오류임!');     	
      },
      success : function(data) {  
    	 $('#ContextEvent').html(data);
        		
      }
      
    });    
   
}




</script>



<br/><br/>


	<c:if test="${ menu == 1}">

<div align="center" style="width: 100%;">

	<div style="width: 100%; float: left;" >
	  <div role="group">
	    <button type="button" class="button3" onclick="location.href='/IMPet/Community/GalleryList'">갤러리</button>
	  </div>
	  <div role="group">
	    <button type="button" class="button3" onclick="ajaxEvent();">이벤트</button>
	  </div>
	</div>
	
	<div id="ContextEvent" align="center" style="width:100%;  float: left;">
	
	
	
	</div>
</div>

&nbsp;
</c:if>





커뮤니티 이벤트 리스트

<br/><br/><br/><br/><br/>

<input value="이벤트 리스트 중 한개의 상세보기 이동" type="button" onclick="location.href='/IMPet/Community/EventView'"/> 

<input value="이벤트 추가 " type="button" onclick="location.href='/IMPet/Community/EventForm'"/> 


