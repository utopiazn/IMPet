<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="/IMPet/resources/JQuery/petShop.js" charset="utf-8"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>

 <script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<script>
$(document).ready(function() {
	var link = document.location.href;
	var tab = link.split('Main').pop();

	if(tab == ""){

		$('a[href=#feed]').trigger("click");
		
		
	}else  
	{
		$('a[href$=' + tab + ']').trigger("click");
	}

	$(".my-account li").click(function() {
		alert("!1");
		$(".my-account li").removeClass("selected");

		$(this).addClass("selected");
	}); 
});
</script>

<style>
.account-contentsWrap {
	clear: both;
	width: 100%;
	height: auto;
	overflow: hidden;
	padding-top: 30px;
}

.account-contentsWrap .item-cont {
	width: 1125px;
	height: auto;
	margin: 0 auto;
}

.account-contentsWrap .item-cont dl {
	float: left;
	width: 281px;
}

.account-contentsWrap .item-cont dl dt {
	width: 250px;
	height: 250px;
	border: 1px solid #ececec;
	box-sizing: border-box;
	margin: 0 auto;
}

.account-contentsWrap .item-cont dl dt img {
	width: 100%;
}

.account-contentsWrap .item-cont dl dd {
	width: 250px;
	height: 75px;
	margin: 0 auto;
}

.account-contentsWrap .item-cont dl dd ul {
	margin: 5px 0 5px 10px;
	padding: 0px !important;
}

.account-contentsWrap .item-cont dl dd ul li.prd-name {
	list-style: none;
	color: #7d7d7d;
	line-height: 20px;
	width: 100%;
	height: 55px; /* overflow:hidden; */
}

.account-contentsWrap .item-cont dl dd ul li.prd-price {
	width: 100%;
	height: 20px;
	position: relative;
	list-style: none;
}

.account-contentsWrap .item-cont dl:nth-child(4n) {
	width: 250px !important;
}

.account-contentsWrap h2 {
	text-align: left;
}

.my-account .clear {
	 padding-left: 0px;
	border: 1px;
}

.my-account ul li {
	float: left;
	box-sizing: border-box;
	
	display:inline-block;
    font-variant:small-caps;
    font-size:.9em;
    padding:5px;
    text-align:center;
    width:20%;
    line-height:1.8em;
    font-weight:700;
    border-radius:3px 3px 0 0;
 
    color:#777;
    border:1px solid #ccc;
    border-width:1px 1px 1px 1px;
}

.selected { background:#ccc }





.my-account ul li a {
	text-decoration: none;
}

	.clear:after {
		content: ".";
		height: 0;
		font-size: 0;
		visibility: hidden;
		display: block;
		clear: both;
	}
	.clear {
		display: inline-block;
		
	}
	* html .clear {
		height: 0;
	}
	.clear {
		display: block;
	}

   
		
	}
	.clear-both {
		clear: both;
	}
}
</style>

<div class="personal-account-info container">
	<div class="my-account row" style="margin-top: 5%;">
		<ul class="clear">
			<li class="tabs"><a href="#feed" onclick="javascript:tab(0)">사료</a></li>
			<li class="tabs"><a href="#snack" onclick="javascript:tab(1)">간식</a></li>
			<li class="tabs"><a href="#clothing"	onclick="javascript:tab(2)">의류</a></li>
			<li class="tabs"><a href="#toy" onclick="javascript:tab(3)">장난감</a></li>		
			<li class="tabs"><a href="#stuff" onclick="javascript:tab(4)">잡화 </a></li>
		</ul>
	</div>
	
	<div id="account-contentsWrap" class="account-contentsWrap">
		
	</div>
</div>

