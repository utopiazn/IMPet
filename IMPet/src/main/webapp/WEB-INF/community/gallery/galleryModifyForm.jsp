<%@ page contentType="text/html; charset=UTF-8"%>



<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<script type="text/javascript">
function chk_radio() {
	
	var frm = document.joinform;
			
	  frm.method = "post";
	  frm.action = "/IMPet/Community/GalleryModify";
	  frm.enctype= "multipart/form-data";
	  frm.submit();
	  return true;
 } 

	
</script>


<!-- 메뉴 시작 -->

<div class="row" style="padding-left:15px;width:100%;">    
	<h1 class="page-header">갤러리 수정</h1>
</div>

<div class="row" style="padding-left:15px;width:100%; text-align:left;"  id="right">
	<div class="panel panel-default">
		<div class="panel-heading">겔러리 수정 페이지 입니다. 빠짐없이 입력하셔야합니다</div>
			<div class="panel-body">
				
				<form  name="joinform" >	
						
                        
                        <div class="form-group">
                            <label>제목</label>
                            <input type="text" name="GALLERY_SUBJECT" class="form-control" id="GALLERY_SUBJECT"  value="${view.GALLERY_SUBJECT}" placeholder="제목을 입력하세요" style="width:500px;"/>
                            <br/>
                        </div>
                        

                        
                        <div class="file_input">
                        	1번째 이미지 <br/>
                             <label style="background-color: #333;  border-color: #ccc;">파일 첨부 
                            <input type="file" name="GALLERY_IMG1_${Image01}" onchange="javascript:document.getElementById('file_route').value=this.value">                          
                            </label>
                             <input type="text" readonly="readonly" title="File Route" id="file_route"> 
                            <p style="border-bottom: 1px dotted #999;width:203px;">현재 등록된 이미지 : <img src="/IMPet/resources/image/gallery/${Image01}" width="60" height="60" alt="" onerror="this.src='/IMPet/resources/image/noimg_130.gif'" />
                            <input type="hidden"  name="ORIGINALIMG" value="${Image01}">
                            <input type="hidden"  name="GALLERY_IMG1" value="${Image01}"></p>
                                                 
                        </div>
                        
                          <div class="form-group">
                            	
                            <input type="text" name="GALLERY_CONTENT1" class="form-control" id="GALLERY_CONTENT1" value="${TxT01}" placeholder="이벤트 기간을 입력하세요" style="width:500px;"/>
                        </div>        
                  <br/>

                        
                        <div class="file_input">
                        	2번째 이미지 <br/>
                             <label style="background-color: #333;  border-color: #ccc;">파일 첨부 
                          	  <input type="file" name="GALLERY_IMG2_${Image02}" onchange="javascript:document.getElementById('file_route2').value=this.value">                          
                            </label>
                            <input type="text" readonly="readonly" title="File Route" id="file_route2">
                            
                            <p style="border-bottom: 1px dotted #999;width:203px;">현재 등록된 이미지 : <img src="/IMPet/resources/image/gallery/${Image02}" width="60" height="60" alt="" onerror="this.src='/IMPet/resources/image/noimg_130.gif'" />                    
                            <input type="hidden"  name="ORIGINALIMG" value="${Image02}">
                            <input type="hidden"  name="GALLERY_IMG2" value="${Image02}"></p>
                            
                           	
                        </div>       
                        
                          <div class="form-group">
                            <input type="text" name="GALLERY_CONTENT2" class="form-control" id="GALLERY_CONTENT2"  value="${TxT02}" placeholder="이벤트 기간을 입력하세요" style="width:500px;"/>
                        </div>                 
                        <br/>
                                            
                        
                        
                        <div class="file_input">
                        	3번째 이미지 <br/>
                             <label style="background-color: #333;  border-color: #ccc;">파일 첨부 
                            <input type="file" name="GALLERY_IMG3_${Image03}" onchange="javascript:document.getElementById('file_route3').value=this.value">                          
                            </label>
                                   <input type="text" readonly="readonly" title="File Route" id="file_route3">
                           	<p style="border-bottom: 1px dotted #999;width:203px;">현재 등록된 이미지 : <img src="/IMPet/resources/image/gallery/${Image03}" width="60" height="60" alt="" onerror="this.src='/IMPet/resources/image/noimg_130.gif'" />                   
                            <input type="hidden"  name="ORIGINALIMG" value="${Image03}">
                            <input type="hidden"  name="GALLERY_IMG3" value="${Image03}"></p>
                     
                          
                        </div>
                        
                         <div class="form-group">
                            <input type="text" name="GALLERY_CONTENT3" class="form-control" id="GALLERY_CONTENT3" value="${TxT03}" placeholder="이벤트 기간을 입력하세요" style="width:500px;"/>
                        </div>  
                        
                        <br/>
                                          
                        
                        
                        <div class="file_input">
                        	4번째 이미지 <br/>
                             <label style="background-color: #333;  border-color: #ccc;">파일 첨부 
                            <input type="file" name="GALLERY_IMG4_${Image04}" onchange="javascript:document.getElementById('file_route4').value=this.value">                          
                            </label>
                             <input type="text" readonly="readonly" title="File Route" id="file_route4">
                            <p style="border-bottom: 1px dotted #999;width:203px;">현재 등록된 이미지 : <img src="/IMPet/resources/image/gallery/${Image04}" width="60" height="60" alt="" onerror="this.src='/IMPet/resources/image/noimg_130.gif'" />                    
                            <input type="hidden"  name="ORIGINALIMG" value="${Image04}">
                            <input type="hidden"  name="GALLERY_IMG4" value="${Image04}"></p>
                            
                           
                   
                        </div>
                        
                           <div class="form-group">
                            <input type="text" name="GALLERY_CONTENT4" class="form-control" id="GALLERY_CONTENT4" value="${TxT04}"  placeholder="이벤트 기간을 입력하세요" style="width:500px;"/>
                        </div> 
                       <br/>
                                       
                        
                        <div class="file_input">
                        	5번째 이미지 <br/>
                            <label style="background-color: #333;  border-color: #ccc;">파일 첨부 
                            	<input type="file" name="GALLERY_IMG5_${Image05}" onchange="javascript:document.getElementById('file_route5').value=this.value">                          
                            </label>
                               <input type="text" readonly="readonly" title="File Route" id="file_route5">  
                            <p style="border-bottom: 1px dotted #999;width:203px;">현재 등록된 이미지 : <img src="/IMPet/resources/image/gallery/${Image05}" width="60" height="60" alt="" onerror="this.src='/IMPet/resources/image/noimg_130.gif'" />                                                
                            <input type="hidden"  name="ORIGINALIMG" value="${Image05}">
                            <input type="hidden"  name="GALLERY_IMG5" value="${Image05}"></p>
                                             
                        </div>
                        
                        <div class="form-group">
                            <input type="text" name="GALLERY_CONTENT5" class="form-control" id="GALLERY_CONTENT5" value="${TxT05}" placeholder="이벤트 기간을 입력하세요" style="width:500px;"/>
                        	
                        </div> 
                                       
						 <input type="hidden" name="GALLERY_NO" value="${view.GALLERY_NO}"/>
                      	 <input type="hidden" name="GALLERY_IMG" value="${view.GALLERY_IMG}"/>
                      
                    	
				</form>
				
				
			</div>
			
	</div>
		<div style="text-align:center; padding-bottom: 3%;">

		
			<button type="submit" class="button2" onClick="chk_radio();" >수정</button>
			<button type="reset" class="button2" onClick="location.href='/IMPet/Community/GalleryList'">작성취소</button>	
	</div>	
</div>





<!-- <br/><br/><br/><br/><br/>

<input value="추가" type="button" onclick="location.href='/IMPet/Community/GalleryInsert'"/> /
<input value="커뮤니티 갤러리 리스트  이동" type="button" onclick="location.href='/IMPet/Community/GalleryList'"/> 
 -->



</body>
</html>


