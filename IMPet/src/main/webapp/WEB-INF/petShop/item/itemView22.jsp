<%@page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<!-- <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.1.0.js"></script>
<link href="/pet/resources/admincss/bootstrap.min.css" rel="stylesheet">
<link href="/pet/resources/css/reset.css" rel="stylesheet">
<link href="/pet/resources/admincss/sb-admin-2.css" rel="stylesheet"> -->

<script type="text/javascript">



	//숫자,표시 함수
	var funcSetCurrency = function($) {
		
		
		  alert("1" );
		
		$('span,p.custom,.custom').each(
				function() {
					if (!isNaN(Number($(this).text())) && $(this).text())
						$(this).text(
								Number($(this).text()).toLocaleString().split('.')[0]);
				});
		
	};
	
	
	
	
	$(document).ready(function() {
		
		
		funcSetCurrency($);
	});
	
	//구매갯수 변환 함수
	function count_change(temp){
		var test=document.itemform.amount.value;
		  alert("amount:" + amount);
		
		var price="${view.ITEM_PRICE}";//숫자계산위해필요
			if(temp==0){
				test++;
			}else if(temp==1){
				if(test >1 ) test--;
			}
		if(test>"${view.ITEM_TOTALCOUNT}"){
			alert("잔여수량만큼 구매하세요");
			test=1;
		}
		
		document.itemform.amount.value=test;
		var value2 = $("#span1").html(price*test); //숫자계산위해필요
	    var value3 = $("em").html(price*test);//숫자계산위해필요
	    var value4 = $("#am2").html("("+test+"개)");//숫자계산위해필요
	}
	
	//span값변경
	$(window).load(function(){ 
	    
	    var amount=document.itemform.amount.value;
	    
	    alert("amount:" + amount);
	    
	    var price="${view.ITEM_PRICE}";
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
	
	//장바구니 처리
	var onBasket = function(){
			
		var num="${view.ITEM_NO}";
		var amount = document.itemform.amount.value;
		var id = "${session_member_id}";
		location.href = 'PetShop/BasketWrite?ITEM_NO='+num+'&ITEM_TOTALCOUNT='+amount+'&MEMBER_ID='+id;
			
	};
		
	//주문처리
    var onOrder = function(){
         
        var num="${view.ITEM_NO}";
        var amount = document.itemform.amount.value;
        var id = "${session_member_id}";
        location.href = 'PetShop/OrderItemPay?ITEM_NO='+num+'&ITEM_TOTALCOUNT='+amount+'&MEMBER_ID='+id;
         
    };
      
    //코멘트 처리
    var onComment = function(){
  		var form = $('.commentForm')[0];  //모르겠다아아아ㅏ아아아아아아아
  		form.action = 'ItemView'; 
  		form.submit();
  	};
	
</script>


<style type="text/css"> 
	.soyoon ul {
    list-style:none !important;
    overflow:auto !important;
    
	}

	.soyoon li {
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

.reply_grp {
    margin-top: 50px;
    margin-bottom: 77px;
}
	
.reply_grp .reply_view .reply_tit .btn {
    position: absolute;
    top: 50%;
    right: 0;
    margin-top: 14px;
    width: 30px;
}

	
</style>

</head>
<body>
<input type="button" onclick="joinCheck();">
	<!-- /* 카테고리 표시부분 */ -->
	<div class="category_top">
	<ul>
	 	<c:if test="${view.ITEM_TYPE eq 0}">
			<li>펫샵 ></li><li class="post2">의류</li>
		</c:if>
		<c:if test="${view.ITEM_TYPE eq 1}">
			<li>펫샵 ></li><li class="post2">장난감</li>
		</c:if>	
		<c:if test="${view.ITEM_TYPE eq 2}">
			<li>펫샵 ></li><li class="post2">사료</li>
		</c:if>	
		<c:if test="${view.ITEM_TYPE eq 3}">
			<li>펫샵 ></li><li class="post2">간식</li>
		</c:if>			
	</ul>
	</div>
	
	<!-- /* 상품이미지 및 주문하기 */ -->
	<div class="main_itemView">
		<!-- 메인이미지영역 -->
		<div class="item_image">
			<div class="item_imagedetail">
				<img src="/IMPet/resources/image/itemImg/${view.ITEM_IMG}" onerror="this.src='/IMPet/resources/image/test/noimg_130.gif'" />
			</div>
		</div>
		<form name="itemform" action="#" method="post" >
			<!-- 상세정보및 주문 영역 -->
			<div class="infoarea">
				<div class="iconb"></div>
			
				<div class="icon">
					<img src="/IMPet/resources/image/test/sale5.gif" />
				</div>
		            <h3>${view.ITEM_NAME}</h3>
				<dd class="price">
					<p class="custom"><fmt:formatNumber value="${view.ITEM_PRICE * 1.4}" type="number"/>원</p>
					<p>
						<span id="price">${view.ITEM_PRICE}</span>원
					</p>
				</dd>
				<div id="totalProducts" class="">
					<p class="info "><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/ico_information.gif" alt="" />
						수량을 선택해주세요.
					</p>
					<table summary="">
						<caption>상품 목록</caption>
						<colgroup>
							<col style="width: 284px;" />
							<col style="width: 80px;" />
							<col style="width: 110px;" />
						</colgroup>
						<tbody class="">
							<tr>
								<td class="left">${view.ITEM_NAME}</td>
								
								<td><p class="quantity">
								<input type="text" name="amount" class="quantity_opt" value="1" style="text-align: center; ime-mode:Disabled;" onkeypress="checknum()" readonly  />
								<a href="JavaScript:count_change(0)"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_count_up.gif" alt="수량증가" class="up" /></a>
	                            <a href="JavaScript:count_change(1)"><img src="http://img.echosting.cafe24.com/design/skin/default/product/btn_count_down.gif" alt="수량감소" class="down" /></a></p>
									
								</td>
								
								<td class="right">
									<span class="quantity_price" id="span1"></span>원
								</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="3"><strong>총 상품금액</strong>(수량) : <span class="total"><strong><em>555</em>원&nbsp;</strong><span id="am2">(${view.ITEM_TOTALCOUNT}개)</span></span></td>
							</tr>
						</tfoot>
					</table>
				</div>
				<div class="cartbuy">
					<div class="img_on">
						<!-- 잔여수량이 0 이면 솔드아웃 처리 -->
						<c:if test="${view.ITEM_TOTALCOUNT > 0 }">						
						<a href="JavaScript:onOrder()"><img src="http://okidogki.com/web/upload/goodymall15/layout/btn_prdOrder.gif" alt="바로 구매하기"></a>
						<a href="JavaScript:onBasket()"><img src="http://okidogki.com/web/upload/goodymall15/layout/btn_basket.gif" alt="장바구니 담기"></a> 
						</c:if>
						
						<c:if test="${view.ITEM_TOTALCOUNT <= 0 }">
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
		<!-- reply_grp -->
		<form class="commentForm" method="post">
		<input type="hidden" name="item_no" value="${view.ITEM_NO}"/>
		
	
		
				<div class="review_grp">
					<div class="review_form">
				
						<div class="review_write">
							<c:if test="${session_member_id == null}">
                  				<input type="text" style="align:center; margin: 10px; width: 950px; height: 55px;" value="로그인 후에  댓글 작성이 가능합니다." readonly="readonly"/>
	      	 				</c:if>
	      	 				<c:if test="${session_member_id != null}">
							<div class="review_explanation" style="align: center">
								<img src="/IMPet/resources/image/review/commentlogo.png"></img>
		<ul>
		<li>&nbsp;&nbsp; <input type="radio" name="item_point" value="1" height="1" class="radio">
      <img src="/IMPet/resources/image/review/star_on1.gif" border="0"><img src="/IMPet/resources/image/review/star_off1.gif" border="0"><img src="/IMPet/resources/image/review/star_off1.gif" border="0"><img src="/IMPet/resources/image/review/star_off1.gif" border="0"><img src="/IMPet/resources/image/review/star_off1.gif" border="0">
       </li>
       
      		<li><input type="radio" name="item_point" value="2" height="1" class="radio">
      <img src="/IMPet/resources/image/review/star_on1.gif" border="0"><img src="/IMPet/resources/image/review/star_on1.gif" border="0"><img src="/IMPet/resources/image/review/star_off1.gif" border="0"><img src="/IMPet/resources/image/review/star_off1.gif" border="0"><img src="/IMPet/resources/image/review/star_off1.gif" border="0">
     	</li>
       
      		<li><input type="radio" name="item_point" value="3" height="1" class="radio">
      <img src="/IMPet/resources/image/review/star_on1.gif" border="0"><img src="/IMPet/resources/image/review/star_on1.gif" border="0"><img src="/IMPet/resources/image/review/star_on1.gif" border="0"><img src="/IMPet/resources/image/review/star_off1.gif" border="0"><img src="/IMPet/resources/image/review/star_off1.gif" border="0">
      		</li>
      
     		<li><input type="radio" name="item_point" value="4" height="1" class="radio">
      <img src="/IMPet/resources/image/review/star_on1.gif" border="0"><img src="/IMPet/resources/image/review/star_on1.gif" border="0"><img src="/IMPet/resources/image/review/star_on1.gif" border="0"><img src="/IMPet/resources/image/review/star_on1.gif" border="0"><img src="/IMPet/resources/image/review/star_off1.gif" border="0">
       		</li>
      		<li><input type="radio" name="item_point" value="5" height="1" checked="" class="radio">
      <img src="/IMPet/resources/image/review/star_on1.gif" border="0"><img src="/IMPet/resources/image/review/star_on1.gif" border="0"><img src="/IMPet/resources/image/review/star_on1.gif" border="0"><img src="/IMPet/resources/image/review/star_on1.gif" border="0"><img src="/IMPet/resources/image/review/star_on1.gif" border="0">
		 		</li></ul>			
		 						</div>
							
							<div class="textarea_grp" style="width: 1000px;">
								<textarea name="commentt" style="margin: 10px; width: 849px; height: 55px;"></textarea><button type="button" class="btn1 btn-primary1" onclick="onComment()">입력	</button>
							</div>
							</c:if>
						</div>
						
					</div>




<c:if test="${fn:length(comment) ge 0}">
		<p class="review_num"> </p>
		</c:if> 
	<c:forEach var="comment" items="${comment}" varStatus="stat">

	
			
			<!-- <p class="reply_num">댓글 수 <strong>1</strong></p> -->
			<div class="main_review">
				<div class="review_nm">
					<div class="nm"><strong>${comment.MEMBER_ID} </strong>님  
					<div class="star">
					 <c:if test='${comment.REVIEW_STAR == 1}'>
      &nbsp;<img src="/IMPet/resources/image/review/star_on2.gif" border="0" /><img src="/IMPet/resources/image/review/star_off2.gif" border="0" /><img src="/IMPet/resources/image/review/star_off2.gif" border="0" /><img src="/IMPet/resources/image/review/star_off2.gif" border="0" /><img src="/IMPet/resources/image/review/star_off2.gif" border="0" />
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
      <fmt:formatDate value="${comment.REVIEW_DATE}" pattern="yy.MM.dd"></fmt:formatDate></div>
					</div>
					<c:if test="${session_member_id == comment.MEMBER_ID}">
					<a href="commentDelete.dog?REVIEW_NO=${comment.REVIEW_NO}&ITEM_NO=${view.ITEM_NO}" class="btn btnC_01 btnP_02">
						<span class="btn btnC_05 review_btn">삭제</span>
					</a>
					</c:if>
				</div>
				
				<!-- 후기제목영역 -->
				<div class="review_tit">
					<div class="tit"><strong>${comment.REVIEW_SUBJECT} </strong></div>
				</div>
				
				<div class="main_review">
					<!-- 후기이미지영역 -->
					<div class="review_image">
						<div class="review_imagedetail">
							<img src=/IMPet/resources/image/itemImg/${view.ITEM_IMG}" onerror="this.src='/IMPet/resources/image/test/noimg_130.gif'" />
						</div>
					</div>
					<!-- 후기내용영역 -->
					<div class="review_ctt">
						<p>${comment.REVIEW_CONTENT}</p>
					</div>
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