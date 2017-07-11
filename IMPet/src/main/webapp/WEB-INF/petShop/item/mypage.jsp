<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<script>
$(function () {
    $(".tab_content").hide();
    $(".tab_content:first").show();

    $(".account-nav li").click(function () {
        $(".account-nav li").removeClass("selected");

        $(this).addClass("selected");
    });
});
function gg(){
	var qna_num = document.getElementById("qna_number").value;
	var qna_state = document.getElementById("qna_state").value;
	if(qna_state != "답변대기"){
	$.ajax({
		url: "/SIRORAGI/qna/updateRepState",
		type : "get",
		data: {"QNA_NUMBER":qna_num},
		success:function(data){
		}
	});}
};
$(document).ready(function(){
var link = document.location.href;
var tab = link.split('mypage').pop();
if(tab == ""){
	$('a[href=#orderlist]').trigger("click");	
}else{
$('a[href$='+tab+']').trigger("click");
}
});

function tab(num){
		if(num == 1){
 			$.ajax({
 				url: url,
 				type : "get",
 				success:function(data){
 					$("#account-contentsWrap").html(data);
 					
 				}
 			});
		}
		if(num == 2){
 			$.ajax({
			url: "/SIRORAGI/exchangelist",
			type : "get",
			success:function(data){
				$("#account-contentsWrap").html(data);
			}
		});
		}
		if(num == 3){
 			$.ajax({
			url: "/SIRORAGI/returnlist",
			type : "get",
			success:function(data){
				$("#account-contentsWrap").html(data);
			}
		});
		}
		if(num == 4){
 			$.ajax({
			url: "/SIRORAGI/review",
			type : "get",
			success:function(data){
				$("#account-contentsWrap").html(data);
			}
		});
		}
		if(num == 5){
 			$.ajax({
			url: "/SIRORAGI/qna",
			type : "get",
			success:function(data){
				$("#account-contentsWrap").html(data);
			}
		});
		}
		if(num == 6){
 			$.ajax({
			url: "/SIRORAGI/oneToOne",
			type : "get",
			success:function(data){
				$("#account-contentsWrap").html(data);
			}
		});
		}
		if(num == 7){
			
 			$.ajax({
			url: "/SIRORAGI/myinfo",
			type : "get",
			success:function(data){
				$("#account-contentsWrap").html(data);
			}
		});
		}
		return false;
};
</script>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<section class="page-category container">
	<div class="selectboxWrap">
		<div class="selectbox">
			<div class="selectbox-data">
				<strong class="text">마이페이지 </strong>
				<span class="icon icon-dropdown-white"></span>
			</div>
			<select name="category[]" id="cate02">
				<option value="">마이페이지</option>
			</select>
		</div>
		
		<!--
		<a href="#" class="comment">
			<span class="icon icon-speaker-white"></span>
			<span class="text">배송관련 공지사항 안내 드립니다.</span>
		</a>
		-->
	</div>
</section>
<section class="page-title section container">
	<h2>
		<strong>my SIRORAGI</strong>
	</h2>
</section>
<div class="personal-account-info container">
	<div class="my-account row">
		<section class="col-xs-24 my-info">
			<div class="section-body">
				<div class="item profile col-xs-24 col-md-6">
					<div class="info">						<strong>
						<span class="level" style="text-align:center;">${sessionScope.MEMBER_ID}</span>(${sessionScope.MEMBER_NAME }님)
						</strong>
						<a href="#" onclick="javascript:tab(7)" class="button small button-dimmed">
							<span class="button-label">내 정보 수정</span>
						</a>
					</div>
				</div>
				<div class="item point col-xs-8 col-md-6">
					<strong>포인트 : </strong>
					<em><fmt:formatNumber value="${sumPoint}" type="number" />원</em><br>
					<button class="button small" target="modal" data-size="md" data-label="나의 적립금" href="/SIRORAGI/member/myPoint">
						<span class="button-label">자세히 보기</span>
					</button>
					<div></div>
				</div>
				<div class="item cash col-xs-8 col-md-6">
				<div class="info">
				<c:choose>
				<c:when test="${totalMoney eq null }">
				<span>총  구입금액 : </span>
				 <span>0원</span>
				 </c:when>
				 <c:otherwise>
				 <span>총  구입금액 : </span>
				 <span>${totalMoney}원</span>
				 </c:otherwise>
				</c:choose>
				
				</div>
				</div>
				<div class="item coupon col-xs-8 col-md-6">
				<div style="margin-top:-15px">
					<span>주문진행중 : </span>
				<span>${buyCount }건</span><br> 
				</div>
				<div>
					<span>반품진행중 : </span>
					 <span>${ReCount }건</span><br> 
					 </div>
					 <div>
					<span>교환진행중 : </span>
					 <span>${ExCount }건</span><br> 
					 </div>
				
				</div>
			</div>
		</section>
