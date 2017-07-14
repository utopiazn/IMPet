<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>

 <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="/IMPet/resources/JQuery/petShop.js" charset="utf-8"></script>
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

.account-nav {
	display: block;
}

.my-account ul li {
	width: 20%;
	float: left;
	border-right: 1px solid #ccc;
	box-sizing: border-box;
}

.my-account ul li:last-child {
	border-right: none !important;
}

.my-account ul li a {
	text-decoration: none;
}

@media ( max-width : 767px) {
	.account-nav ul li {
		width: 25%;
		float: left;
		border: 1px solid #000;
		margin-right: -1px;
		margin-bottom: -1px;
		border-radius: 0 !important;
		padding: 5px 0;
	}
	.account-nav ul li.m-1 {
		margin-left: -1px;
	}
	.account-nav ul li.xx {
		width: 33.333%;
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
	.clear-both {
		clear: both;
	}
}
</style>

<div class="personal-account-info container">
	<div class="my-account row">
		<ul class="clear">
			<li class=" col-sm-3 xx"><a href="#feed" onclick="javascript:tab(0)">사료 <em class="badge badge-point"></em></a></li>
			<li class="col-sm-3 xx"><a href="#snack" onclick="javascript:tab(1)">간식</a></li>
			<li class="col-sm-3 xx m-1"><a href="#clothing"	onclick="javascript:tab(2)">의류<span></span></a></li>
			<li class=" col-sm-3"><a href="#toy" onclick="javascript:tab(3)">장난감<em class="badge badge-point"></em></a></li>		
			<li class=" col-sm-3"><a href="#stuff" onclick="javascript:tab(4)">잡화 <em class="badge">${newAlarm }</em></a>
			</li>
		</ul>

	</div>
	<div id="account-contentsWrap" class="account-contentsWrap">
		
	</div>
</div>
<script>
	$(".account-individual-list tr.brief").click(function() {
		$(this).next().toggle();
	});
</script>