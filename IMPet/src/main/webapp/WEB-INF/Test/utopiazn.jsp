<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>

	<meta charset="UTF-8">
	<title>tab example</title>


<style>

#comments ul {
    list-style: none;
    padding-left: 0;
}

.under_content .box {
    clear: both;
    margin-bottom: 2.5em;
}

.accent_header, h2.under_content {
    color: #000000;
    border-top: 2px solid #000000;
    border-bottom: 2px solid #000000;
}
under_content h2 {
    font-size: 1.2em;
    padding: 9px 0 8px;
    margin-bottom: 20px;
}

.accent_header {
    clear: both;
    font-weight: bold;
    text-align: center;
    line-height: 1.4;
}

#comments ul li {
    max-width: 668px;
    margin: 10px auto 30px;
}

#comments .combody {
    background-color: #ececfa;
    padding: 20px 15px 5px;
    margin-bottom: 5px;
}


#comments p.cominfo {
    text-align: right;
    font-size: .8em;
    padding-right: 5px;
}

.box {
    overflow: hidden;
}

.under_content li, .side li {
    line-height: 1.4;
    margin-bottom: 13px;
}


</style>
  
</head>

<body>



<p>
	<label>댓글</label> <br/>
	<textarea id="comment" name="comment" cols="45" rows="8" maxlength="65525" aria-required="true" required="required"></textarea> 
</p>
	<button type="button" class="btn1 btn-primary1" onclick="onComment()">입력</button>

<div id="comments" class="box">
	
	<h2 class="under_content accent_header">댓글 남기기</h2>

	<ul>
		<li class="compost" id="comment-46">
		
			<div class="combody">
				<p>감사합니다 참고해서 사용해볼까해요 ㅠㅠ 감사해요!!</p>
			</div>
			
			<p class="cominfo">
				by 뉴뉴뉴　2017년 4월 20일  2:06 오후	</p>
		</li>
		

	</ul>

	
</div>




</body>
</html>