<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html lang=ko>
<script type="text/javascript">
function fn_selecList(pageNo){
    var comAjax = new ComAjax();
    comAjax.setUrl("<c:url value='AdminItemList' />");
    comAjax.setCallback("fn_selectListCallback");
    comAjax.addParam("PAGE_INDEX",pageNo);
    comAjax.addParam("PAGE_ROW", 10);
    comAjax.ajax();
}

function fn_selectListCallback(data){
	
	var total = data.TOTAL;
	var body = $("body");
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
			str += "<tr>" + 
						"<td>" + value.ITEM_NO + "</td>" + 
						/* "<td class='title'>" +
							"<a href='#this' name='title'>" + value.ITEM_NAME + "</a>" +
							"<input type='hidden' name='IDX' id='IDX' value=" + value.IDX + ">" + 
							
						"</td>" +
						"<td>" + value.HIT_CNT + "</td>" + 
						"<td>" + value.CREA_DTM + "</td>" +  */
					"</tr>";
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

관리자상품리스트

  <div id="PAGE_NAVI"></div>
    <input type="hidden" id="PAGE_INDEX" name="PAGE_INDEX"/>
<br/><br/>
<input value="관리자 상품 추가폼" type="button" onclick="location.href='/IMPet/PetShop/AdminItemWriteForm'"/>
<input value="관리자 상품 수정폼" type="button" onclick="location.href='/IMPet/PetShop/AdminItemModifyForm'"/>
<input value="관리자 상품 삭제" type="button" onclick="location.href='/IMPet/PetShop/AdminItemDelete'"/>

</body>
</html>