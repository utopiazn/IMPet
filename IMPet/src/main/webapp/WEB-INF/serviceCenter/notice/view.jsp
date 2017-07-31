<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>공지사항 개별페이지</title>

<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css"
	rel="stylesheet" style="text/css">

<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

.name {
	font-family: 'Noto Sans KR', sans-serif;
	text-align: center;
	font-weight: bolder;
	font-size: 35px;
}

.sub {
	font-family: 'Noto Sans KR', sans-serif;
	text-align: right;
	float: right;
	width: 50%;
	font-size: 20px;
	padding-bottom: 5px;
	font-weight: bolder;
}

.sub2 {
	font-family: 'Noto Sans KR', sans-serif;
	text-align: left;
	float: left;
	width: 100%;
	font-size: 15px;
	padding-bottom: 5px;
}

.con2 {
	font-family: 'Noto Sans KR', sans-serif;
	text-align: center;
	width: 50%;
	margin: 0 auto;
	font-size: 30px;
	padding-bottom: 5px;
	height: 50%;
	padding-top: 10px;
}
</style>

</head>
<body>
	<%-- <div style="height: 1000px;">
			
	<div style="font-size: 25px; font-weight: bolder; text-align: center; width: 100%; ">
		<br/>
		공지사항
		<br/>
		<hr width="80%;" color="lightgray;" size=""> 
		<br/>
		</div>
	
	<div align="right">
            <input class="button2" name="list" type="button" value="목록" onClick="location.href='/IMPet/ServiceCenter/NoticeList'">
    </div>
         
	<div class="name">
 		${view.NOTICE_SUBJECT}
 	</div>
 	
 	<div class="sub2">
 		작성일 : ${view.NOTICE_DATE}
 	</div>
 	<div class="sub2">
 		조회수 : ${view.NOTICE_COUNT}
 	</div>
 	
 	<div style="clear: both;"></div>
 	
 	<div style="width: 50%; margin: 0 auto;">
	 <img alt="s2" src="/IMPet/resources/image/notice/${view.NOTICE_IMG}" style="width: 100%; height: 100%;">
 	</div>
 	
 	<div class="con2">
 	${view.NOTICE_CONTENT}
 	</div>
 	
 	<div>
 	
	<input value="수정" class="button2" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeModifyForm?notice_NO=${view.NOTICE_NO}'"/>
	<input value="삭제" class="button2" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeDelete?notice_NO=${view.NOTICE_NO}'"/> 	
 	</div>

</div>		 --%>

	<div align="right">
		<input class="button2" name="list" type="button" value="목록"
			onclick="location.href='/IMPet/ServiceCenter/NoticeList'" /> <br />
		<br />
	</div>


	<div class="panel panel-default"
		style="font-size: 15px; text-align: center; width: 100%;">
		<div class="panel-heading">공지사항</div>

		<div class="panel-body" style="text-align: left;">

			<div class="form-group" ; style="text-align: center;">
				<h3>- ${view.NOTICE_SUBJECT} -</h3>
			</div>
			<br />
			<br />

			<div class="form-group">
				<label> 내용 </label> ${view.NOTICE_CONTENT}
			</div>

		</div>

	</div>

	<div align=center>
		<input value="수정" class="button2" type="button"
			onclick="location.href='/IMPet/ServiceCenter/NoticeModifyForm?notice_NO=${view.NOTICE_NO}'" />
		<input value="삭제" class="button2" type="button"
			onclick="location.href='/IMPet/ServiceCenter/NoticeDelete?notice_NO=${view.NOTICE_NO}'" />
	</div>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />


</body>

</html>


