<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>HTML5</title>

<link href="/IMPet/resources/css/tabs/layout.css" rel="stylesheet" style="text/css">
<link href="/IMPet/resources/css/tabs/a.css" rel="stylesheet" style="text/css">
<link href="/IMPet/resources/css/tabs/b.css" rel="stylesheet" style="text/css">
<link href="/IMPet/resources/css/tabs/d.css" rel="stylesheet" style="text/css">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="resources/JQuery/tabs.js" charset="utf-8"></script>


</head>
<body>


<div class="tab_cate">    
	<div class="tabs_area">  
		<ul class="tabs">
			<li><a href="#tab1" class="tab_a1"><span>사료</span></a></li>
			<li><a href="#tab2" class="tab_a2"><span>간식</span></a></li>
		</ul>
	</div>
    
	<div class="tab_container">
		<div class="con_position">
			<div id="tab1" class="tab_content">
				<div class="xans-element- xans-layout xans-layout-category">
					<div class="postion">
				        <ul>
							<li class="pst pst1 xans-record-"><a href="/IMPet/PetHotel/RoomList">roomlist</a></li>
				            <li class="pst pst2 xans-record-"><a href="/pet/goods/goodsCategoryList.dog?goods_category=1">간식</a></li>
				            <li class="pst pst3 xans-record-"><a href="/pet/goods/goodsCategoryList.dog?goods_category=2">패션/의류</a></li>
				            <li class="pst pst4 xans-record-"><a href="/pet/goods/goodsCategoryList.dog?goods_category=3">목줄/야외</a></li>
				            <li class="pst pst5 xans-record-"><a href="/pet/goods/goodsCategoryList.dog?goods_category=4">생활/잡화</a></li>
				        </ul>
					</div>
				</div>
			</div><!--//tab1 끝-->
			
			
			<div id="tab2" class="tab_content">
				<div class="xans-element- xans-layout xans-layout-category">
					<div class="postion">
				        <ul>
							<li class="pst pst1 xans-record-"><a href="/pet/goods/goodsCategoryList.dog?goods_category=0">사1료</a></li>
				            <li class="pst pst2 xans-record-"><a href="/pet/goods/goodsCategoryList.dog?goods_category=1">간1식</a></li>
				            <li class="pst pst3 xans-record-"><a href="/pet/goods/goodsCategoryList.dog?goods_category=2">패1션/의류</a></li>
				            <li class="pst pst4 xans-record-"><a href="/pet/goods/goodsCategoryList.dog?goods_category=3">목1줄/야외</a></li>
				            <li class="pst pst5 xans-record-"><a href="/pet/goods/goodsCategoryList.dog?goods_category=4">생1활/잡화</a></li>
				        </ul>
					</div>
				</div>
			</div><!--//tab1 끝-->

		</div>
	</div>
</div><!--//메뉴 끝-->



</body>
</html>