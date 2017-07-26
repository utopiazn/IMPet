<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<div class="res" align="center">
	<h3>QnA 내가 쓴 글</h3>
	<table style="border:1px solid lightgray;" class="haha">
		<thead>
			<tr style="vertical-align:middle; border:1px solid lightgray;">		
				<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">NO</th>
				<th style="width: 20%; text-align:center;vertical-align:middle; border:1px solid lightgray;">제목</th>
				<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">조회수</th>
				<th style="width: 10%; text-align:center;vertical-align:middle; border:1px solid lightgray;">작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="QNA" items="${QNAlist}" >
			<tr style="vertical-align:middle; border:1px solid lightgray;">
				<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
				${QNA.QNA_NO}
				</td> 
				
				<td style="width: 20%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
				<a href='/IMPet/ServiceCenter/QuestionView?QnA_NO=${QNA.QNA_NO}'>
				<c:if test="${QNA.QNA_REPLY==1}">[답글]</c:if>
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
	</table>
</div>

<br><br>
<div class="res" align="center">
	<h3>갤러리 내가 쓴 글</h3>
	<table style="border:1px solid lightgray;">
		<thead>
			<tr style="vertical-align:middle; border:1px solid lightgray;">		
				<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">NO</th>
				<th style="width: 20%; text-align:center;vertical-align:middle; border:1px solid lightgray;">제목</th>
				<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">조회수</th>
				<th style="width: 10%; text-align:center;vertical-align:middle; border:1px solid lightgray;">작성일</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="GAL" items="${GALlist}">
			<tr style="vertical-align:middle; border:1px solid lightgray;">
				<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
				${GAL.GALLERY_NO}
				</td>
				
				<td style="width: 20%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
				<a href='/IMPet/Community/GalleryView?GALLERY_NO=${GAL.GALLERY_NO}'>
				${GAL.GALLERY_SUBJECT}</a>
				</td>
				
				<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
				${GAL.GALLERY_COUNT}
				</td>
				
				<td style="width: 10%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
				${GAL.GALLERY_DATE}
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>