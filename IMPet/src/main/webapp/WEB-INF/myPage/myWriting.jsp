<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">

<div id="dataTables-example_wrapper" class="panel-body">
	<h3>[QnA]내가 쓴 글</h3>
	<table class="table  table-bordered table-hover dataTable no-footer"
				id="dataTables-example" role="grid"
				aria-describedby="dataTables-example_info">
		<thead>
			<tr style="vertical-align:middle; border:1px solid lightgray;">		
				<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">NO</th>
				<th style="width: 20%; text-align:center;vertical-align:middle; border:1px solid lightgray;">제목</th>
				<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">조회수</th>
				<th style="width: 10%; text-align:center;vertical-align:middle; border:1px solid lightgray;">작성일</th>
			</tr>
		</thead>
		
		<c:choose>
		<c:when test="${QNAlist[0] != null}">
		<tbody>
			<c:forEach var="QNA" items="${QNAlist}" >
			<tr style="vertical-align:middle; border:1px solid lightgray;">
				<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
				${QNA.QNA_NO}
				</td> 
				
				<td style="width: 20%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
				<a href='/IMPet/ServiceCenter/QuestionView?QnA_NO=${QNA.QNA_NO}'>
				<c:if test="${QNA.QNA_REPLY==1}">
				<font color=RED>Re : </font>[답글]
				</c:if>
				${QNA.QNA_SUBJECT}</a>
				</td>
				
				<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
				${QNA.QNA_COUNT}
				</td>
				
				<td style="width: 10%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
				${QNA.QNA_DATE}
				</td>
			</tr>
			</c:forEach>
		</tbody>
		</c:when>
		<c:otherwise>
		<tbody>
			<tr style="vertical-align:middle; border:1px solid lightgray;">
				<td colspan="4" style="width: 100%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
				작성한 게시글이 없습니다.
				</td>
			</tr>
		</tbody>		
		</c:otherwise>
		</c:choose>
	</table>
</div>