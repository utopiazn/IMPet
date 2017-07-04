<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>HTML5</title>
</head>
<body>
<script type="text/javascript">
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
</script>
<div style="border:1px solid black;">
test2입니다.
<input src="/IMPet/resources/image/SkinImg/btn_login.gif" type="image" value="test1" onclick="ajaxTest1();"/>
</div>




</body>
</html>