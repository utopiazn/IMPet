<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


QnA 내가 쓴 글
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">

	<tr align="center" style="line-height: 3em;">

		<td width="50"><strong>NO</strong></td>
		<td width="350"><strong>제목</strong></td>
		<td width="140"><strong>조회수</strong></td>
		<td width="130"><strong>작성일</strong></td>
	</tr>
	<tr bgcolor="#00B488">
		<td height="2" colspan="5"></td>
	</tr>

	<c:forEach var="QNA" items="${QNAlist}">
		<tr align="center" style="line-height: 3em;">
			<td width="50"><strong>${QNA.QNA_NO}</strong></td>
			<td width="350"><strong><a
					href='/IMPet/ServiceCenter/QuestionView?QnA_NO=${QNA.QNA_NO}'>
					<c:if test="${QNA.QNA_REPLY==1}">[답글]</c:if>
					${QNA.QNA_SUBJECT}</a></strong></td>
			<td width="140"><strong>${QNA.QNA_COUNT}</strong></td>
			<td width="130"><strong>${QNA.QNA_DATE}</strong></td>
		</tr>
		<tr bgcolor="#00B488">
			<td height="1" colspan="4"></td>
		</tr>
	</c:forEach>
</table>

<br><br>
갤러리 내가 쓴 글
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">

	<tr align="center" style="line-height: 3em;">

		<td width="50"><strong>NO</strong></td>
		<td width="350"><strong>제목</strong></td>
		<td width="140"><strong>조회수</strong></td>
		<td width="130"><strong>작성일</strong></td>
	</tr>
	<tr bgcolor="#00B488">
		<td height="2" colspan="5"></td>
	</tr>

	<c:forEach var="GAL" items="${GALlist}">
		<tr align="center" style="line-height: 3em;">
			<td width="50"><strong>${GAL.GALLERY_NO}</strong></td>
			<td width="350"><strong><a
					href='/IMPet/Community/GalleryView?GALLERY_NO=${GAL.GALLERY_NO}'>
					${GAL.GALLERY_SUBJECT}</a></strong></td>
			<td width="140"><strong>${GAL.GALLERY_COUNT}</strong></td>
			<td width="130"><strong>${GAL.GALLERY_DATE}</strong></td>
		</tr>
		<tr bgcolor="#00B488">
			<td height="1" colspan="4"></td>
		</tr>
	</c:forEach>
</table>