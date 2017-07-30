<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script src="/IMPet/resources/ajax/HotelAjax.js" charset="utf-8"></script>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
 <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" href="/IMPet/resources/css/gallery/gallery.css">
<link rel="stylesheet" href="/IMPet/resources/css/gallery/slider.css">

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



legend{display: none;}
fieldset{border: 0;}

/* 검색 */
.sub_sps_sch { box-sizing: border-box;background-color: #f4f4f4; margin-bottom: 10px;}
.sub_sps_sch div.select-box{width:100px; height:26px;display:inline-block; border:1px solid #c9c9c9; vertical-align: middle;}

.sub_sps_sch select {height: 26px; width: 100px; color: #666; border:0;}
.sub_sps_sch .search_box{position:relative;display:inline-block;}
.sub_sps_sch .search_box input[type="text"]{height:26px;width:280px;padding-right:20px; margin-right: 2px; border:1px solid #c9c9c9; background-color: #fff;}
.sub_sps_sch .btn_submit{width: 60px; line-height: 26px; background-color: #848484; color: #fff; text-align: center; border: 0; font-size: 13px;}

/* 셀렉트박스 */
.select-box { position: relative;width: 200px;height: 26px; background: #fff url('http://unibell.jnkworks.com/img/sub/search_arrow.png') no-repeat right top; border:none;}
div.select-box label { position: absolute;    font-size: 12px;  font-weight:bold; color: #525252;    top: 6px;    left: 10px;    letter-spacing: 1px;}
div.select-box select { width: 100%;    height: 26px;    min-height: 26px;    line-height: 26px;    padding: 0 10px;    opacity: 0;    filter: alpha(opacity=0); /* IE 8 */ background-color: #fff;}
	

</style> 


<script type="text/javascript">



function GalleryView(GALLERY_NO){
		  
	var url1 = "/IMPet/Community/GalleryView";
	
	// alert(GALLERY_NO);     	

	 var dataList =
		{ 
			"GALLERY_NO" : GALLERY_NO	
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
    	  
    	  
    	 $('#ContextEvent2').html(data);
        		
      }
      
    });    
   
}

function ajaxGalleryModifyForm(GALLERY_NO){
		  
	var url1 = "/IMPet/Community/GalleryModifyForm";
	
	 //alert(GALLERY_NO);     	

	 var dataList =
		{ 
			"GALLERY_NO" : GALLERY_NO	
		}	

	
	
    $.ajax({    
      type : "POST",
      url : url1,
      data : dataList,
      dataType : "text",      
      error : function() {
    	  
    	 alert('오류임!!!');     	
      },
      success : function(data) {  
    	 $('#ContextEvent2').html(data);
        		
      }
      
    });    
   
}




function ajaxComment(){	
	
	  
	var obj =document.jform1;
	//alert(obj.comment.value); 	 

	
	//alert(page);  
	var dataList =
	{ 
		"GALLERYCOMMENT_CONTENT" :obj.comment.value,
		"GALLERY_NO" :obj.GALLERY_NO.value
	}	

	var url1 = "/IMPet/Community/GalleryComment"; 
	
    $.ajax({    
     
    	type : "POST",
        url : url1,
        data : dataList,
        dataType : "text",      
        
        error : function() {
      	  
      		alert('오류임!');     	
        },
       
        success : function(data) {  
      		 $('#ContextGallery').html(data);          		
        }
        
      });  
     

}




function ajaxCommentDel(GALLERYCOMMENT_NO){	
	
	
	
	var  GALLERY_NO=  document.getElementById('GALLERY_NO').value;
	
 	var dataList =
	{ 
		"GALLERYCOMMENT_NO" : GALLERYCOMMENT_NO,
		"GALLERY_NO" : GALLERY_NO
		
	}	

	var url1 = "/IMPet/Community/GalleryCommentDelete"; 
	
    $.ajax({    
     
    	type : "POST",
        url : url1,
        data : dataList,
        dataType : "text",      
        
        error : function() {
      	  
      		alert('오류임!');     	
        },
       
        success : function(data) {  
      		 $('#ContextGallery').html(data);          		
        }
        
      });  
    

}





function ajaxgalleryForm(){	
	
	
	

	var url1 = "/IMPet/Community/GalleryForm";
	
    $.ajax({    
     
    	type : "POST",
        url : url1,        
        dataType : "text",      
        
        error : function() {
      	  
      		alert('오류임!');     	
        },
       
        success : function(data) {  
      		 $('#ContextEvent2').html(data);          		
        }
        
      });        

}




function ajaxPageView(page){	
	
	//alert(page);  
	
	
	
		  
	var obj =document.jform;
		
	
	var dataList =
	{ 
		"PAGE" : page,	
		"search_name" :obj.search_name.value,
		"key" :obj.key.value
		
		
	}	

	var url1 = "/IMPet/Community/galleryPageList";
	
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


$(document).ready(function(){
    var select = $("select.select-cus");
    select.change(function(){
        var select_name = $(this).children("option:selected").text();
        $(this).siblings("label").text(select_name);
    });
 });


</script>


<div align="center" style="width: 100%;">


<div id="ContextEvent2">


<br/><br/>

	<div style="font-size: 25px; font-weight: bolder; text-align: center; width: 100%; ">
	갤러리 게시판
	<hr width="80%;" color="lightgray;" size="">
	
	</div>

	<div id="ContextEvent" align="center" style="width:100%;  float: left;">		
		<jsp:include page="/WEB-INF/community/gallery/galleryListAdd.jsp"/>					
   </div>
   
 </div>
	
</div>	


