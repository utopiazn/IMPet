<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>


<meta charset="UTF-8">
<title>서비스센터 메인</title>

<style>
.button3 {
  position: relative;
  padding: 50px 50px;
  border: 2px #00B488 solid;
  float : right;
  color: black;
  cursor: pointer;
  font-family: 'KoPub Batang' sans-serif;
  font-size: 2em;
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
  width: 30%;
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

<br/><br/>

<h1>Service Center</h1>

<br/><br/><br/>

<input class="button3" value="Q&A" type="button" onclick="location.href='/IMPet/ServiceCenter/QuestionList'"/>
<input class="button3" value="FAQ" type="button" onclick="location.href='/IMPet/ServiceCenter/FAQList'"/>
<input class="button3" value="공지사항" type="button" onclick="location.href='/IMPet/ServiceCenter/NoticeList'"/>




<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</body>
</html>