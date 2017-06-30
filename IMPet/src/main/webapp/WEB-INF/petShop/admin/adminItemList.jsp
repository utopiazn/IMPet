<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 


<!DOCTYPE html>
<html lang=ko>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/resources/ajax/ajax.js'/>" charset="utf-8"></script>
<script type="text/javascript">

fn_selectList(1);

function fn_selectList(pageNo){
    var comAjax = new ComAjax();
    comAjax.setUrl("<c:url value='AdminItemList' />");
    comAjax.setCallback("fn_selectListCallback");
    comAjax.addParam("PAGE_INDEX",pageNo);
    comAjax.addParam("PAGE_ROW", 10);
    comAjax.ajax();
}

function fn_selectListCallback(data){
	
	var total = data.TOTAL;
	var body = $("#div");
	body.empty();
	if(total == 0){
		var str = "<tr>" + 
						"<td colspan='4'>조회된 결과가 없습니다.</td>" + 
					"</tr>";
		body.append(str);
	}
	else{
		var params = {
			divId : "PAGE_NAVI",
			pageIndex : "PAGE_INDEX", 
			pageRow : 10,
			totalCount : total,
			eventName : "fn_selectList"
		};
		gfn_renderPaging(params);
		
		var str = "";
		$.each(data.list, function(key, value){
			str +=  
				/* "<tr>" + 
						"<td>" + value.ITEM_NO + "</td>" + 
						 "<td class='title'>" +
							"<a href='#this' name='title'>" + value.ITEM_NAME + "</a>" +
							"<input type='hidden' name='IDX' id='IDX' value=" + value.ITEM_NO + ">" + 
							
						"</td>" +
						"<td>" + value.ITEM_IMG + "</td>" + 
						"<td>" + value.ITEM_PRICE + "</td>" +  
					"</tr>";   */ 					
		"<div class='main_itemlist'>" + 
			"<div class='item-cont'>" +
			 	"<dl class='item-list'>" +
					"<dt class='humb'><a href=''><img class= src= alt='상품 섬네일' title='상품 섬네일'>"+value.ITEM_IMG+"</a></dt>" +
					"<dd>" +
						"<ul>" +
							"<li class='prd-name'>" + value.ITEM_NAME + " </li>" +
							"<li class='prd-price'> " +
								"<span class='prd_priceno'> " + value.ITEM_PRICE + "</span>" +
								"<span class='prd_preview'><a href=''><img src=''></a> </span>" +
							"</li>" +
						"<ul>" +
					"<dd>" +
				"</dl>" +
			"</div>" +
		"</div>";
		});
		body.append(str);
		 
		$("a[name='title']").on("click", function(e){ //제목 
			e.preventDefault();
			fn_openBoardDetail($(this));
		});
	}
}

</script>
<head>
<meta charset="UTF-8">
<title>관리자상품리스트</title>
</head>
<body>
<div id="div">
<%-- <table align="center" >
        <colgroup>
            <col width="10%"/>
        </colgroup>
        <thead>
            <tr align="center">
                <th scope="col">글번호</th>
                 <th scope="col">아이템 이름</th>
                   <th scope="col">아이템 이미지</th>
                   
                    <th scope="col">아이템 가겨</th>
            </tr>
        </thead>
        <tbody>
           
        </tbody>
</table> --%>
관리자상품리스트
</div>
  <div id="PAGE_NAVI"></div>
    <input type="hidden" id="PAGE_INDEX" name="PAGE_INDEX"/>
<br/><br/>
<input value="관리자 상품 추가폼" type="button" onclick="location.href='/IMPet/PetShop/AdminItemWriteForm'"/>
<input value="관리자 상품 수정폼" type="button" onclick="location.href='/IMPet/PetShop/AdminItemModifyForm'"/>
<input value="관리자 상품 삭제" type="button" onclick="location.href='/IMPet/PetShop/AdminItemDelete'"/>

</body>
</html>