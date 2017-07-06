<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>HTML5</title>

<link href="/IMPet/resources/css/tabs/layout.css" rel="stylesheet" style="text/css">
<link href="/IMPet/resources/css/tabs/a.css" rel="stylesheet" style="text/css">
<link href="/IMPet/resources/css/tabs/b.css" rel="stylesheet" style="text/css">
<link href="/IMPet/resources/css/tabs/d.css" rel="stylesheet" style="text/css">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="resources/JQuery/tabs.js" charset="utf-8"></script>

<script type="text/javascript">
function ajaxTest(){
	
	alert('test시작');
	
    $.ajax({
      type : "POST",
      url : "/IMPet/PolaDuyu017Tabs",
      dataType : "text",
      error : function() {
        alert('test실패');
      },
      success : function(data) {
    	 alert('test성공');
    	 $('#Context').html(data);
      }

    });
}
</script>

</head>

<body>
div 바깥<br/>
<input type="button" value="test" onclick="ajaxTest();"/>
<br/><br/>

<div id="Context">
div 안쪽

</div>


</body>
</html>