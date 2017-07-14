<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>회원 리스트 </title>
<!-- <link href="/IMPet/resources/css/admin/memberList.css" rel="stylesheet" style="text/css">
 -->
 
 <link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/resources/ajax/ajax.js'/>" charset="utf-8"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
<script type="text/javascript">


 
$(document).ready(function(){

	  $("a[name='title']").on("click", function(e){ //제목 
		    e.preventDefault();
	  	
	  		
		    var id =$(this).parent().find("#MEMBER_ID").val()
		    
		    ajaxModifiedFormView(id);
		    
		 	
		});
});	


function ajaxModifiedFormView(memberID){
	
	  

	alert(memberID);     
	
	var dataList =
	{ 
		"MEMBER_ID" : memberID 
	
	}
	

	var url1 = "/IMPet/Member/ModifiedForm";
	alert('오류임wrewrwe!');     	
	
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
					<th style="width: 5%; text-align:center;vertical-align:middle;">번호</th>
					<th style="width: 8%; text-align:center;vertical-align:middle;">ID</th>										
					<th style="width: 7%; text-align:center;vertical-align:middle;">이름</th>
					<th style="width: 7%; text-align:center;vertical-align:middle;">별칭</th>
					<th style="width: 20%; text-align:center;vertical-align:middle;">전화번호 </th>
					<th style="width: 8%; text-align:center;vertical-align:middle;">메일</th>
					<th style="width: 8%; text-align:center;vertical-align:middle;">가입일</th>
					
				</tr>
			</thead>	
			
			<tbody>
				
				<c:forEach var="itemList" items="${listAll}"  varStatus="stat">

					
					<tr>
						<td>	
							<a name='title'>
							
								<input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cog_font_awesome.svg/32px-Cog_font_awesome.svg.png">
								<input type='hidden' name='MEMBER_ID' id='MEMBER_ID' value="${itemList.MEMBER_ID }">
							
							</a>
					 	<td>
					 </tr>				
				</c:forEach>
			</tbody>				
								
		</table>						
	
	
	
	</div>


</div>

</div>

</body>
</html>