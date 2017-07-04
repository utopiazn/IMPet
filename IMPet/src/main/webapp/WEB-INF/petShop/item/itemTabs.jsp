<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="tab_cate">    
	<div class="tabs_area">  
		<ul class="tabs">
			<li><a href="#tab1" class="tab_a1"><span>사료</span></a></li>
			<li><a href="#tab2" class="tab_a2"><span>간식</span></a></li>
			<li><a href="#tab3" class="tab_a2"><span>패션</span></a></li>
			<li><a href="#tab4" class="tab_a2"><span>의류</span></a></li>
		</ul>
	</div>
    
	<div class="tab_container">
		<div class="con_position">
			<div id="tab1" class="tab_content">
				<div class="xans-element- xans-layout xans-layout-category">
					<div class="postion">
				        <ul>
							<li class="pst pst1 xans-record-"><a href="/pet/goods/goodsCategoryList.dog?goods_category=0">사료</a></li>
				            <li class="pst pst2 xans-record-"><a href="/pet/goods/goodsCategoryList.dog?goods_category=1">간식</a></li>
				            <li class="pst pst3 xans-record-"><a href="/pet/goods/goodsCategoryList.dog?goods_category=2">패션/의류</a></li>
				            <li class="pst pst4 xans-record-"><a href="/pet/goods/goodsCategoryList.dog?goods_category=3">목줄/야외</a></li>
				            <li class="pst pst5 xans-record-"><a href="/pet/goods/goodsCategoryList.dog?goods_category=4">생활/잡화</a></li>
				        </ul>
					</div>
				</div>
			</div><!--//tab1 끝-->
		
			<div id="tab2" class="tab_content" style="display:none;">
				<div class="xans-element- xans-layout xans-layout-boardinfo board_postion">
					<ul>
						<li class="pst pst0"><a href="/pet/notice/noticeList.dog">공지사항</a></li>
			            <li class="pst pst1"><a href="/pet/pet_img/pet_imgList.dog">마이펫갤러리</a></li>
			            <li class="pst pst2"><a href="/pet/pet/petList.dog">분양게시판</a></li>
			            <li class="pst pst3"><a href="/pet/QnA/QnAList.dog">Q&amp;A</a></li>
			            <li class="pst pst4"><a href="/pet/review/reviewList.dog">구매후기</a></li>
			            <li class="pst pst5"><a href="#"><span>준비중</span></a></li>
						<li class="pst pst6"><a href="#"><span>준비중</span></a></li>
						<!-- <li class="pst pst7"><a href="/board/product/list.html?board_no=4"><span>구매후기</span></a></li>
						<li class="pst pst8"><a href="/front/php/b/board_list.php?board_no=3"><span>문의답변</span></a></li>
						<li class="pst pst9"><a href="/front/php/b/board_list.php?board_no=3"><span>문의답변</span></a></li> -->
					</ul>
				</div>
			</div>
		</div>
	</div>
</div><!--//메뉴 끝-->
</body>
</html>