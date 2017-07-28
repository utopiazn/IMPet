<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




<script src="/IMPet/resources/ajax/HotelAjax.js" charset="utf-8"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
<link rel="stylesheet" href="/IMPet/resources/css/gallery/gallery.css">
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



<style>
.con{
	margin-top: 5px;
    border: 1px solid lightgray;
    width: 100%;
    height: 100%;
    float: left;
    padding-top: 8px;
    padding-bottom: 15px;
     cursor: pointer;
    }

.con a:link,
.con a:visited
{
    color: black;
    text-align: center;
    text-decoration: none;
}
.button4{
    display: block;
    margin: 5px 1px;
    height: 30px;
    width: 100px;
    background-color: transparent;
    font-size: 15px;
    font-family: 'Roboto', sans-serif;
    font-weight: 500;
    letter-spacing: 0.5px;
    outline: none;
    cursor: pointer;
    transition: all 0.2s ease;
}
.button4:hover{
  color: #fff;
}

.btn-4{
  border: 2px solid #00B488;
  color: #00B488;
}
.btn-4:hover{
  background-color: #00B488;
}

 .paging{text-align:center;height:32px;margin-top:5px;margin-bottom:15px;}
.paging a,
.paging strong{display:inline-block;width:36px;height:32px;line-height:28px;font-size:14px;border:1px solid #e0e0e0;margin-left:5px;
-webkit-border-radius:3px;
   -moz-border-radius:3px;
		border-radius:3px;
-webkit-box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
	-moz-box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
		  box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
}
.paging a:first-child{margin-left:0;}
.paging strong{color:#fff;background:#337AB7;border:1px solid #337AB7;}
.paging .page_arw{font-size:11px;line-height:30px;}



</style>


<script type="text/javascript">



function ajaxEvent(){
		  
	var url1 = "/IMPet/Community/EventList";
	
	var dataList =
	{ 
		"Event" : "1"	
	}	

	
	 data : dataList,
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




function EventView(EVENT_NO){
		  
	var url1 = "/IMPet/Community/EventView";	
	
	 var dataList =
		{ 
			"EVENT_NO" : EVENT_NO	
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





function ajaxEventModifyForm(EVENT_NO){
		  
	var url1 = "/IMPet/Community/EventModifyForm";
	
	 alert(EVENT_NO);     	

	 var dataList =
		{ 
			"EVENT_NO" : EVENT_NO	
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


function EventDelete(EVENT_NO){

	if( confirm("현재 이벤트를  삭제하시겠습니까?") ){	
		
		ajaxEventDelete(EVENT_NO);
	}
	
}
	

function ajaxEventDelete(EVENT_NO){
	
		
		var url1 = "/IMPet/Community/EventDelete";
		
		 	  
	 	var obj =document.jform;
	
	 	
	 	//alert(	obj.EVENT_IMG.value);     	
	
	
		 var dataList =
			{ 
				"EVENT_NO" : EVENT_NO,	
				"EVENT_IMG" : obj.EVENT_IMG.value
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




function ajaxeventForm(){	
	
	
	

	var url1 = "/IMPet/Community/EventForm";
	
    $.ajax({    
     
    	type : "POST",
        url : url1,        
        dataType : "text",      
        
        error : function() {
      	  
      		alert('오류임!');     	
        },
       
        success : function(data) {  
      		 $('#ContextEvent').html(data);          		
        }
        
      });        

}

function ajaxPageView(page){	
	
	//alert(page);  
	var dataList =
	{ 
		"PAGE" : page	
	}	

	var url1 = "/IMPet/Community/EventPageList";
	
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





<div align="center" style="width: 100%;">




	<div id="ContextEvent" align="center" style="width:100%;  float: left;">	
	
	

			
			
	
		<jsp:include page="/WEB-INF/community/event/eventListAdd.jsp"/>
		
	</div>			 					 
		
	
		
	
	
	
	
</div>
	


			
<!-- 

커뮤니티 이벤트 리스트

<br/><br/><br/><br/><br/>

<input value="이벤트 리스트 중 한개의 상세보기 이동" type="button" onclick="location.href='/IMPet/Community/EventView'"/> 

<input value="이벤트 추가 " type="button" onclick="location.href='/IMPet/Community/EventForm'"/> 

 -->
