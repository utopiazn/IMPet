<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<script type="text/javascript">
$(document).ready(function(){
	var fileTarget = $('.boardWrite .upload-hidden');
	
	fileTarget.on('change', function(){// 값이 변경되면
		if(window.FileReader){ // modern browser
			var filename = $(this)[0].files[0].name;
		} else { // old IE
			var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출
		} // 추출한 파일명 삽입
		
		$(this).siblings('.upload-name').val(filename);
	}); 
});
</script>

<div align="center">
	<br/>
	<c:choose>
		<c:when test="${view.HEALING_NO == null}">
			<form id="insertForm" name="Insert" method="post" enctype="multipart/form-data" action="HealingInsert">
			<div style="border: 1px solid lightgray; width: 100%; height: 400px;">
				<div class="resArea" style="width: 50%">
					<h3>Pet Hotel Healing Insert</h3>
					<div class="boardWrite">
						<table border="1" summary="">
						
							<tbody>
								<tr>
									<th scope="row">힐링 번호</th>
									<td><input name="healing_NO" id=healing_NO type="text"/></td>
								</tr>
								<tr>
									<th scope="row">힐링 이름</th>
									<td><input name="healing_Name" type="text"/></td>
								</tr>
								<tr>
									<th scope="row">힐링 이미지</th>
									<td>
									<input class="upload-name" value="이미지선택" disabled="disabled">
									<label for="healing_file">가져오기</label>
									<input id="healing_file" class="upload-hidden" name="healing_IMG" type="file">
									</td>
								</tr>
								<tr>
									<th scope="row">힐링 이용시간</th>
									<td><input name="healing_Time" type="text"/></td>
								</tr>
								
								<tr>
									<th scope="row">힐링 이용안내</th>
									<td><input name="healing_Guide" type="text"/></td>
								</tr>
								
								<tr>
									<th scope="row">힐링 설명</th>
									<td>
									<textarea name="healing_Detail" style="width: 80%; height: 70px;"></textarea>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				
				<div align="center" style="width: 50%; float: inherit; color: gray; border-top: 1px solid lightgray; padding-top: 10px;">
					<input class="button2" value="힐링 추가" type="submit"/>
					<input class="button2" value="뒤로가기" type="button" onclick="ajaxHealing()"/>
				</div>
			</div>
			</form>
		</c:when>
		
		
		<c:otherwise>		
			<form name="Modify" method="post" enctype="multipart/form-data">
			<input name="healing_NO" type="hidden" value="${view.HEALING_NO }"/>
			<input name="healing_IMG" type="hidden" value="${view.HEALING_IMG}">
			<div style="border: 1px solid lightgray; width: 100%; height: 360px;">
				<div class="resArea" style="width: 50%">
					<h3>Pet Hotel Healing Modify</h3>
					<div class="boardWrite">
						<table border="1" summary="">
						
							<tbody>
								<tr>
									<th scope="row">힐링 번호</th>
									<td>${view.HEALING_NO }</td>
								</tr>
								<tr>
									<th scope="row">힐링 이름</th>
									<td><input name="healing_Name" type="text" value="${view.HEALING_NAME }"/></td>
								</tr>
								<tr>
									<th scope="row">힐링 이용시간</th>
									<td><input name="healing_Time" type="text" value="${view.HEALING_TIME }"/> 원</td>
								</tr>
								
								<tr>
									<th scope="row">힐링 이용안내</th>
									<td><input name="healing_Guide" type="text" value="${view.HEALING_GUIDE }"/></td>
								</tr>
								
								<tr>
									<th scope="row">힐링 설명</th>
									<td>
									<textarea name="healing_Detail" style="width: 80%; height: 70px;">${view.HEALING_DETAIL}</textarea>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				
				<div align="center" style="width: 50%; float: inherit; color: gray; border-top: 1px solid lightgray; padding-top: 10px;">
					<input class="button2" value="힐링 수정" type="button" onclick="ajaxHealingModify()"/>
					<input class="button2" value="뒤로가기" type="button" onclick="ajaxHealing()"/>
				</div>
			</div>
			</form>	
		</c:otherwise>
	</c:choose>	
</div>