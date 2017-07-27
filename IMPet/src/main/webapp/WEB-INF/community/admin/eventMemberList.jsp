<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 


<style type="text/css">
.paging{text-align:center;height:32px;margin-top:5px;margin-bottom:15px;}
.paging a,
.paging strong{display:inline-block;width:36px;height:32px;line-height:28px;font-size:14px;border:1px solid #e0e0e0;margin-left:5px;
-webkit-border-radius:3px;
   -moz-border-radius:3px;
		border-radius:3px;
-webkit-box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
	-moz-box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
		  box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
		  text-decoration:none;
}
.paging a:first-child{margin-left:0;}
.paging strong{color:#fff;background:#337AB7;border:1px solid #337AB7;}
.paging .page_arw{font-size:11px;line-height:30px;}
</style>

<link href="/IMPet/resources/css/admin/memberList.css" rel="stylesheet" style="text/css">
 
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/resources/ajax/ajax.js'/>" charset="utf-8"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/IMPet/resources/JQuery/joinForm.js" charset="utf-8"></script>

<script type="text/javascript">



 
 
$(document).ready(function(){

 	$("a[name='Modified']").on("click", function(e){ //수정
    	
 		e.preventDefault(); 	 		
    	var id =$(this).parent().find("#EVENT_NO").val();    
    	ajaxEventModifyForm(id);   
    	
	});	  
	  
 	$("a[name='delete']").on("click", function(e){ //삭제 
    
		var id =$(this).parent().find("#EVENT_NO").val();	     	
 		if(confirm(id +"의  이벤트 정보를 삭제하시겠습니까?")){		    		

 			e.preventDefault();   
 			ajaxEventDelete(id);
 		} 	
	});
});	



function ajaxEventModifyForm(EVENT_NO){
		  
	var url1 = "/IMPet/Community/EventModifyForm";
	
   	

	 var dataList =
		{ 
			"EVENT_NO" : EVENT_NO,	
			"ADMIN"    : "1"
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




	
function ajaxEventDelete(EVENT_NO){
	
	
	var url1 = "/IMPet/Community/EventDelete";
	
	 	  
 	var obj =document.jform;

 	



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

	
	


function ajaxPageView(page){	
	
	//alert(page);  
	var dataList =
	{ 
		"PAGE" : page	
	}	

	var url1 = "/IMPet/Member/MemberPageList";
	
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

<div id="ContextEvent">

<div class="row" >    
	<h1 class="page-header">이벤트 관리 목록</h1>
</div>

<div class="row">
	<div class="panel panel-default">
	 <div class="panel-heading">
                         [이벤트 목록] 이벤트 목록, 수정 페이지 입니다.
        </div>
	
	<div id="dataTables-example_wrapper" class="panel-body">
	
	
		<table class="table  table-bordered table-hover dataTable no-footer"
				id="dataTables-example" role="grid"
				aria-describedby="dataTables-example_info">
			
			<thead>
				<tr role="row" style="vertical-align:middle;">
					<th style="width: 10%; text-align:center;vertical-align:middle;">이벤트 번호</th>
					<th style="width: 15%; text-align:center;vertical-align:middle;">제목</th>
					<th style="width: 15%; text-align:center;vertical-align:middle;">설명</th>										
					<th style="width: 10%; text-align:center;vertical-align:middle;">사진</th>
					<th style="width: 10%; text-align:center;vertical-align:middle;">이벤트 기간</th>
					<th style="width: 10%; text-align:center;vertical-align:middle;">작성일</th>					
					<th style="width: 8%; text-align:center;vertical-align:middle;">조회수</th>					
					<th style="width: 10%; text-align:center;vertical-align:middle;">관리</th>
					
					
				</tr>
			</thead>	
			
			<tbody>
				
				<c:forEach var="itemList" items="${listAll}"  varStatus="stat">

					
					<tr>
					
						<td style="text-align:center;vertical-align:middle;">
						  ${itemList.EVENT_NO}
						</td>
						
					
						<td style="text-align:center;vertical-align:middle;">
						  ${itemList.EVENT_SUBJECT}
						</td>
						
						<td style="text-align:center;vertical-align:middle;">
						  ${itemList.EVENT_CONTENT}
						</td >						
 							
						<td style="text-align:center;vertical-align:middle;">						 
							<img src="/IMPet/resources/image/event/${itemList.EVENT_IMG}" width="90" height="90"> 
						</td>
						
						<td style="text-align:center;vertical-align:middle;">
						  ${itemList. EVENT_TIME}
						</td>
						
						<td style="text-align:center;vertical-align:middle;">
						  ${itemList.EVENT_DATE}
						</td>								
							
						<td style="text-align:center;vertical-align:middle;">
						  ${itemList. EVENT_COUNT}
						</td>
						
						
						
						<td style="text-align:center;vertical-align:middle;">
							<a name='Modified'>							
								<input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cog_font_awesome.svg/32px-Cog_font_awesome.svg.png">
								<input type='hidden' name='EVENT_NO' id='EVENT_NO' value="${itemList.EVENT_NO }"></a>
					 			&nbsp;&nbsp;					 	
					 		 <a name='delete'>
					 		 	<input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png">
					 		 	<input type='hidden' name='EVENT_NO' id='EVENT_NO' value="${itemList.EVENT_NO }"></a>
					 		
					 	
					 	</td>
					 	
					 	
					 </tr>				
				</c:forEach>
			</tbody>				
								
		</table>						
	
	
	<!-- 
	</div> -->


</div>



	<div class="paging">
	
	${pagingHtml} 
			
		
		

		
	</div>

</div>
</div>
</div>


<!-- 회원 리스트  선택 햇다 치고

<br/><br/>
<input value="회원 한면을 선택 행을 경우 회원 수정 폼으로 이동" type="button" onclick="location.href='/IMPet/Member/ModifiedForm'"/>
 -->
