<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div style="width:100%;   margin-top: 5px; height:800px;">
	<div align="center" style="width:100%; height:100%;">
	
		<div style="width:100%; height:80%;">
		<img alt="s2" src="/IMPet/resources/image/hotel/healingImg/${view.HEALING_IMG}" style="width: 100%; height: 100%;">
		</div>
		
		<div align="center" style="width:100%; height:19%;">
			<div style="float: left; ">
			<img alt="healing" src="/IMPet/resources/image/hotel/healingImg/healing.png">		
			</div>
			
			<div style="float: left;">
			<div style="font-size: 15px; font-weight: bolder; padding-top: 20px; line-height: 3em;"> ${view.HEALING_NAME}<br/></div>
			<div>${view.HEALING_DETAIL}</div>
			<div>${view.HEALING_TIME}</div>
			<div>${view.HEALING_GUIDE}</div>
			</div>
			
		</div>
	
	</div>
</div>

<div align="center" style="margin-top: 5px; margin-bottom: 5px;">
<c:if test="${sessionScope.member_Admin==1 }">
<input value="힐링 수정" type="button" onclick="ajaxHealingModifyForm(${view.HEALING_NO})"/>
<input value="힐링 삭제" type="button" onclick="ajaxHealingDelete(${view.HEALING_NO})"/>
</c:if>
<input value="뒤로가기" type="button" onclick="ajaxHealing()"/>
</div>
</body>
</html>