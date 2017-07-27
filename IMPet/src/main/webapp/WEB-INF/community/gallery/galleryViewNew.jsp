<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<script src="/IMPet/resources/ajax/HotelAjax.js" charset="utf-8"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<link rel="stylesheet" href="/IMPet/resources/css/gallery/gallery.css">
<link rel="stylesheet" href="/IMPet/resources/css/gallery/slider.css">


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


</style> 

<script type="text/javascript">


	


	function ajaxGalleryModifyForm(GALLERY_NO){
			  
		var url1 = "/IMPet/Community/GalleryModifyForm";
		
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





</script>



<div align="center" style="width: 100%;">


<div id="ContextEvent2">

		<jsp:include page="/WEB-INF/community/gallery/galleryView.jsp"/>


					
	

</div>
</div>
