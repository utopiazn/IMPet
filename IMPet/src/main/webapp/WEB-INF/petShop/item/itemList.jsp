<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>펫샵상품리스트</title>
</head>
<style>
	.main_itemlist {clear:both; width:100%; height:auto; overflow:hidden; padding-top:30px; }
	.main_itemlist .item-cont {width:  1095px;    height: auto;    margin: 0 auto; }
	.main_itemlist .item-cont dl {float:left; width:281px;}
	.main_itemlist .item-cont dl dt {width:250px; height:250px; border:1px solid #ececec; box-sizing:border-box;}
	.main_itemlist .item-cont dl dt img {width:100%;}
	.main_itemlist .item-cont dl dd {width:250px; height:75px; margin-top:15px; margin-bottom:50px;  margin: 0px !important;}
	.main_itemlist .item-cont dl dd ul {margin: 5px 0 5px 10px; padding: 0px !important;}
	.main_itemlist .item-cont dl dd ul li.prd-name {color:#7d7d7d; line-height:20px; width:100%; height:55px; overflow:hidden; }
	.main_itemlist .item-cont dl dd ul li.prd-price {width:100%; height:20px; position:relative;list-style:none;}
	.item-list:nth-child(4){width:250px !important;}


</style>


<script src="<c:url value='/resources/JQuery/tabs_old.js'/>" charset="utf-8"></script>
<body>

펫샵상품리스트

<br/><br/><br/><br/><br/>

<input value="상품상세보기" type="button" onclick="location.href='/IMPet/PetShop/ItemView'"/>
	<div class="main_itemlist">
		
				<div class="item-cont">
				 	<dl class="item-list">
						<dt class="thumb"><a href=""><img class="" src="" alt="상품 섬네일" title="상품 섬네일"></a></dt>
						<dd>
							<ul>
								<li class="prd-name">[네츄라오가닉]  휴대용모빌 겸용 곰돌이딸랑이 1</li>
								<li class="prd-price">
									<span class="prd_priceno">14,800원</span>
									<span class="prd_preview"><a href=""><img src=""></a> </span>
								</li>
							</ul>
						</dd>
					</dl>
				</div>
			</div>
		
</body>
</html>