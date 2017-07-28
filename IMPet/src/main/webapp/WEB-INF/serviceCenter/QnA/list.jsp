<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>


<html lang="ko">
<head>
<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">

<meta charset="UTF-8">
<title>QnA 리스트</title>

<style>
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

.button3 {
	position: relative;
	padding: 1px 0;
	border: 2px #00B488 solid;
	float: right;
	color: black;
	cursor: pointer;
	font-family: 'KoPub Batang' sans-serif;
	font-size: .9em;
	text-transform: uppercase;
	transition: color 0.4s, background-color 0.4s;
	display: inline-block;
	vertical-align: middle;
	line-height: 1em;
	outline: none;
	text-align: center;
	text-decoration: none;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	width: 10%;
	background-color: white;
	height: 30px;
}

.button3:hover, .button3:focus {
	transition: color 0.4s, background-color 0.4s;
	color: white;
	text-decoration: none;
	background-color: #00B488;
}

table a{
text-decoration: none;
color: black;

}


	* html .clear{height:0;}
	.clear{display:block;}
	.clear-both{clear:both;}
	.select{color:red;}
	.inner{width: 895px; margin: 0 auto; }
	.img{text-align: left; }
	.comment td{text-align: center; vertical-align: middle; font-size: 15px;     padding: 5px 0px; border-bottom: 1px dotted #e1e1e1; }
	.comment th{font-size: 15px;     padding: 5px 0px;     border-top: 1px dotted #e1e1e1;    border-bottom: 1px dotted #e1e1e1;    background: #f2f2f2;} 
	.link{text-align: left;    border-bottom: 1px solid #e1e1e1;    width: 885px;    margin: 0 auto;}


</style>

</head>

<body>


<div align="center" style="height: 500px;">

	<div style="font-size: 25px; font-weight: bolder; text-align: center; width: 100%; ">
		<br/>
		QnA
		<br/>
		<hr width="80%;" color="lightgray;" size=""> 
		<br/>
	</div>

	<div align="right" width="100%">
	<c:if test="${sessionScope.member_ID != null }">
	<input value="글쓰기" class="button2" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionInsertForm'"/><br/></c:if>

	<form class="commentForm" method="post" style="width: 100%; padding-top: 10px;">
		<table class="comment" style="width: 100%;">
			<colgroup>
				<col width="10%">
				<col width="">
				<col width="20%">
				<col width="10%">
				<col width="20%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">조회수</th>
					<th scope="col">작성일</th>
				</tr>
			</thead>									 
			<c:forEach var="QNA" items="${list}">					
				<tr>
					<td>${QNA.QNA_NO}</td>
					<td style="text-align: left !important; " class="title">
						<a href='/IMPet/ServiceCenter/QuestionView?QnA_NO=${QNA.QNA_NO}'>
						<c:if test="${QNA.QNA_REPLY==1}"><font color=RED>Re : </font>[답글]</c:if>${QNA.QNA_SUBJECT}</a></td>
					<td>${QNA.MEMBER_ID}</td>
					<td>${QNA.QNA_COUNT}</td>
					<td>${QNA.QNA_DATE}</td>
				</tr>			
			</c:forEach>
		</table>
	</form>
	</div>
</div>
</body>
</html>

<%-- 
	<div align="center">
		<div style="font-size: 25px; font-weight: bolder; text-align: center; width: 100%; ">
		<br/>
		QnA
		<br/>
		<hr width="80%;" color="lightgray;" size=""> 
		<br/>
		</div>
		<div align="right" width="100%">			
			<c:if test="${sessionScope.member_ID != null }">
			<input value="글쓰기" class="button3" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionInsertForm'"/> <br/>
			</c:if>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">				
				<tr align="center" style="line-height: 3em;">
					<td width="50"><strong>NO</strong></td>
					<td width="350"><strong>제목</strong></td>
					<td width="120"><strong>작성자</strong></td>
					<td width="140"><strong>조회수</strong></td>
					<td width="130"><strong>작성일</strong></td>
				</tr>				
				<tr bgcolor="#00B488">
					<td height="2" colspan="5"></td>
				</tr>
				<c:forEach var="QNA" items="${list}">
					<tr align="center" style="line-height: 3em;">
						<td width="50"><strong>${QNA.QNA_NO}</strong></td>
						<td width="350"><strong>
						<a href='/IMPet/ServiceCenter/QuestionView?QnA_NO=${QNA.QNA_NO}'>
						<c:if test="${QNA.QNA_REPLY==1}"><font color=RED>Re : </font>[답글]</c:if>
						${QNA.QNA_SUBJECT}</a></strong></td>
						<td width="120"><strong>${QNA.MEMBER_ID}</strong></td>
						<td width="140"><strong>${QNA.QNA_COUNT}</strong></td>
						<td width="130"><strong>${QNA.QNA_DATE}</strong></td>
					</tr>				
				<tr bgcolor="#00B488">
					<td height="1" colspan="5"></td>
				</tr>
				</c:forEach>
			</table>
		</div>		
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
</body>
</html> --%>