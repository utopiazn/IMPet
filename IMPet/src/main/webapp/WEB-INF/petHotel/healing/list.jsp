<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<div align="center">
	<table style="width: 100%">
		<c:forEach var="Healing" items="${list}">
			<tr>
				<td>
					<div class="con">
						<div>
							<img alt="s2" src="/IMPet/resources/image/hotel/healingImg/${Healing.HEALING_IMG}" onclick="ajaxHealingView(${Healing.HEALING_NO});" style="padding-left : 8px; width: 30%; height: 100%; float:left;  cursor: pointer;">
						</div>
						
						<div>
							 <a href="javascript:ajaxHealingView(${Healing.HEALING_NO});" >
							 <h3>&nbsp;&nbsp; ${Healing.HEALING_NAME} <br/><br/></h3>
							 &nbsp;&nbsp;${Healing.HEALING_DETAIL} <br/><br/></a>
						</div>
					</div>
							
				</td>
			</tr>
		</c:forEach>
	</table>
</div>			 					 


<br/><br/>

<br/><br/>