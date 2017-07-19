<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.con{
	margin-top: 5px;
    border: 1px solid lightgray;
    width: 100%;
    height: 100%;
    float: left;
    padding-top: 8px;
    padding-bottom: 15px;
    }

.con a:link,
.con a:visited
{
    color: black;
    text-align: center;
    text-decoration: none;
}
.button4{
    display: block;
    margin: 5px 1px;
    height: 30px;
    width: 100px;
    background-color: transparent;
    font-size: 15px;
    font-family: 'Roboto', sans-serif;
    font-weight: 500;
    letter-spacing: 0.5px;
    outline: none;
    cursor: pointer;
    transition: all 0.2s ease;
}
.button4:hover{
  color: #fff;
}

.btn-4{
  border: 2px solid #00B488;
  color: #00B488;
}
.btn-4:hover{
  background-color: #00B488;
}


</style>

<c:if test="${sessionScope.member_Admin==1 }">
<div align="right">
	<input value="+ Add" class="button4 btn-4" type="button" onclick="ajaxHealingInsertForm()"/>
</div>
</c:if>

<div align="center">
	<table style="width: 100%">
		<c:forEach var="Healing" items="${list}">
			<tr>
				<td>
					<div class="con">
						<div>
							<img alt="s2" src="/IMPet/resources/image/hotel/healingImg/${Healing.HEALING_IMG}" onclick="ajaxHealingView(${Healing.HEALING_NO});" style="padding-left : 8px; width: 30%; height: 100%; float:left; ">
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