<%@ page contentType="text/html; charset=UTF-8"%>



<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<script type="text/javascript">
function validateForm() {
    var x = document.forms["joinform"]["EVENT_CONTENT"].value;
    if (x == null || x == "") {
        alert("상품명은 입력해야합니다");
        return false;
    }
}
</script>


<!-- 메뉴 시작 -->

<div class="row" style="padding-left:15px;width:100%;">    
	<h1 class="page-header">갤러리 추가</h1>
</div>

<div class="row" style="padding-left:15px;width:100%; text-align:left;"  id="right">
	<div class="panel panel-default">
		<div class="panel-heading">이벤트 생성 페이지 입니다. 빠짐없이 입력하셔야합니다</div>
			<div class="panel-body">
				
				<form name="joinform">	
						
                        
                        <div class="form-group">
                            <label>제목</label>
                            <input type="text" name="GALLERY_SUBJECT" class="form-control" id="GALLERY_SUBJECT"  placeholder="제목을 입력하세요" style="width:500px;"/>
                            <br/>
                        </div>
                        

                        <div class="file_input">
                        	1번째 이미지 <br/>
                             <label style="background-color: #333;  border-color: #ccc;">파일 첨부 
                            <input type="file" name="GALLERY_IMG1" onchange="javascript:document.getElementById('file_route').value=this.value">                          
                            </label>
                            <input type="text" readonly="readonly" title="File Route" id="file_route">
                        </div>
                        
                          <div class="form-group">                      
                            <input type="text" name="GALLERY_CONTENT1" class="form-control" id="GALLERY_CONTENT1"  placeholder="1번째 이미지 내용을 입력해 주세요" style="width:500px;"/>
                        </div>   
                        
                        <br/>
                                          
                        
                        
                        <div class="file_input">
                        	2번째 이미지 <br/>
                             <label style="background-color: #333;  border-color: #ccc;">파일 첨부 
                            <input type="file" name="GALLERY_IMG2" onchange="javascript:document.getElementById('file_route2').value=this.value">                          
                            </label>
                            <input type="text" readonly="readonly" title="File Route" id="file_route2">
                        </div>                      
                        
                           <div class="form-group">                 
                            <input type="text" name="GALLERY_CONTENT2" class="form-control" id="GALLERY_CONTENT2"  placeholder="2번째 이미지 내용을 입력해 주세요" style="width:500px;"/>
                        </div>  
                        <br/>
                                        
                        
                        
                        <div class="file_input">
                        	3번째 이미지 <br/>
                             <label style="background-color: #333;  border-color: #ccc;">파일 첨부 
                            <input type="file" name="GALLERY_IMG3" onchange="javascript:document.getElementById('file_route3').value=this.value">                          
                            </label>
                            <input type="text" readonly="readonly" title="File Route" id="file_route3">            
                        </div>
                        
                         <div class="form-group">
                            <input type="text" name="GALLERY_CONTENT3" class="form-control" id="GALLERY_CONTENT3"  placeholder="3번째 이미지 내용을 입력해 주세요" style="width:500px;"/>
                        </div>    
                            <br/>     
                        
                        <div class="file_input">
                        	4번째 이미지 <br/>
                             <label style="background-color: #333;  border-color: #ccc;">파일 첨부 
                            <input type="file" name="GALLERY_IMG4" onchange="javascript:document.getElementById('file_route4').value=this.value">                          
                            </label>
                            <input type="text" readonly="readonly" title="File Route" id="file_route4">
                        </div>
                        
                         <div class="form-group">
                            <input type="text" name="GALLERY_CONTENT4" class="form-control" id="GALLERY_CONTENT4"  placeholder="4번째 이미지 내용을 입력해 주세요" style="width:500px;"/>
                        </div>  
                       <br/>
                    
                        <div class="file_input">
                        	5번째 이미지 <br/>
                            <label style="background-color: #333;  border-color: #ccc;">파일 첨부 
                            	<input type="file" name="GALLERY_IMG5" onchange="javascript:document.getElementById('file_route5').value=this.value">                          
                            </label>
                            <input type="text" readonly="readonly" title="File Route" id="file_route5">
                        </div>
                        
                         	<div class="form-group">
                            <input type="text" name="GALLERY_CONTENT5" class="form-control" id="GALLERY_CONTENT5"  placeholder="5번째 이미지 내용을 입력해 주세요" style="width:500px;"/>
                        	
                        </div>   
                      
                    
						
				</form>
				
				
			</div>
	</div>
	
	
</div>





<!-- <br/><br/><br/><br/><br/>

<input value="추가" type="button" onclick="location.href='/IMPet/Community/GalleryInsert'"/> /
<input value="커뮤니티 갤러리 리스트  이동" type="button" onclick="location.href='/IMPet/Community/GalleryList'"/> 
 -->



</body>
</html>

<script>

function chk_radio() { 

	
	 var frm = document.joinform;
	
	if(frm.GALLERY_SUBJECT.value == ""){
		alert("제목을 입력해 주세요.");
		return false;
	}
	
	 if(frm.GALLERY_CONTENT1.value == ""){
		alert("이미지 내용을 입력해 주세요");
		return false;
	}
	
	if(frm.GALLERY_IMG1.value == ""){
		alert("이미지는 1개 이상이여야 합니다..");
		return false;
	
	}
	
	else{
		  frm.method = "post";
		  frm.action = "/IMPet/Community/GalleryInsert";
		  frm.enctype= "multipart/form-data";
		  frm.submit();
		  return true;
	 } 

}	

</script>