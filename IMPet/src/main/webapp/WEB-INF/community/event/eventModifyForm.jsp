<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">




<!-- 메뉴 시작 -->

<div class="row" style="padding-left:15px;width:100;text-align:left;">    
	<h1 class="page-header">이벤트 수정</h1>
</div>


	<form action="/IMPet/Community/EventModify" enctype="multipart/form-data" method="post" name="modifyForm" onsubmit="return validateForm()">	
<div class="row" style="padding-left:15px;width:100;text-align:left;">
	<div class="panel panel-default">
		<div class="panel-heading" >상품수정 페이지입니다. 이미지 확인하십시오</div>
			<div class="panel-body" style=text-align:left;>
			
				
						<input type="hidden" name="EVENT_NO" value="${view.EVENT_NO}"/>
				 
                        <div class="form-group">
                            <label>제목</label>
                            <input type="text" class="form-control" name="EVENT_SUBJECT"  value="${view.EVENT_SUBJECT}" style="width:70%;"/>
                        </div>
                        

                        
                        <div class="form-group">
                            <label>설명</label>
                            <input type="text" class="form-control" name="EVENT_CONTENT"  value="${view.EVENT_CONTENT}" style="width:70%;"/>
                        </div>
                        
                            
                        <div class="form-group">
                            <label>이벤트 기간</label>
                            <input type="text" class="form-control" name="EVENT_TIME"  value="${view.EVENT_TIME}" style="width:70%;"/>
                        </div>
                        
                        <div class="file_input">
                        	이벤트 이미지 <br/>
                        	 
                        	 <c:if test="${!empty view.EVENT_IMG}">
                            	<p style="border-bottom: 1px dotted #999;width:203px;">현재 등록된 이미지 :
                            		
                            		<img src="/IMPet/resources/image/event/${view.EVENT_IMG}" width="60" height="60" alt="" onerror="this.src='/IMPet/resources/image/noimg_130.gif'" />                      		 
                            		<input type="hidden"  name="ORIGINALIMG" value="${view.EVENT_IMG}">
                            		<input type="hidden"  name="EVENT_IMG" value="${view.EVENT_IMG}">
                            	</p>
                            </c:if>
                             
                             <label>파일 첨부 
                         
                            <input type="file" name="EVENT_IMG_${view.EVENT_IMG}" onchange="javascript:document.getElementById('file_route').value=this.value" >                          
                            </label>
                            <input type="text" readonly="readonly" title="File Route" id="file_route" value="">
                            <p class="help-block">메인상품 이미지 입니다 800x800 사이즈 권장합니다</p>
                            
                     </div>
                     
                     	 <c:if test="${ADMIN eq '1'}">
                            	<input type="hidden"  name="ADMIN" value="${ADMIN}">
                            	xxxxxxxxxxxxxxxxxxxxx
                          </c:if>
                     
                       
				
			</div>
			
				
	</div>
	
</div>  

	<button type="submit" class="btn btn-success">이벤트수정</button>
					<button type="reset" class="btn btn-default">작성취소</button>					
				
</form>


<!-- 
커뮤니티 이벤트 수정 폼

<br/><br/><br/><br/><br/>

<input value="수정 완료" type="button" onclick="location.href='/IMPet/Community/EventModify'"/> 

<input value="이벤트 리스트 중 한개의 상세보기 이동" type="button" onclick="location.href='/IMPet/Community/EventView'"/> 
 -->

