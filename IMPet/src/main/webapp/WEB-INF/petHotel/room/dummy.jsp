<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>HTML5</title>
<script type="text/javascript">
function ajaxRoom(){
    $.ajax({
      type : "POST",
      url : "/IMPet/PetHotel/RoomList",
      dataType : "text",
      error : function() {
        alert('??');
      },
      success : function(data) {
        $('#Context').html(data);
      }

    });
}
</script>
</head>
<body onload="ajaxRoom();">
eee
</body>
</html>