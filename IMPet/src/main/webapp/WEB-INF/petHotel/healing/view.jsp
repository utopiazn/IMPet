<%@ page contentType="text/html; charset=UTF-8" %>

<script type="text/javascript">

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

function ajaxHealingModifyForm(no){
	
	var url1 = "/IMPet/PetHotel/HealingModifyForm";
	
	var formData = {"healing_NO" : no}
	
    $.ajax({
      type : "POST",
      url : url1,
      data : formData,
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {
        $('#Context').html(data);
      }

    });
}

function ajaxHealingDelete(no){
	
	var url1 = "/IMPet/PetHotel/HealingDelete";
	
	var formData = {"healing_NO" : no}
	
    $.ajax({
      type : "POST",
      url : url1,
      data : formData,
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

<div align="center">
<table border="1">
<tr><td>
<h1>방 번호 : ${view.HEALING_NO} / 방 이름 : ${view.HEALING_NAME}</h1><br/>
<h2>방 소개 : ${view.HEALING_DETAIL}</h2><br/>
</td></tr>
</table>
</div>

<div align="center">
<input value="힐링 수정" type="button" onclick="ajaxHealingModifyForm(${view.HEALING_NO})"/>
<input value="힐링 삭제" type="button" onclick="ajaxHealingDelete(${view.HEALING_NO})"/>
<input value="힐링 리스트" type="button" onclick="ajaxhealing()"/>
</div>
</body>
</html>