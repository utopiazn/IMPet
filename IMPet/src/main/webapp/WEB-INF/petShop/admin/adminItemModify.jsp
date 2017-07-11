<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
<script type="text/javascript">
window.onload = function(){
	var code ="${itemList.ITEM_TYPE}"
	for(var i=0; i<5; i++){
	    if(document.modifyForm.goods_category.options[i].value == code){
	        document.modifyForm.goods_category.options[i].selected = true;
	        break;
	    }
	}
}

function validateForm() {
    var x = document.forms["joinform"]["ITEM_NAME"].value;
    if (x == null || x == "") {
        alert("상품명은 입력해야합니다");
        return false;
    }
}
</script>
</head>

<!-- 메뉴 시작 -->

<div class="row" style="padding-left:15px;width:100;text-align:left;">    
	<h1 class="page-header">상품수정</h1>
</div>

<div class="row" style="padding-left:15px;width:100;text-align:left;">
	<div class="panel panel-default">
		<div class="panel-heading" >상품수정 페이지입니다. 이미지 확인하십시오</div>
			<div class="panel-body" style=text-align:left;>
				<form action="AdminItemModify" enctype="multipart/form-data" method="post" name="modifyForm" onsubmit="return validateForm()">	
				<input type="hidden" name="ITEM_NO" value="${itemList.ITEM_NO}">	
							
						<div class="form-group">
                            <label>카테고리</label>	                            
                              <select name="ITEM_TYPE" class="form-control" style="width:initial;" >
								<option value="0" label="사료" />
								<option value="1" label="간식" />
								<option value="2" label="패션의류" />
								<option value="3" label="목줄/야외" />
								<option value="4" label="생활/잡화" />
							</select>
                        </div>
                        <div class="form-group">
                            <label>상품명</label>
                            <input type="text" class="form-control" name="ITEM_NAME" value="${itemList.ITEM_NAME}" style="width:500px;"/>
                        </div>
                        
                         
                        
                        <div class="file_input">
                        	메인 상품 이미지 <br/>
                        	 <c:if test="${!empty itemList.ITEM_IMG}">
                            	<p style="border-bottom: 1px dotted #999;width:203px;">현재 등록된 이미지 : <img src="/IMPet/resources/image/itemImg/${itemList.ITEM_IMG}" width="60" height="60" alt="" onerror="this.src='/IMPet/resources/image/noimg_130.gif'" />
                            	<input type="hidden"  name="ORIGINALIMG" value="${itemList.ITEM_IMG}">
                            	<input type="hidden"  name="ITEM_IMG" value="${itemList.ITEM_IMG}"></p>
                            </c:if>
                             <label>파일 첨부 
                           <!--  <input type="file" name="ITEM_BASKETIMG" size="30" value='' class="fileBtn"/> -->
                            <input type="file" name="ITEM_IMG_${itemList.ITEM_IMG}" onchange="javascript:document.getElementById('file_route').value=this.value" >                          
                            </label>
                            <input type="text" readonly="readonly" title="File Route" id="file_route" value="">
                            <p class="help-block">메인상품 이미지 입니다 800x800 사이즈 권장합니다</p>
                            
                        </div>
                        <div class="form-group">
                            <label>재고수량</label>
                            <input type="text" class="form-control" name="ITEM_REMAINCOUNT"  value="${itemList.ITEM_REMAINCOUNT}" style="width:107px;"/>
                        </div>
                        <div class="form-group">
                            <label>판매가격</label>
                            <input type="text" class="form-control" value="${itemList.ITEM_PRICE}" name="ITEM_PRICE" style="width:initial;"/>
                            <p class="help-block">판매가격 입력하세요. 0원으로 그대로 갈 경우 큰일납니다</p>
                        </div>
                        
                       <div class="file_input">
                        	메인 상품 이미지 <br/>
                        	<c:if test="${!empty itemList.ITEM_DETAILIMG}">
                            	<p style="border-bottom: 1px dotted #999;width:203px;">현재 등록된 이미지 : <img src="/IMPet/resources/image/itemImg/${itemList.ITEM_DETAILIMG}" width="60" height="60" alt="" onerror="this.src='/IMPet/resources/image/noimg_130.gif'" />
                            	<input type="hidden" name="ORIGINALIMG" value="${itemList.ITEM_DETAILIMG}">
                            	<input type="hidden" name="ITEM_DETAILIMG" value="${itemList.ITEM_DETAILIMG}"></p>
                            </c:if>
                             <label>파일 첨부 
                          		 <!--  <input type="file" name="ITEM_BASKETIMG" size="30" value='' class="fileBtn"/> -->                         
                          		  <input type="file" name="ITEM_DETAILIMG_${itemList.ITEM_DETAILIMG}" onchange="javascript:document.getElementById('file_route1').value=this.value" >                          
                            </label>
                          		  <input type="text" readonly="readonly" title="File Route" id="file_route1" value="">
                            <p class="help-block">상품설명 이미지 입니다 1000x(2500~3800)사이즈 권장</p>
                        </div>
                         
                        
                           <div class="file_input">
                        	배송 내용 이미지 <br/>
                        	 <c:if test="${!empty itemList.ITEM_BASKETIMG}">
                            	<p style="border-bottom: 1px dotted #999;width:203px;">현재 등록된 이미지 : <img src="/IMPet/resources/image/itemImg/${itemList.ITEM_BASKETIMG}" width="60" height="60" alt="" onerror="this.src='/IMPet/resources/image/noimg_130.gif'" />
                            	<input type="hidden" name="ORIGINALIMG" value="${itemList.ITEM_BASKETIMG}">
                            	<input type="hidden" name="ITEM_BASKETIMG" value="${itemList.ITEM_BASKETIMG}"></p>
                            </c:if>
                            <label>파일 첨부 
                           <!--  <input type="file" name="ITEM_BASKETIMG" size="30" value='' class="fileBtn"/> -->
                            <input type="file" name="ITEM_BASKETIMG_${itemList.ITEM_BASKETIMG}" onchange="javascript:document.getElementById('file_route2').value=this.value" >                          
                            </label>
                            <input type="text" readonly="readonly" title="File Route" id="file_route2" value="">
                            <p class="help-block">배송 상품  이미지 입니다 1000x1000사이즈 권장</p>
                        </div>
						<button type="submit" class="btn btn-success">상품수정</button>
						<button type="reset" class="btn btn-default">작성취소</button>					
				</form>
			</div>
	</div>
</div>


