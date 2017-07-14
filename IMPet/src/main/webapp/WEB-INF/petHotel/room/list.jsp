<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">


</script>

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

</style>
<c:if test="${sessionScope.member_Admin==1 }">
<div align="right">
	<input value="룸 추가" type="button" onclick="ajaxRoomInsertForm()"/>
</div>
</c:if>
<div align="center">
	<table style="width: 100%">
		<c:forEach var="room" items="${list}">
			<tr>
				<!-- <td style="width: 30%;">
					<div style="margin-top: 5px; border:1px solid lightgray; width: 100%; height: 220px; float:left;">
						<img alt="s2" src="/IMPet/resources/image/dog1.jpg" style="width: 100%; height: 100%;">
					</div>
				</td> -->
				
				<td>
					<div class="con">
						<div> <!-- 사진 넣고 사진에도 바로 상세보기 갈 수 있는 링크 넣기 -->
							<img alt="s2" src="/IMPet/resources/image/dog1.jpg" style="padding-left : 8px; width: 30%; height: 100%; float:left; ">
						</div>
						
						<div>
							 <a href="javascript:ajaxRoomView(${room.ROOM_NO});" >
							<%-- 방 번호 : ${room.ROOM_NO} --%>
							 <h3>&nbsp;&nbsp;${room.ROOM_NAME} <br/><br/></h3>
							 &nbsp;&nbsp;가격 : 1박 ${room.ROOM_PRICE}&nbsp;&nbsp;남은 객실 : ${room.ROOM_TOTAL}<br/>
							 &nbsp;&nbsp;${room.ROOM_DETAIL} <br/><br/></a>
							
						 </div>
					</div>
				</td>
				
			</tr>
		</c:forEach>
	</table>
</div>

<br/><br/>

<br/><br/>