<%@ page contentType="text/html; charset=UTF-8" %>


<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">

<script>
function chk_radio() { 

	
	 var frm = document.joinform;
	
	if(frm.EVENT_SUBJECT.value == ""){
		alert("이벤트 제목을 입력해 주세요.");
		return false;
	}
	
	 if(frm.EVENT_CONTENT.value == ""){
		alert("이벤트 내용을 입력해 주세요.");
		return false;
	}
	
	if(frm.EVENT_TIME.value == ""){
		alert("이벤트 기간을 지정해 주세요.");
		return false;
	
	}
	
	if(frm.EVENT_IMG.value == ""){
		alert("이미지를 등록해주세요");
		return false;
	}
	
	else{
		  frm.method = "post";
		  frm.action = "/IMPet/Community/EventInsert";
		  frm.enctype= "multipart/form-data";
		  frm.submit();
		  return true;
	 } 

}	
</script>


<!-- 메뉴 시작 -->

<div class="row" style="padding-left:15px;width:100%;">    
	<h1 class="page-header">이벤트 추가</h1>
</div>

<div class="row" style="padding-left:15px;width:100%; text-align:left;"  id="right">
	<div class="panel panel-default">
		<div class="panel-heading">이벤트 생성 페이지 입니다. 빠짐없이 입력하셔야합니다</div>
			<div class="panel-body">
				
				<form  name="joinform" >	
						
                        
                        <div class="form-group">
                            <label>제목</label>
                            <input type="text" name="EVENT_SUBJECT" class="form-control" id="EVENT_SUBJECT"  required placeholder="제목을 입력하세요"  style="width:500px;"/>
                        </div>
                        
                         <div class="form-group">
                            <label>설명</label>
                            <input type="text" name="EVENT_CONTENT" class="form-control" id="EVENT_CONTENT" required placeholder="설명을 입력하세요" style="width:500px;"/>
                        </div>
                        
                         <div class="form-group">
                            <label>이벤트 기간</label>
                            <input type="text" name="EVENT_TIME" class="form-control" id="EVENT_TIME"  required placeholder="이벤트 기간을 입력하세요" style="width:500px;"/>
                        </div>
                        
                     
                        <div class="file_input">
                        	이벤트 이미지 <br/>
                           <label >파일 첨부 
                           		 <input type="file" name="EVENT_IMG" onchange="javascript:document.getElementById('file_route').value=this.value" required>                          
                            </label>
                           		 <input type="text" readonly="readonly" title="File Route" id="file_route">
                          
                        </div>
                        
              
                        
                    
									
				</form>
				
				
			</div>
				
	
	</div>
	<div style="text-align:center;">
		<button type="submit" class="btn btn-success" onClick="chk_radio();" >상품등록</button>
		<button type="reset" class="btn btn-default" onClick="location.href='/IMPet/Community/AdminEventList'">작성취소</button>	
	</div>	
</div>