<style>
.account-nav {display:block;}
.account-nav ul li {width:14.285%;}
@media (max-width: 767px){
	.account-nav ul li {width:25%; float:left; border:1px solid #000; margin-right:-1px; margin-bottom:-1px; border-radius:0 !important; padding:5px 0;}
	.account-nav ul li.m-1 {margin-left:-1px;}
	.account-nav ul li.xx {width:33.333%;}
}

</style>
		<section class="col-xs-24 account-navWrap">
			<nav class="account-nav">
				<ul>
					<!--
					<li class=" col-sm-3">
						<a href="../mypage/">마이팬콧 홈</a>
					</li>
					-->
					<li class=" col-sm-3 xx">
						<a href="#orderlist" onclick="javascript:tab(1)">주문조회/취소
							<!-- 글이 있을 경우 exist라는 클래스명 붙임 -->
							<em class="badge badge-point"></em>
						</a>
					</li>

					<li class="col-sm-3 xx">
						<a href="#exchangelist" onclick="javascript:tab(2)">교환신청/조회<span></span></a>
					</li>
					<li class="col-sm-3 xx m-1">
						<a href="#returnlist" onclick="javascript:tab(3)">반품신청/조회<span></span></a>
					</li>

					<li class=" col-sm-3">
						<a href="#review" onclick="javascript:tab(4)">구매 후기
							<!-- 글이 있을 경우 exist라는 클래스명 붙임 -->
							<em class="badge badge-point"></em>
						</a>
					</li>
					<li class=" col-sm-3">
						<a href="#qna" onclick="javascript:tab(5)">상품 문의 <em class="badge">${newAlarm }</em></a>
					</li>
					<li class=" col-sm-3">
						<a href="#oneToOne" onclick="javascript:tab(6)"	>1:1 문의 <em class="badge">${selectOtoCount}</em></a>
					</li>
					<li class=" col-sm-3">
						<a href="#myinfo" onclick="javascript:tab(7)">내 정보 수정</a>
					</li>
					<!--<li class="">
						<a href="../mypage/myinfo">내 정보</a>
						&lt;!&ndash; 로그인후 내정보 클릭시 뜨는 패스워드 모달창 trigger
						<a href="#" data-toggle="modal" data-target="#popup-privacy-confirm">내 정보<span></span></a>
						&ndash;&gt;
					</li>-->
				</ul>
			</nav>
			<!--
			<nav class="account-nav-mobile">
				<div class="selectbox">
					<div class="selectbox-data">
						<strong class="text"></strong>
						<span class="icon icon-dropdown-gray-dark"></span>
					</div>
					<select>
						<option>마이팬콧 홈</option>
						<option>주문 조회/취소</option>
						<option>구매 후기</option>
						<option>나의 상품문의</option>
						<option>1:1 문의</option>
					</select>
				</div>
			</nav>
			-->
		</section>
	</div>
	<div id="account-contentsWrap"class="account-contentsWrap">
	
	</div>
</div>
<script>
$(".account-individual-list tr.brief").click(function(){
	$(this).next().toggle();
});
</script>