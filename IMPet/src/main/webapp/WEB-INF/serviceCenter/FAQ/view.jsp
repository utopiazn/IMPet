<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>
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
	width: 50%;
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

<meta charset="UTF-8">
<title>자주묻는질문 개별페이지</title>
</head>
<body>
	<%-- <div style="height: 1000px;">

	<div style="font-size: 25px; font-weight: bolder; text-align: center; width: 100%; ">
		<br/>
		FAQ
		<br/>
		<hr width="80%;" color="lightgray;" size=""> 
		<br/>
	</div>
		
	<div align="right">
            <input class="button2" name="list" type="button" value="목록"  onclick="location.href='/IMPet/ServiceCenter/FAQList'"/>
    </div>
		
	<div class="name">
 	${view.FAQ_SUBJECT}
 	</div>
 	
 	<div class="con2">
 	${view.FAQ_CONTENT}
 	</div>
 	
 	<div>
 	<br/><br/><br/><br/><br/>
	<input value="수정" class="button2" type="button" onclick="location.href='/IMPet/ServiceCenter/FAQModifyForm?FAQ_NO=${view.FAQ_NO}'"/>
	<input value="삭제" class="button2" type="button" onclick="location.href='/IMPet/ServiceCenter/FAQDelete?FAQ_NO=${view.FAQ_NO}'"/> 	
 	</div>
 	
 
</div>		
 --%>



		<div align="right">
			<input class="button2" name="list" type="button" value="목록"
				onclick="location.href='/IMPet/ServiceCenter/FAQList'" />
		<br/><br/>
		</div>
		

		<div class="panel panel-default"
			style="font-size: 15px; text-align: center; width: 100%;">
			<div class="panel-heading">FAQ</div>

			<div class="panel-body" style="text-align: left;">
			
				<div class="form-group"; style="text-align: center;">
					<h3>- ${view.FAQ_SUBJECT} - </h3>
					</div>
					<br /><br />
					<div class="form-group">
						<label> 내용 </label> ${view.FAQ_CONTENT}
					</div>
					
					</div>
							
					</div>
					
<div align=center>
<input value="수정" class="button2" type="button"
		onclick="location.href='/IMPet/ServiceCenter/FAQModifyForm?FAQ_NO=${view.FAQ_NO}'" />
	<input value="삭제" class="button2" type="button"
		onclick="location.href='/IMPet/ServiceCenter/FAQDelete?FAQ_NO=${view.FAQ_NO}'" />
</div>

<br /><br /><br /><br /><br /><br />






</body>

</html>

