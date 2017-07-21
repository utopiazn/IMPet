<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">




<!-- 메뉴 시작 -->

<div class="row" style="padding-left:15px;width:100;text-align:left;">    
	<h1 class="page-header">이벤트 수정</h1>
</div>

<div class="row" style="padding-left:15px;width:100;text-align:left;">
	<div class="panel panel-default">
		<div class="panel-heading" >상품수정 페이지입니다. 이미지 확인하십시오</div>
			<div class="panel-body" style=text-align:left;>
				<form action="AdminItemModify" enctype="multipart/form-data" method="post" name="modifyForm" onsubmit="return validateForm()">	
				
				
                        <div class="form-group">
                            <label>제목</label>
                            <input type="text" class="form-control" name="ITEM_REMAINCOUNT"  value="${itemList.ITEM_REMAINCOUNT}" style="width:70%;"/>
                        </div>
                        
                        
                        <div class="form-group">
                            <label>내용</label>
                            <input type="text" class="form-control" name="ITEM_REMAINCOUNT"  value="${itemList.ITEM_REMAINCOUNT}" style="width:70%;"/>
                        </div>
                        
                        <div class="file_input">
                        	이벤트 이미지 <br/>
                        	 
                        	 <c:if test="${!empty itemList.ITEM_IMG}">
                            	<p style="border-bottom: 1px dotted #999;width:203px;">현재 등록된 이미지 :
                            		
                            		<img src="/IMPet/resources/image/itemImg/${itemList.ITEM_IMG}" width="60" height="60" alt="" onerror="this.src='/IMPet/resources/image/noimg_130.gif'" />                      		 
                            		<input type="hidden"  name="ORIGINALIMG" value="${itemList.ITEM_IMG}">
                            		<input type="hidden"  name="ITEM_IMG" value="${itemList.ITEM_IMG}">
                            	</p>
                            </c:if>
                             
                             <label>파일 첨부 
                         
                            <input type="file" name="ITEM_IMG_${itemList.ITEM_IMG}" onchange="javascript:document.getElementById('file_route').value=this.value" >                          
                            </label>
                            <input type="text" readonly="readonly" title="File Route" id="file_route" value="">
                            <p class="help-block">메인상품 이미지 입니다 800x800 사이즈 권장합니다</p>
                            
                     </div>
                       
						<button type="submit" class="btn btn-success">이벤트수정</button>
						<button type="reset" class="btn btn-default">작성취소</button>					
				</form>
			</div>
	</div>
</div>




커뮤니티 이벤트 수정 폼

<br/><br/><br/><br/><br/>

<input value="수정 완료" type="button" onclick="location.href='/IMPet/Community/EventModify'"/> 

<input value="이벤트 리스트 중 한개의 상세보기 이동" type="button" onclick="location.href='/IMPet/Community/EventView'"/> 


