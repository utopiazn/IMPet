<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>HotelMain</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>

<script type="text/javascript">

function ajaxRoom(){
    $.ajax({
      type : "POST",
      url : "/IMPet/PetHotel/RoomList",
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {
        $('#Context').html(data);
      }

    });
}

function ajaxHealing(){
    $.ajax({
      type : "POST",
      url : "/IMPet/PetHotel/HealingList",
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {
        $('#Context').html(data);
      }

    });
}

</script>
</head>
<body>

<br/><br/>

<div align="center">
	<div style="border: 1px solid black; width: 49.8%; float: left;">
		<input src="/IMPet/resources/image/SkinImg/room.bmp" type="image" value="RoomList" onclick="ajaxRoom();" style="width: 100%; height: 70px;"/>  
	</div>
	
	<div style="border: 1px solid black; width: 49.8%; float: left;">
		<input src="/IMPet/resources/image/SkinImg/healing.bmp" type="image" value="HealingList" onclick="ajaxHealing();"  style="width: 100%; height: 70px;"/>
	</div>
	
	<div id="Context" align="center" style="border: 1px solid black; width:99.8%;  float: left;">
		<div>
			<img alt="s2" src="/IMPet/resources/image/dog1.jpg" style="width: 100%; height: 600px">
		</div>
	</div>
</div>

&nbsp;

</body>
</html>