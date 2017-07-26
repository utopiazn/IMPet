<%@page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.1.0.js"></script>
<!-- <link href="/pet/resources/admincss/bootstrap.min.css" rel="stylesheet">
<link href="/pet/resources/css/reset.css" rel="stylesheet">
<link href="/pet/resources/admincss/sb-admin-2.css" rel="stylesheet"> --> 

<style>
	table{border-collapse:collapse;}
	.category_top{height: 80px;}
	.category_top ul{float: right;}
	.category_top ul li{padding: 0 0 0 0; margin: 0 0 0 5px; color: #999; font-size: 11px; letter-spacing: 0px; float: left;}
	.item_imagedetail{float: left;    width: 364px;}
	.infoarea{    margin: 0 0px 0 0px;    padding: 0 0 6px;}
	.infoarea h3{margin: 10px 0 20px;    padding: 0 0 5px;    font-size: 30px;    font-family: "Malgun Gothic","Gulim","Tahoma","Verdana","Arial","sans-serif";    color: #1c1c1c;    font-weight: bold;width: 420px;    text-overflow: ellipsis;    -o-text-overflow: ellipsis;    overflow: hidden;    white-space: nowrap;    word-wrap: normal !important;    display: block;    line-height: 30px;}
	.product_ex{clear: both; margin-top:50px; }
	.itemform{float: left;     margin-left: 100px; text-align: left; }
	.custom{text-decoration: line-through;    color: #999;    font-size: 23px;  text-align: left; }
	.custom2{color: #ff140a;    font-family: Verdana,Geneva,sans-serif;    font-weight: bold;    font-size: 38px;  text-align: left;     display: inline-block;    line-height: 27px;    height: 27px;    margin: -5px 0 0px;    vertical-align: middle;}
	td .quantity {display: inline-block;    position: relative;    width: 50px;    vertical-align: top;}
	td .quantity input {    width: 29px;    height: 20px;    padding: 0 2px 0 3px;    line-height: 23px;    border: 1px solid #d4d8d9;    border-radius: 3px 0 0 3px;}
	td .quantity .down {position: absolute;    left: 35px;    top: 12px;}
	td .quantity .up {position: absolute;    left: 35px;    top: 1px; }
	.left {padding: 9px;}
	.right{width: 1125px; height: 100%; font-family:'Noto sans KR', sans-serif; color: #353535; vertical-align: middle; text-align: center; margin: 0 auto; clear: both; line-height: 18px; vertical-align: middle; word-wrap: break-word; word-break: break-all; padding: 9px 0;}
	.info{   margin-top: 45px; font-size: 11px;    color: #f65b54;    line-height: 14px;}
	.totalProducts{border-top: 1px solid #e1e1e1;    border-bottom: 1px solid #e1e1e1; border-collapse:collapse;}
	.totalProducts span{width: 266px;    text-overflow: ellipsis;    -o-text-overflow: ellipsis;    overflow: hidden;    white-space: nowrap;    word-wrap: normal !important;    display: block;    line-height: 30px;}
	.total{    color: #ff140a;}
	.main_itemView{    width: 960px;    margin: 0 auto;}
	.clear:after{content:".";height:0;font-size:0;visibility:hidden;display:block;clear:both;}
	.clear{display:inline-block;}
	
	* html .clear{height:0;}
	.clear{display:block;}
	.clear-both{clear:both;}
</style>
<script type="text/javascript">

	//숫자,표시 함수
	var funcSetCurrency = function($) {		
		$('span,p.custom,.custom').each(
				function() {
					if (!isNaN(Number($(this).text())) && $(this).text())
						$(this).text(
								Number($(this).text()).toLocaleString().split('.')[0]);
				});
		
	};

/* 	$(document).ready(function() {
		funcSetCurrency($);
	}); */
	
	//구매갯수 변환 함수
	function count_change(temp){
		var test=document.itemform.amount.value;	
		var price = null
			if("${view.ITEM_DCPRICE}" != ""){
				price="${view.ITEM_DCPRICE}";
			}
			else {
				price="${view.ITEM_PRICE}";//숫자계산위해필요
			}

			if(temp==0){
				test++;
			}else if(temp==1){
				if(test >1 ) test--;
			}
		if(test>"${view.ITEM_REMAINCOUNT}"){
			alert("잔여수량만큼 구매하세요");
			test=1;
		}
		
		document.itemform.amount.value=test;
		var value2 = $("#span1").html(addComma(price*test)); //숫자계산위해필요
	    var value3 = $("em").html(addComma(price*test));//숫자계산위해필요
	    var value4 = $("#am2").html("("+test+"개)");//숫자계산위해필요
	}
	
	//span값변경
	$(window).load(function(){ 
	    var amount=document.itemform.amount.value;
		var price = null;
	    if("${view.ITEM_DCPRICE}" != ""){
			price="${view.ITEM_DCPRICE}";
		}
		else {
			price="${view.ITEM_PRICE}";//숫자계산위해필요
		}
	    var value2 = $("#span1").html(price*amount); 
	    var value3 = $("em").html(price*amount);
	    var value4 = $("#am2").html("("+amount+"개)"); 
	    
	     $('em, #span1').each(
				function() {
					if (!isNaN(Number($(this).text())) && $(this).text())
						$(this).text(
								Number($(this).text()).toLocaleString().split('.')[0]);
				}); 
	   
	}); 
	
	 function addComma(x) {

		   return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
	
	//장바구니 처리
	var onBasket = function(){
		var num="${view.ITEM_NO}";
		var amount = document.itemform.amount.value;
		var id = "${sessionScope.member_ID}";
		if(id == ""){
			alert("로그인 후 이용이 가능합니다.");
			location.href = '/IMPet/Member/LoginForm';
		}
		else {
			location.href = '/IMPet/PetShop/BasketInsert?ITEM_NO='+num+'&BASKET_BUYCOUNT='+amount+'&MEMBER_ID='+id;
		}
	};
		
	//주문처리
    var onOrder = function(){
         
        var num="${view.ITEM_NO}";
        var amount = document.itemform.amount.value;
        var id = "${sessionScope.member_ID}";
        
    
		if(id == ""){
			alert("로그인 후 이용이 가능합니다.");
			location.href = '/IMPet/Member/LoginForm';
		}
		else {
     	   location.href = '/IMPet/PetShop/OrderFormD?ITEM_NO='+num+'&BASKET_BUYCOUNT='+amount+'&MEMBER_ID='+id;
		}
    };
      

    var rate = 1;

    function rateup(n){
    	rate = n;
    }

    $( document ).ready(function() {
			
    	funcSetCurrency($);
    	 $( ".star_rating a" ).click(function() {
    	     $(this).parent().children("a").removeClass("on");
    	     $(this).addClass("on").prevAll("a").addClass("on");
    	     return false;
    	 });
    	});
    
    //코멘트 처리
    var onComment = function(){
  		var form = $('.commentForm')[0];
			  		
  		var data1 = { 	ITEM_NO : form.ITEM_NO.value,
  						MEMBER_ID : form.MEMBER_ID.value,
  						REVIEW_IMG : form.REVIEW_IMG.value,
  						REVIEW_STAR : rate,
  						REVIEW_SUBJECT : form.REVIEW_SUBJECT.value,
  						REVIEW_CONTENT : form.REVIEW_CONTENT.value
  						};
  		var url1 = "/IMPet/PetShop/ItemComment";
  		
  	    $.ajax({    
  	      type : "POST",
  	      url : url1,
  	      dataType : "text",
  	      data : data1,
  	      error : function() {
  	    	  
  	    	 alert('오류임!');     	
  	      },
  	      success : function(data) {  
  	    	 $('body').html(data);
  	        		
  	      }
  	      
  	    });    
  		
  	};
  	
  	$(document).ready(function(){
  		//<a href="#this" id="test" >테스트</a> 에서 id부분을 #test로 표시하여 id 클릭시 fn_test 이벤트가 발생함.
  		  $("#btn btnC_01 btnP_02").on("click", function(e){ 
  		       e.preventDefault();
  		       fn_ajax();
  		   });	  
  	});	

  	// 이 Function 이벤트는 모두 <a 태그로 작성하여 써야함.(input type="button"/ input type="submit")
  	function fn_ajax(a, b){
		  
	var url1 = "/IMPet/PetShop/ItemCommentDelete";
	
    $.ajax({    
      type : "POST",
      url : url1,
      dataType : "text",
      data : {REVIEW_NO : a, ITEM_NO : b},
      error : function() {
    	  
    	 alert('오류임!');     	
      },
      success : function(data) {  
    	 $('body').html(data);
        		
      }
      
    });    
   
}
	 	
</script>


<style type="text/css"> 
	.review_explanation ul {
    	list-style:none !important;
    	overflow:auto !important;
	}

	.review_explanation li {
  		display:inline !important;
    	float: left !important;
	}
	
	.btn1 {
    	display: inline-block;
    	vertical-align: middle;
    	text-align: center;
    	overflow: visible;
	}
	
	.btn1 {
    	width: 80px;
    	height: 70px;
	}
	
	.btn-primary1 {
    	color: #fff;
   		background-color: #2a2e33;
    	border-color: #2a2e33;
	}
	
	button {
  		cursor: pointer;
	}

	.review_grp {
   		margin-top: 50px;
    	margin-bottom: 77px;
	}
	
	.review_grp .review_view .review_title .btn {
    	position: absolute;
    	top: 50%;
    	right: 0;
    	margin-top: 14px;
    	width: 30px;
	}
	

.star_rating {font-size:0; letter-spacing:-4px;}
.star_rating a {
    font-size:22px;
    letter-spacing:0;
    display:inline-block;
    margin-left:5px;
    color:#ccc;
    text-decoration:none;
}
.star_rating a:first-child {margin-left:0;}
.star_rating a.on {color:#777;}


	
</style>

</head>


<body>

	<!-- /* 카테고리 표시부분 */ -->
	<div class="category_top">
	<ul>
	 	<c:if test="${view.ITEM_TYPE eq 0}">
			<li>펫샵 ></li><li class="post2">사료</li>
		</c:if>
		<c:if test="${view.ITEM_TYPE eq 1}">
			<li>펫샵 ></li><li class="post2">간식</li>
		</c:if>	
		<c:if test="${view.ITEM_TYPE eq 2}">
			<li>펫샵 ></li><li class="post2">의류</li>
		</c:if>	
		<c:if test="${view.ITEM_TYPE eq 3}">
			<li>펫샵 ></li><li class="post2">장난감</li>
		</c:if>		
		<c:if test="${view.ITEM_TYPE eq 4}">
			<li>펫샵 ></li><li class="post2">잡화</li>
		</c:if>		
	</ul>
	</div>
	
	<!-- /* 상품이미지 및 주문하기 */ -->
	<div class="main_itemView clear">
		<!-- 메인이미지영역 -->
		<div class="item_image">
			<div class="item_imagedetail">
				<img src="/IMPet/resources/image/itemImg/${view.ITEM_IMG}" onerror="this.src='/IMPet/resources/image/test/noimg_130.gif'" />
			</div>
		</div>
		<form name="itemform" action="#" method="post" class="itemform">
			<!-- 상세정보및 주문 영역 -->
			<div class="infoarea">
				
		            <h3>${view.ITEM_NAME}</h3>
				<div class="price" align="left">
		
					<c:if test="${view.ITEM_DCPRICE != null}">
					<p class="custom"><del><font color="gray"><fmt:formatNumber value="${view.ITEM_PRICE}" type="number"/>원</font></del></p>
					<p class="custom2">
						<font color="red"><span id="price">${view.ITEM_DCPRICE}</span>원</font>
					</p>
					</c:if>
					<c:if test="${view.ITEM_DCPRICE == null}">
					<p class="custom"></p>
					<p>
						<span id="price">${view.ITEM_PRICE}</span>원
					</p>
					</c:if>
				</div>
				<div id="totalProducts">
					<p class="info "><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/ico_information.gif" alt="" />
						수량을 선택해주세요.
					</p>
					<table summary="" >
						
						<colgroup>
							<col style="width: 284px;" />
							
							<col style="width: 110px;" />
						</colgroup>
						<tbody class="">
							<tr>
								<td class="left totalProducts" ><span>${view.ITEM_NAME}</span></td>
								
								
								<td class="totalProducts"><p class="quantity" style="margin: 0; padding: 0;">
									<input type="text" name="amount" class="quantity_opt" value="1" style="text-align: center; ime-mode:Disabled;" onkeypress="checknum()" readonly  />
									<a href="JavaScript:count_change(0)"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_count_up.gif" alt="수량증가" class="up" /></a>
	                            	<a href="JavaScript:count_change(1)"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_count_down.gif" alt="수량감소" class="down" /></a>
									
								</td>
								
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="3" style="text-align:right; font-size: 12px; padding: 25px 0px; "><strong>총 상품금액</strong>(수량) : <span class="total" style="font-size: 14px; "><strong><em>555</em>원&nbsp;</strong><span id="am2">(${BASKET_BUYCOUNT}개)</span></span></td>
							</tr>
						</tfoot>
					</table>
				</div>
				<div class="cartbuy">
					<div class="img_on" style="text-align:right;">
						<!-- 잔여수량이 0 이면 솔드아웃 처리 -->
						<c:if test="${view.ITEM_REMAINCOUNT > 0 }">						
						<a href="JavaScript:onOrder()"><img src="http://okidogki.com/web/upload/goodymall15/layout/btn_prdOrder.gif" alt="바로 구매하기"></a>
						<a href="JavaScript:onBasket()"><img src="http://okidogki.com/web/upload/goodymall15/layout/btn_basket.gif" alt="장바구니 담기"></a> 
						</c:if>
						
						<c:if test="${view.ITEM_REMAINCOUNT <= 0 }">
						<img src="http://ppoya.co.kr/images/btn_soldout.gif" alt="품절">						
						</c:if>
					</div>
				</div>
			</div>
		</form>	
	</div>
	<!-- 상세정보및 주문 영역 마감///-->
	<!-- 상품정보 -->
	<div class="product_ex">
		<div id="preDetail">
			<ul class="link">
				<img src="/IMPet/resources/image/test/detail_14tit.jpg" alt="상품정보">
				&nbsp;<br/>
			</ul>
			<div class="de_detail">
				<p align="center"><img src="/IMPet/resources/image/itemImg/${view.ITEM_DETAILIMG}"></p>
			</div>
		</div>
		<div id="preDetail">
			<ul class="link">
				<img src="/IMPet/resources/image/test/detail_17tit.jpg" alt="배송정보">
			</ul>
			<div class="de_detail">
				<p align="center"><img src="/IMPet/resources/image/itemImg/${view.ITEM_BASKETIMG}"></p>
			</div>
		</div>
	</div>











<div id="wrapper">
	<div id="page-wrapper">

		 
	<!-- 코멘트 달기 -->
	<div class="inner">
		<!-- review_grp -->
		<form class="commentForm" method="post">
		<input type="hidden" name="ITEM_NO" value="${view.ITEM_NO}"/>
		<input type="hidden" name="MEMBER_ID" value="${sessionScope.member_ID}"/>
		<input type="hidden" name="REVIEW_IMG" value="1"/>
	
				<div class="review_grp">
					<div class="review_form">
				
						<div class="review_write">
							
							<!-- 로그인전 -->
							<c:if test="${sessionScope.member_ID == null}">
                  				<input type="text" style="align:center; margin: 10px; width: 850px; height: 55px;" value="로그인 후에  댓글 작성이 가능합니다." readonly="readonly"/>
	      	 				</c:if>
	      	 				
	      	 				<!-- 로그인후 -->
	      	 				<c:if test="${sessionScope.member_ID != null}">

								<p class="star_rating" id="star_rating" style="width: 300px;">
								    <a href="#" onclick="rateup(1);" class="on">★</a>
								    <a href="#" onclick="rateup(2);" >★</a>
								    <a href="#" onclick="rateup(3);" >★</a>
								    <a href="#" onclick="rateup(4);" >★</a>
								    <a href="#" onclick="rateup(5);" >★</a>
								</p>
						
								<div class="REVIEW_CONTENT" style="width: 900px; margin-left: 160px;" align="left">
									<div>
										<input type="text" name="REVIEW_SUBJECT" placeholder="제목을 입력하세요" maxlength="15" style="margin-left: 10px;"/> &nbsp;작성자 : ${sessionScope.member_ID}
										<p class="star_rating" id="star_rating" style="width: 250px;">
										    <a href="#" onclick="rateup(1);" class="on">★</a>
										    <a href="#" onclick="rateup(2);" >★</a>
										    <a href="#" onclick="rateup(3);" >★</a>
										    <a href="#" onclick="rateup(4);" >★</a>
										    <a href="#" onclick="rateup(5);" >★</a>
										</p>
									</div>
									
									<textarea name="REVIEW_CONTENT" style="margin: 10px; width: 700px; height: 55px;" placeholder="내용을 입력하세요"></textarea>
									<button type="button" class="btn1 btn-primary1" onclick="onComment()" style="float:right;">입력</button>
								</div>
							</c:if>
						</div>
						
					</div>




				<%-- <c:if test="${fn:length(comment) ge 0}">
						<p class="review_no"> </p>
					 </c:if>  --%>
					 
					 
					<c:forEach var="comment" items="${comment}" varStatus="stat">
			
						<!-- <p class="review_num">댓글 수 <strong>1</strong></p> -->
						
						<!-- 후기리스트영역 -->
						<div class="review_view">
							
							<!-- 후기타이틀영역 -->
							<div class="review_title">
								<div class="REVIEW_SUBJECT"><strong>${comment.REVIEW_SUBJECT} </strong>|
								<div class="MEMBER_ID"><strong>${comment.MEMBER_ID} </strong>님  
									<div class="REVIEW_STAR">
										  <c:if test='${comment.REVIEW_STAR == 1}'>
									      &nbsp;<img src="/IMPet/resources/image/review/star_on2.gif" border="0"/><img src="/IMPet/resources/image/review/star_off2.gif" border="0"/><img src="/IMPet/resources/image/review/star_off2.gif" border="0"/><img src="/IMPet/resources/image/review/star_off2.gif" border="0"/><img src="/IMPet/resources/image/review/star_off2.gif" border="0"/>
									      </c:if>
									      <c:if test='${comment.REVIEW_STAR == 2}'>
									      &nbsp; <img src="/IMPet/resources/image/review/star_on2.gif" border="0"><img src="/IMPet/resources/image/review/star_on2.gif" border="0"><img src="/IMPet/resources/image/review/star_off2.gif" border="0"><img src="/IMPet/resources/image/review/star_off2.gif" border="0"><img src="/IMPet/resources/image/review/star_off2.gif" border="0">
									      </c:if>
									      <c:if test='${comment.REVIEW_STAR == 3}'>
									      &nbsp; <img src="/IMPet/resources/image/review/star_on2.gif" border="0"><img src="/IMPet/resources/image/review/star_on2.gif" border="0"><img src="/IMPet/resources/image/review/star_on2.gif" border="0"><img src="/IMPet/resources/image/review/star_off2.gif" border="0"><img src="/IMPet/resources/image/review/star_off2.gif" border="0">
									      </c:if>
									      <c:if test='${comment.REVIEW_STAR == 4}'>
									      &nbsp; <img src="/IMPet/resources/image/review/star_on2.gif" border="0"><img src="/IMPet/resources/image/review/star_on2.gif" border="0"><img src="/IMPet/resources/image/review/star_on2.gif" border="0"><img src="/IMPet/resources/image/review/star_on2.gif" border="0"><img src="/IMPet/resources/image/review/star_off2.gif" border="0">
									      </c:if>
									      <c:if test='${comment.REVIEW_STAR == 5}'>
									      &nbsp; <img src="/IMPet/resources/image/review/star_on2.gif" border="0"><img src="/IMPet/resources/image/review/star_on2.gif" border="0"><img src="/IMPet/resources/image/review/star_on2.gif" border="0"><img src="/IMPet/resources/image/review/star_on2.gif" border="0"><img src="/IMPet/resources/image/review/star_on2.gif" border="0">
									      </c:if>
									      
									<fmt:formatDate value="${comment.REVIEW_DATE}" pattern="yy.MM.dd"></fmt:formatDate>
									</div>
								</div>
								</div>
			
							</div>
							
							<!-- 후기내용영역 -->
							<div class="REVIEW_CONTENT">
								<p>${comment.REVIEW_CONTENT}</p>
								<c:if test="${member_ID == comment.MEMBER_ID}">
							<%-- 	<a href="/IMPet/PetShop/ItemCommentDelete?REVIEW_NO=${comment.REVIEW_NO}&ITEM_NO=${view.ITEM_NO}" class="btn btnC_01 btnP_02">
									<span class="btn btnC_05 review_btn">삭제</span>
								</a> --%>
								
								<a href="javascript:fn_ajax(${comment.REVIEW_NO},${view.ITEM_NO});" class="btn btnC_01 btnP_02">
									<span class="btn btnC_05 review_btn">삭제</span>
								</a>
								</c:if>
							</div>
						</div>
			
					</c:forEach>
						
				</div><!-- // review_grp -->
		</form>
	</div>
</div>
</div>	

</body>
</html>