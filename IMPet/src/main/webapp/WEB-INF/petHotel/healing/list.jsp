<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">

function ajaxHealingView(no){
	
	var url1 = "/IMPet/PetHotel/HealingView";
	var formData = { healing_NO : no};
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

function ajaxHealingInsert(){
	
	var url1 = "/IMPet/PetHotel/HealingInsertForm";
	
    $.ajax({
      type : "POST",
      url : url1,
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
	<table>
		<c:forEach var="Healing" items="${list}">
			<tr><td style="width: 30%;">
				<div style="border:1px solid black; width: 100%; height: 220px; float:left;">
					<img alt="s2" src="/IMPet/resources/image/dog1.jpg" style="width: 100%; height: 100%;">
				</div>
			</td>
			<td style="width: 70%;">
				<div style="border:1px solid black; width: 100%; height: 220px; float:left;">
					<h1><a href="javascript:ajaxHealingView(${Healing.HEALING_NO});">힐링 번호 : ${Healing.HEALING_NO} / 힐링 이름 : ${Healing.HEALING_NAME}</a></h1><br/>
					<h2>힐링 소개 : ${Healing.HEALING_DETAIL}</h2><br/>
				</div>
			</td></tr>
		</c:forEach>
	</table>
</div>

<br/><br/>

<div align="center">
<input value="힐링 추가" type="button" onclick="ajaxHealingInsert()"/>
</div>

<br/><br/>