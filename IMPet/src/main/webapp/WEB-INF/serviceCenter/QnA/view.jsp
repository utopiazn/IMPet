<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>


<html lang="ko">
<head>
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css"
	rel="stylesheet" style="text/css">

<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

.name{
  font-family: 'Noto Sans KR', sans-serif;
  text-align: center;
  font-weight: bolder;
  font-size: 35px;

}
.sub{
  font-family: 'Noto Sans KR', sans-serif;
  text-align: right;
  float: right;
  width: 50%;	
  font-size: 20px;
  padding-bottom: 5px;
  font-weight: bolder;
  
}
.sub2{
  font-family: 'Noto Sans KR', sans-serif;
  text-align: left;
  float: left;
  width: 50%;	
  font-size: 15px;
  padding-bottom: 5px;
}
.con2{
  font-family: 'Noto Sans KR', sans-serif;
  text-align: center;
  width: 50%;	
  margin: 0 auto;
  font-size: 25px;
  padding-bottom: 5px;
  height: 50%;
}


</style>

<meta charset="UTF-8">
<title>QnA 개별페이지</title>
</head>
<body>

<%-- <div style="height: 1200px;">

	<div style="font-size: 25px; font-weight: bolder; text-align: center; width: 100%; ">
		<br/>
		QnA
		<br/>
		<hr width="80%;" color="lightgray;" size=""> 
		<br/>
		</div>
	
	<div align="right">
            <input class="button2" name="list" type="button" value="목록" onclick="location.href='/IMPet/ServiceCenter/QuestionList'"/>
    </div>
    	
	<div class="name">
 		${view.QNA_SUBJECT}
 	</div>
 	
 	<div class="sub">
 		${view.MEMBER_ID}
 	</div>
 	<div class="sub2">
 		작성일 : ${view.QNA_DATE}
 	</div>
 	<div class="sub2">
 		조회수 : ${view.QNA_COUNT}
 	</div>
 	
 	<div style="clear: both;"></div>
 	
 	<div style="width: 50%; margin: 0 auto;">
	 ${view.QNA_IMG}
 	</div>
 	
 	<div class="con2">
 	${view.QNA_CONTENT}
 	</div>
 	
 	<div>
 	<br/><br/><br/><br/><br/>
	<input value="답글" class="button2" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionInsertFormRef?QnA_Reply=${view.QNA_REPLY}&QnA_Ref=${view.QNA_REF}'"/>
	<input value="수정" class="button2" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionModifyForm?QnA_NO=${view.QNA_NO}'"/>
	<input value="삭제" class="button2" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionDelete?QnA_NO=${view.QNA_NO}'"/> 	
 	</div>
 	

</div>			 --%>


<div align="right">
			<input class="button2" name="list" type="button" value="목록"
				onclick="location.href='/IMPet/ServiceCenter/QuestionList'" />
		<br/><br/>
		</div>
		

		<div class="panel panel-default"
			style="font-size: 15px; text-align: center; width: 100%;">
			<div class="panel-heading">QnA</div>

			<div class="panel-body" style="text-align: left;">
			
				<div class="form-group"; style="text-align: center;">
					<h3>- <c:if test="${view.QNA_REPLY==1}"><font color=RED>Re : </font>[답글]</c:if>${view.QNA_SUBJECT} - </h3>
					</div>
					<br /><br />
					
					<div class="form-group">
						<label> ID:</label> ${view.MEMBER_ID}
					</div>
					<div class="form-group">
						<label> 작성일 :</label> ${view.QNA_DATE}
					</div>
					<div class="form-group">
						<label> 조회수 :</label> ${view.QNA_COUNT}
					</div>
					
					<div class="form-group">
						<label> 내용 :</label> ${view.QNA_CONTENT}
					</div>
					
					</div>
							
					</div>
					
<div align=center>
	<c:choose>
	
	<c:when test="${sessionScope.member_Admin == 1}">
	<c:if test="${view.QNA_REPLY!=1}">
	<input value="답글" class="button2" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionInsertFormRef?QnA_Reply=${view.QNA_REPLY}&QnA_Ref=${view.QNA_REF}'"/>
	</c:if>
	<input value="삭제" class="button2" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionDelete?QnA_NO=${view.QNA_NO}'"/>
	</c:when>
	<c:when test="${sessionScope.member_ID eq view.MEMBER_ID}">
	<input value="수정" class="button2" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionModifyForm?QnA_NO=${view.QNA_NO}'"/>
	<input value="삭제" class="button2" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionDelete?QnA_NO=${view.QNA_NO}'"/> 	
 	</c:when>
 	</c:choose>
</div>


<br /><br /><br /><br /><br />			

</body>

</html>