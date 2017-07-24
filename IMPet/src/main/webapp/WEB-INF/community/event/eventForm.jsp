<%@ page contentType="text/html; charset=UTF-8" %>


<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">

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
	<h1 class="page-header">이벤트 추가</h1>
</div>

<div class="row" style="padding-left:15px;width:100%; text-align:left;"  id="right">
	<div class="panel panel-default">
		<div class="panel-heading">이벤트 생성 페이지 입니다. 빠짐없이 입력하셔야합니다</div>
			<div class="panel-body">
				
				<form action="/IMPet/Community/EventInsert" enctype="multipart/form-data" method="post" name="joinform" onsubmit="return validateForm()">	
						
                        
                        <div class="form-group">
                            <label>제목</label>
                            <input type="text" name="EVENT_SUBJECT" class="form-control" id="EVENT_SUBJECT"  placeholder="제목을 입력하세요" style="width:500px;"/>
                        </div>
                        
                         <div class="form-group">
                            <label>설명</label>
                            <input type="text" name="EVENT_CONTENT" class="form-control" id="EVENT_CONTENT"  placeholder="설명을 입력하세요" style="width:500px;"/>
                        </div>
                        
                         <div class="form-group">
                            <label>이벤트 기간</label>
                            <input type="text" name="EVENT_TIME" class="form-control" id="EVENT_TIME"  placeholder="이벤트 기간을 입력하세요" style="width:500px;"/>
                        </div>
                        
                        
                        
                        <div class="file_input">
                        	이벤트 이미지 <br/>
                             <label>파일 첨부 
                            <input type="file" name="EVENT_IMG" onchange="javascript:document.getElementById('file_route').value=this.value">                          
                            </label>
                            <input type="text" readonly="readonly" title="File Route" id="file_route">
                           
                        </div>
                        
              
                        
                    
						<button type="submit" class="btn btn-success">상품등록</button>
						<button type="reset" class="btn btn-default">작성취소</button>					
				</form>
				
				
			</div>
	</div>
</div>


<!-- <input value="추가" type="button" onclick="location.href='/IMPet/Community/EventInsert'"/> /
<input value="커뮤니티  이벤트 리스트  이동" type="button" onclick="location.href='/IMPet/Community/EventList'"/> 

 -->


