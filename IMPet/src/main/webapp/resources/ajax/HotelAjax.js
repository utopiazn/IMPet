
function ajaxRoom(){

	var url1 = "/IMPet/PetHotel/RoomList"
    $.ajax({
      type : "POST",
      url : url1,
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {
        $('#ContextHotel').html(data);
      }

    });
}

function ajaxRoomView(no){
	
	var url1 = "/IMPet/PetHotel/RoomView";
	var formData = { room_NO : no};
    $.ajax({
      type : "POST",
      url : url1,
      data : formData,
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {  
        $('#ContextHotel').html(data);
      }

    });
}

function ajaxRoomInsertFrom(){
	
	var url1 = "/IMPet/PetHotel/RoomInsertForm";
	
    $.ajax({
      type : "POST",
      url : url1,
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {  
        $('#ContextHotel').html(data);
      }

    });
}

function ajaxRoomInsert(){
	
	var obj = document.Insert;
	
	var url1 = "/IMPet/PetHotel/RoomInsert";
	
	var formData = 
	{ "room_NO" : obj.room_NO.value,
	  "room_Name" : obj.room_Name.value,
	  "room_IMG" : obj.room_IMG.value,
	  "room_Detail" : obj.room_Detail.value,
	  "room_Price" : obj.room_Price.value,
	  "room_Total" : obj.room_Total.value		
	}
	
    $.ajax({
      type : "POST",
      url : url1,
      data : formData,
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {
        $('#ContextHotel').html(data);
      }

    });
}

function ajaxRoomModifyForm(no){
	
	var url1 = "/IMPet/PetHotel/RoomModifyForm";
	
	var formData = {"room_NO" : no}
	
    $.ajax({
      type : "POST",
      url : url1,
      data : formData,
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {
        $('#ContextHotel').html(data);
      }

    });
}

function ajaxRoomModify(){
	
	var obj = document.Modify;
	
	var url1 = "/IMPet/PetHotel/RoomModify";
	
	var formData = 
	{ "room_NO" : obj.room_NO.value,
	  "room_Name" : obj.room_Name.value,
	  "room_IMG" : obj.room_IMG.value,
	  "room_Detail" : obj.room_Detail.value,
	  "room_Price" : obj.room_Price.value,
	  "room_Total" : obj.room_Total.value		
	}
	
    $.ajax({
      type : "POST",
      url : url1,
      data : formData,
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {
        $('#ContextHotel').html(data);
      }

    });
}

function ajaxRoomDelete(no){
	
	var url1 = "/IMPet/PetHotel/RoomDelete";
	
	var formData = {"room_NO" : no}
	
    $.ajax({
      type : "POST",
      url : url1,
      data : formData,
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
	
	var url1 = "/IMPet/PetHotel/HealingList"
    $.ajax({
      type : "POST",
      url : url1,
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {
        $('#ContextHotel').html(data);
      }

    });
}

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
        $('#ContextHotel').html(data);
      }

    });
}

function ajaxHealingInsertFrom(){
	
	var url1 = "/IMPet/PetHotel/HealingInsertForm";
	
    $.ajax({
      type : "POST",
      url : url1,
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {  
        $('#ContextHotel').html(data);
      }

    });
}

function ajaxHealingInsert(){
	
	var obj = document.Insert;
	
	var url1 = "/IMPet/PetHotel/HealingInsert";
	
	var formData = 
	{ "healing_NO" : obj.healing_NO.value,
	  "healing_Name" : obj.healing_Name.value,
	  "healing_Detail" : obj.healing_Detail.value,
	  "healing_Time" : obj.healing_Time.value,
	  "healing_Guide" : obj.healing_Guide.value,
	  "healing_IMG" : obj.healing_IMG.value		
	}
	
    $.ajax({
      type : "POST",
      url : url1,
      data : formData,
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {
        $('#ContextHotel').html(data);
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
        $('#ContextHotel').html(data);
      }

    });
}

function ajaxHealingModify(){
	
	var obj = document.Modify;
	
	var url1 = "/IMPet/PetHotel/HealingModify";
	
	var formData = 
	{ "healing_NO" : obj.healing_NO.value,
	  "healing_Name" : obj.healing_Name.value,
	  "healing_Detail" : obj.healing_Detail.value,
	  "healing_Time" : obj.healing_Time.value,
	  "healing_Guide" : obj.healing_Guide.value,
	  "healing_IMG" : obj.healing_IMG.value		
	}
	
    $.ajax({
      type : "POST",
      url : url1,
      data : formData,
      dataType : "text",
      error : function() {
        alert('오류발생!!');
      },
      success : function(data) {
        $('#ContextHotel').html(data);
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
        $('#ContextHotel').html(data);
      }

    });
}