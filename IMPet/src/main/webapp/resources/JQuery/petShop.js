// JavaScript Document
	

/*	$(function() {
		$(".tab_content").hide();
		$(".tab_content:first").show();

		$(".my-account row li").click(function() {
			$(".my-account row li").removeClass("selected");

			$(this).addClass("selected");
		});
	});*/

	$(document).ready(function() {
		var link = document.location.href;
		var tab = link.split('Main').pop();
	
		$('a[href$=' + tab + ']').trigger("click");
		
	});

	function tab(num) {
		
		$.ajax({
			url :  "/IMPet/PetShop/ItemList",
			type : "get",
			dataType : "text",      
			data : { 
				isSearch : num
			},
			success : function(data) {

				$("#account-contentsWrap").html(data);

			}
		});

		return false;
	};
	
	
