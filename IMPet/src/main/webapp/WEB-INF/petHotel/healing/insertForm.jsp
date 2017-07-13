<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div align="center">
	<br/>
	<c:choose>
		<c:when test="${view.HEALING_NO == null}">
			
			힐링시설을 추가할때
			<form name="Insert" method="post">
				healing_NO : <input name="healing_NO" type="text"/>
				healing_Name : <input name="healing_Name" type="text"/><br/>
				healing_Detail : <input name="healing_Detail" type="text"/><br/>
				healing_Time : <input name="healing_Time" type="text"/><br/>
				healing_Guide : <input name="healing_Guide" type="text"/><br/>
				healing_IMG : <input name="healing_IMG" type="text"/><br/>
				
				<input value="힐링 추가" type="button" onclick="ajaxHealingInsert();"/>
			</form>
		</c:when>
		
		
		<c:otherwise>
		
			힐링시설을 수정할때
			<form name="Modify" method="post">
				healing_NO : ${view.HEALING_NO } <input name="healing_NO" type="hidden" value="${view.HEALING_NO }"/><br/>
				healing_Name : <input name="healing_Name" type="text" value="${view.HEALING_NAME }"/><br/>
				healing_Detail : <input name="healing_Detail" type="text" value="${view.HEALING_DETAIL}"/><br/>
				healing_Time : <input name="healing_Time" type="text" value="${view.HEALING_TIME }"/><br/>
				healing_Guide : <input name="healing_Guide" type="text" value="${view.HEALING_GUIDE }"/><br/>
				healing_IMG : <input name="healing_IMG" type="text" value="${view.HEALING_IMG }"/><br/>
				
				<input value="힐링 수정" type="button" onclick="ajaxHealingModify();"/>
			</form>
		</c:otherwise>
	</c:choose>
</div>