<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">


<div align="center">
	<br/>
	<c:choose>
		<c:when test="${view.HEALING_NO == null}">
			<div class="row" style="padding-left:15px;width:100;text-align:left;">
				
				<form id="insertForm" name="Insert" method="post" enctype="multipart/form-data" action="HealingInsert">
				
				<div class="panel panel-default">
					<div class="panel-heading" >PetHotel Healing 추가 페이지입니다. 이미지 확인하십시오</div>
					
						
					<div class="panel-body" style=text-align:left;>
	                        <div class="form-group">
	                            <label>힐링 번호</label>
	                            <input type="text" class="form-control" name="healing_NO" style="width:40%;"/>
	                        </div>
	                        
	                        
	                        <div class="form-group">
	                            <label>힐링 이름</label>
	                            <input type="text" class="form-control" name="healing_Name" style="width:40%;"/>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>힐링 이용시간</label>
	                            <input type="text" class="form-control" name="healing_Time" style="width:40%;"/>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>힐링 이용안내</label>
	                            <input type="text" class="form-control" name="healing_Guide" style="width:40%;"/>
	                        </div>
	                        
	                        <div class="file_input">
	                        	<b>힐링 이미지</b><br/>
	                        	 
	                             <label>파일 첨부 
	                         
	                            <input type="file" name="healing_IMG" onchange="javascript:document.getElementById('file_route').value=this.value" >                         
	                            </label>
	                            <input type="text" readonly="readonly" title="File Route" id="file_route" value="">
	                            <p class="help-block">객실 이미지 입니다 800x800 사이즈 권장합니다</p>
	                            
	                     	</div>
	                     	
	                     	<div class="form-group">
	                            <label>힐링 설명</label>
	                            <textarea class="form-control" name="healing_Detail" style="width:70%;"></textarea>
	                        </div>
	                 </div>      
				</div>
				<div align="center" style="width: 100%;">
				<input class="button2" value="힐링 추가" type="submit"/>
				<input class="button2" value="뒤로가기" type="button" onclick="ajaxHealing()"/>
				</div>
				</form>
				
			</div>	
		</c:when>
		
		
		<c:otherwise>		
		
			<div class="row" style="padding-left:15px;width:100;text-align:left;">
				
				<form name="Modify" method="post" enctype="multipart/form-data">
				<input name="healing_NO" type="hidden" value="${view.HEALING_NO }"/>
				<input name="healing_IMG" type="hidden" value="${view.HEALING_IMG}">
				<div class="panel panel-default">
					<div class="panel-heading" >PetHotel Healing 수정 페이지입니다. 이미지 확인하십시오</div>
					
						
					<div class="panel-body" style=text-align:left;>
	                        <div class="form-group">
	                            <label>힐링 번호</label><br/>
	                            ${view.HEALING_NO }
	                        </div>
	                        
	                        
	                        <div class="form-group">
	                            <label>힐링 이름</label>
	                            <input type="text" class="form-control" name="healing_Name" value="${view.HEALING_NAME }" style="width:40%;"/>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>힐링 이용시간</label>
	                            <input type="text" class="form-control" name="healing_Time" value="${view.HEALING_TIME }" style="width:40%;"/>
	                        </div>
	                        
	                        <div class="form-group">
	                            <label>힐링 이용안내</label>
	                            <input type="text" class="form-control" name="healing_Guide" value="${view.HEALING_GUIDE }" style="width:40%;"/>
	                        </div>
	                     	
	                     	<div class="form-group">
	                            <label>힐링 설명</label>
	                            <textarea class="form-control" name="healing_Detail" style="width:70%;">${view.HEALING_DETAIL}</textarea>
	                        </div>
	                 </div>      
				</div>
				<div align="center" style="width: 100%;">
				<input class="btn btn-success" value="힐링 수정" type="button" onclick="ajaxHealingModify()"/>
				<input class="btn btn-default"  value="뒤로가기" type="button" onclick="ajaxHealing()"/>
				</div>
				</form>
				
			</div>
		</c:otherwise>
	</c:choose>	
</div>