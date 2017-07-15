<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>회원 리스트 </title>

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
}
.paging a:first-child{margin-left:0;}
.paging strong{color:#fff;background:#337AB7;border:1px solid #337AB7;}
.paging .page_arw{font-size:11px;line-height:30px;}
</style>


<!-- <link href="/IMPet/resources/css/admin/memberList.css" rel="stylesheet" style="text/css">
 -->
 
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
    	var id =$(this).parent().find("#MEMBER_ID").val();    
   		ajaxModifiedFormView(id);    	
	});	  
	  
 	$("a[name='delete']").on("click", function(e){ //삭제 
    
		var id =$(this).parent().find("#MEMBER_ID").val();	     	
 		if(confirm(id +"의 회원 정보를 삭제하시겠습니까?")){		    		

 			e.preventDefault();   
    		ajaxdeleteView(id);
 		} 	
	});
});	


function ajaxModifiedFormView(memberID){	
	
	var dataList =
	{ 
		"MEMBER_ID" : memberID 	
	}	

	var url1 = "/IMPet/Member/ModifiedForm";
	
    $.ajax({     	
    
        type : "POST",
        url : url1,
        data : dataList,
        dataType : "text",      
        
        error : function() {
      	  
      		alert('오류임!');     	
        },
        
        success : function(data) {  
      		 $('#ContextModifiedForm').html(data);          		
        }
        
      });        
}

function ajaxdeleteView(memberID){	
	
	var dataList =
	{ 
		"MEMBER_ID" : memberID,
		"ADMIN" : 	"1" 	
	}	

	var url1 = "/IMPet/Member/Delete";
	
    $.ajax({    
     
    	type : "POST",
        url : url1,
        data : dataList,
        dataType : "text",      
        
        error : function() {
      	  
      		alert('오류임!');     	
        },
       
        success : function(data) {  
      		 $('#ContextModifiedForm').html(data);          		
        }
        
      });        

}



function ajaxPageView(page){	
	
	alert(page);  
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
      		 $('#ContextModifiedForm').html(data);          		
        }
        
      });        

}








</script>


</head>
<body>

<div id="ContextModifiedForm">


<br/><br/>

<div class="row" >    
	<h1 class="page-header">회원 관리 목록</h1>
</div>

<div class="row">
	<div class="col-sm-12">
	
		<table class="table  table-bordered table-hover dataTable no-footer"
				id="dataTables-example" role="grid"
				aria-describedby="dataTables-example_info">
			
			<thead>
				<tr role="row" style="vertical-align:middle;">
					<th style="width: 10 %; text-align:center;vertical-align:middle;">번호</th>
					<th style="width: 15%; text-align:center;vertical-align:middle;">ID</th>										
					<th style="width: 10%; text-align:center;vertical-align:middle;">이름</th>
					<th style="width: 10%; text-align:center;vertical-align:middle;">별칭</th>
					<th style="width: 15%; text-align:center;vertical-align:middle;">전화번호 </th>
					<th style="width: 15%; text-align:center;vertical-align:middle;">메일</th>
					<th style="width: 10%; text-align:center;vertical-align:middle;">가입일</th>
					<th style="width: 8%; text-align:center;vertical-align:middle;">사용여부</th>
					<th style="width: 15%; text-align:center;vertical-align:middle;">관리</th>
					
					
				</tr>
			</thead>	
			
			<tbody>
				
				<c:forEach var="itemList" items="${listAll}"  varStatus="stat">

					
					<tr>
					
						<td>
						  ${itemList.NO}
						</td>
						
						<td>
						  ${itemList.MEMBER_ID}
						</td>						
							
						<td>
						  ${itemList.MEMBER_NAME}
						</td>
						
						<td>
						  ${itemList.MEMBER_NICKNAME}
						</td>
						<td>
						  ${itemList.MEMBER_TEL}
						</td>		
						
							
						<td>
						  ${itemList. MEMBER_EMAIL}
						</td>
						
								
						
						<td>
						  ${itemList.MEMBER_JOIN_DATE}
						</td>
						
						
						<td>
						  ${itemList.MEMBER_USERYN}
						</td>
					
					
						
						<td>	
							<a name='Modified'>							
								<input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cog_font_awesome.svg/32px-Cog_font_awesome.svg.png">
								<input type='hidden' name='MEMBER_ID' id='MEMBER_ID' value="${itemList.MEMBER_ID }"></a>
					 	&nbsp;&nbsp;					 	
					 		 <a name='delete'>
					 		 	<input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png">
					 		 	<input type='hidden' name='MEMBER_ID' id='MEMBER_ID' value="${itemList.MEMBER_ID }"></a>
					 		
					 	
					 	</td>
					 	
					 	
					 </tr>				
				</c:forEach>
			</tbody>				
								
		</table>						
	
	
	
	</div>


</div>



	<div class="paging">
	
	${pagingHtml} 
			
		
		

		
	</div>

</div>


<!-- 회원 리스트  선택 햇다 치고

<br/><br/>
<input value="회원 한면을 선택 행을 경우 회원 수정 폼으로 이동" type="button" onclick="location.href='/IMPet/Member/ModifiedForm'"/>
 -->

</body>
</html>