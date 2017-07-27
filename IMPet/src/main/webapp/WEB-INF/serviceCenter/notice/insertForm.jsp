<%@ page contentType="text/html; charset=UTF-8"%>

<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<center>
<form action="NoticeInsert" method="post" enctype="multipart/form-data">
<br/><br/><br/>
	<div class="panel panel-default" style="width: 80%;">
		<div class="panel-heading" >공지사항 추가 페이지입니다. </div>						
							
		<div class="panel-body" style=text-align:left;>
		  <div class="form-group">
		      <label> 제목 </label>
		      <input type="text" class="form-control" name="notice_Subject" style="width:70%;"/>
		   </div>
		   
		   <div class="form-group">
		      <label> 내용 </label>
		        <textarea class="form-control" name="notice_Content" style="width:70%;"></textarea>
		   </div>
		   
		    <div class="file_input">
               	<b>공지사항 이미지</b><br/>
               	 
                    <label>파일 첨부 
                
                   <input type="file" name="notice_IMG" onchange="javascript:document.getElementById('file_route').value=this.value" >                         
                   </label>
                   <input type="text" readonly="readonly" title="File Route" id="file_route" value="">
                   <p class="help-block">공지사항 이미지 입니다 800x800 사이즈 권장합니다</p>

            </div>
		   
		</div>                     
	 </div>
<input class="button2" value="공지사항 추가" type="submit">
<input class="button2" name="list" type="button" value="뒤로가기" onclick="location.href='/IMPet/ServiceCenter/NoticeList'"/>
</form>



<br/><br/><br/><br/><br/>
