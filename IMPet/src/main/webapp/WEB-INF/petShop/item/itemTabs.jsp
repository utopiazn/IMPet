<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<section class="page-title section container">
	<h2>
		<strong>my SIRORAGI</strong>
	</h2>
</section>
<div class="personal-account-info container">
	<div class="my-account row">	
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