<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>


<html lang="ko">
<head>

<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
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
        $('#ContextHotel').html(data);
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
        $('#ContextHotel').html(data);
      }

    });
}
</script>
</head>
<body>


<ul class="nav nav-pills">
  <li role="presentation"><a href="javascript:ajaxRoom();">Room</a></li>
  <li role="presentation"><a href="javascript:ajaxHealing();">Healing</a></li>
</ul>

------------------------------

<div id="ContextHotel">
aa
</div>

</body>

</html>