<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>공지사항 개별페이지</title>

<style>
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
</style>

</head>
<body>

<div>
<table width="700" border="0" cellspacing="0" cellpadding="2" align="center">

<tr>
  			<td align="center"><h2>NOTICE * 공지사항 </h2>
  			<br/>
  			</td>
  		</tr>
  		<tr>
  			<td height="20"></td>
  		</tr>
  		  <tr>
          <td align="right">
            <input class="button3" name="list" type="button" value="목록" onClick="location.href='/IMPet/ServiceCenter/NoticeList'">
          </td>
        </tr>
  	</table>
  	
<table width="700" border="0" cellspacing="0" cellpadding="0" align="center">

<tr bgcolor="#00B488">
        <td height="1" colspan="5"></td>
      </tr>
      
      <tr>
        <td bgcolor="#00B488"><font color="white">  번호 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp; ${view.NOTICE_NO}
        </td>
      </tr>
      <tr bgcolor="#777777">
        <td height="1" colspan="5"></td>	
      </tr>
      
      <tr>
        <td bgcolor="#00B488"><font color="white">  제목 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp; ${view.NOTICE_SUBJECT}
        </td>
      </tr>
      <tr bgcolor="#777777">
        <td height="1" colspan="5"></td>	
      </tr>
      
      <tr>
        <td bgcolor="#00B488"><font color="white">  내용 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp; ${view.NOTICE_CONTENT}
        </td>
      </tr>
      <tr bgcolor="#777777">
        <td height="1" colspan="5"></td>	
      </tr>
      
      <tr>
        <td bgcolor="#00B488"><font color="white">  조회수 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp; ${view.NOTICE_COUNT}
        </td>
      </tr>
      <tr bgcolor="#777777">
        <td height="1" colspan="5"></td>	
      </tr>
      
      <tr>
        <td bgcolor="#00B488"><font color="white">  작성일 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp; ${view.NOTICE_DATE}
        </td>
      </tr>
      <tr bgcolor="#777777">
        <td height="1" colspan="5"></td>	
      </tr>
      
<%--             <h2>공지사항 번호 : ${view.NOTICE_NO}</h2><br/>
			<h2>공지사항 제목 : ${view.NOTICE_SUBJECT}</h2><br/>
			<h2>공지사항 내용 : ${view.NOTICE_CONTENT}</h2><br/>
			<h2>공지사항 이미지 : ${view.NOTICE_IMG}</h2><br/>
			<h2>공지사항 조회수 : ${view.NOTICE_COUNT}</h2><br/>
			<h2>공지사항 작성일 : ${view.NOTICE_DATE}</h2><br/> --%>
</table>


<table width="700" border="0" cellspacing="0" cellpadding="2" align="center">
<tr>
<td>
<input value="삭제" class="button3" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeDelete?notice_NO=${view.NOTICE_NO}'"/>

<input value="수정" class="button3" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeModifyForm?notice_NO=${view.NOTICE_NO}'"/>
</td>
</tr>

</table>
</div>

</body>

</html>


