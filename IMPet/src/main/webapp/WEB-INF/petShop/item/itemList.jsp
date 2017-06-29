<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>펫샵상품리스트</title>
</head>
<style>
	.main_itemlist {clear:both; width:100%; height:auto; overflow:hidden; padding-top:30px; }
	.main_itemlist .item-cont {width:1200px; height:auto; overflow:hidden; }
	.main_itemlist .item-cont dl {float:left; width:281px;}
	.main_itemlist .item-cont dl dt {width:250px; height:250px; overflow:hidden; border:1px solid #ececec; box-sizing:border-box;}
	.main_itemlist .item-cont dl dt img {width:100%;}
	.main_itemlist .item-cont dl dd {width:250px; height:75px; border-left:1px solid #ececec; margin-top:15px; margin-bottom:50px; }
	.main_itemlist .item-cont dl dd ul {margin: 5px 0 5px 10px;}
	.main_itemlist .item-cont dl dd ul li.prd-name {color:#7d7d7d; line-height:20px; width:100%; height:55px; overflow:hidden; }
	.main_itemlist .item-cont dl dd ul li.prd-price {width:100%; height:20px; position:relative;}
</style>
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
							<li class="prd-name">[네츄라오가닉]  휴대용모빌 겸용 곰돌이딸랑이 </li>
							<li class="prd-price">
								<span class="prd_priceno">14,800원</span>
								<span class="prd_preview"><a href=""><img src=""></a> </span>
							</li>
						</ul>
					</dd>
				</dt>
			</dl>
		</div>
	<div>

</body>
</html>