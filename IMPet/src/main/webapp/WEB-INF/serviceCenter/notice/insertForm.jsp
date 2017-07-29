<%@ page contentType="text/html; charset=UTF-8"%>

<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<center>
<form name="noticeForm">
<br/><br/><br/>
	<div class="panel panel-default" style="width: 80%;">
		<div class="panel-heading" >공지사항 추가 페이지입니다. </div>						
							
		<div class="panel-body" style=text-align:left;>
		  <div class="form-group">
		      <label> 제목 </label>
		      <input type="text" class="form-control" name="notice_Subject" id="notice_Subject" style="width:70%;" required/>
		   </div>
		   
		   <div class="form-group">
		      <label> 내용 </label>
		        <textarea class="form-control" name="notice_Content" id="notice_Content" style="width:70%;" required></textarea>
		   </div>
		   
		    <div class="file_input">
               	<b>공지사항 이미지</b><br/>
               	 
                    <label >파일 첨부 
                
                   <input type="file" name="notice_IMG" id="notice_IMG" required onchange="javascript:document.getElementById('file_route').value=this.value" >                         
                   </label>
                   <input type="text" readonly="readonly" title="File Route" id="file_route" value="">
                   <p class="help-block">공지사항 이미지 입니다 800x800 사이즈 권장합니다</p>

            </div>
		   
		</div>                     
	 </div>
	 	<div style="text-align:center; padding-bottom: 3%;" >
		<button type="submit" class="btn btn-success" onClick="chk_radio();" >공지사항 추가</button>
		<button type="reset" class="btn btn-default" onclick="location.href='/IMPet/ServiceCenter/NoticeList'">작성취소</button>	
	</div>	
	 

</form>



<br/><br/><br/><br/><br/>
<script>
function chk_radio() { 

	
	 var frm = document.noticeForm;
	
	if(frm.notice_Subject.value == ""){
		alert("제목을 입력해 주세요.");
		return false;
	}
	
	 if(frm.notice_Content.value == ""){
		alert("내용을 입력해 주세요.");
		return false;
	}
	 
	 if(frm.notice_IMG.value == ""){
			alert("이미지를 등록해 주세요.");
			return false;
		}
	
	
	else{
		  frm.method = "post";
		  frm.action = "/IMPet/ServiceCenter/NoticeInsert";
		  frm.enctype= "multipart/form-data";
		  frm.submit();
		  return true;
	 } 

}	
</script>
