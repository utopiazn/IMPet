<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<div>
	<div style="float: left; width:70%; height:500px; margin-top: 10px;">
	<img alt="s2" src="/IMPet/resources/image/hotel/healingImg/${view.HEALING_IMG}" style="width: 100%; height: 100%;">
	</div>
	<div style="float:left; width:29%; height:500px; margin-top: 10px;">
		<div>
				<div align="left" style="padding-left: 15px;">
					<br/>
					<font size="6px" style="font-weight: bolder;"> ${view.HEALING_NAME}</font><br/>
					<font size="5px" style="border-bottom: 1px solid lightgray;"> ${view.HEALING_TIME}</font><br/>
				</div>
				
				<div align="left" style="margin-bottom:10px;">
					<br/>
					&nbsp;&nbsp;&nbsp;${view.HEALING_GUIDE}
				</div>
		</div>
	
	</div>
</div>	

<div>
	<div style="float: left; width: 100%; border:1px solid lightgray; margin-top: 10px;" >
		<div style="float: left;">
			<img alt="healing" src="/IMPet/resources/image/hotel/healingImg/healing.png">		
		</div>
			
		<div style="float: left; padding-top: 35px; ">
			&nbsp;&nbsp;${view.HEALING_DETAIL}<br/>
		</div>
	</div>
	
	<div align="right" style="float: right; width:100%; margin-top: 10px;">
		<c:if test="${sessionScope.member_Admin==1 }">
		<input value="힐링 수정" class="button2" type="button" onclick="ajaxHealingModifyForm(${view.HEALING_NO})"/>
		<input value="힐링 삭제" class="button2" type="button" onclick="ajaxHealingDelete(${view.HEALING_NO})"/>
		</c:if>
		<input value="목록으로" class="button2" type="button" onclick="ajaxHealing()"/>
	</div>
</div>