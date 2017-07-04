<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>


<html lang="ko">
<head>
<link href="/IMPet/resources/css/flexslider.css" rel="stylesheet" style="text/css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="resources/JQuery/jquery.flexslider.js" charset="utf-8"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
<script type="text/javascript">
$(window).load(function() {
	  $('.flexslider').flexslider({
	    animation: "slide"
	  });
	});
	

function ajaxTest1(){
    $.ajax({
      type : "GET",
      url : "/IMPet/PolaDuyu017jsp1",
      dataType : "text",
      error : function() {
        alert('통신실패!!');
      },
      success : function(data) {
        $('#Context').html(data);
      }

    });
}

function ajaxTest2(){
    $.ajax({
      type : "GET",
      url : "/IMPet/PolaDuyu017jsp2",
      dataType : "text",
      error : function() {
        alert('통신실패!!');
      },
      success : function(data) {
        $('#Context').html(data);
      }

    });
}



</script>

<meta charset="UTF-8">
</head>


<body>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>


<input src="/IMPet/resources/image/SkinImg/btn_login.gif" type="image" value="test1" onclick="ajaxTest1();"/>
<input src="/IMPet/resources/image/SkinImg/btn_login.gif" type="image" value="test2" onclick="ajaxTest2();"/>
  <div id="Context">
    test
  </div>








ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>






ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>
ssss<br/>















<br/><br/>

<div class="flexslider" style="width:50%; height: 50%; ">
  <ul class="slides">
    <li>
	  <img src="/IMPet/resources/image/giphy.gif" />
    </li>
    <li>
      <img src="/IMPet/resources/image/sa.gif" />
    </li>

  </ul>
</div>





































</body>





</html>