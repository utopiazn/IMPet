<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang=ko>
<head>
<meta charset="UTF-8">
<title>관리자상품추가폼</title>
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">
</head>
<body>


<script type="text/javascript">
function validateForm() {
    var x = document.forms["joinform"]["goods_name"].value;
    if (x == null || x == "") {
        alert("상품명은 입력해야합니다");
        return false;
    }
}
</script>
</head>


<!-- 메뉴 시작 -->

<div class="row" style="padding-left:15px;width:900px;">    
	<h1 class="page-header">상품등록</h1>
</div>

<div class="row" style="padding-left:15px;width:900px;">
	<div class="panel panel-default">
		<div class="panel-heading">상품등록 페이지입니다. 빠짐없이 입력하셔야합니다</div>
			<div class="panel-body">
				<form action="AdminItemWriteForm" enctype="multipart/form-data" method="post" name="joinform" onsubmit="return validateForm()">	
						<div class="form-group">
                            <label>카테고리</label>	                            
                            <select id="ITEM_TYPE" class="form-control" style="width:initial;" >
								<option value="0" label="사료" />
								<option value="1" label="간식" />
								<option value="2" label="패션의류" />
								<option value="3" label="목줄/야외" />
								<option value="4" label="생활/잡화" />
							</select>
                        </div>
                        
                        <div class="form-group">
                            <label>상품명</label>
                            <input type="text" name="ITEM_NAME" class="form-control" path="goods_name"  placeholder="상품명을 입력하세요" style="width:500px;"/>
                        </div>
                        
                        <div class="form-group">
                            <label>상품이미지</label>
                            <input type="file" name="file" size="30" value=''/>
                            <p class="help-block">메인상품 이미지 입니다 800x800 사이즈 권장합니다</p>
                        </div>
                        
                        <div class="form-group">
                            <label>상품수량</label>
                            <input type="text" class="form-control" id="ITEM_CELLCOUNT"  placeholder="상품수량을 입력해주세요" value="1" style="width:107px;"/>
                        </div>
                        
                        <div class="form-group">
                            <label>판매가격</label>
                            <input type="text" class="form-control" id="ITEM_PRICE" style="width:initial;"/>
                            <p class="help-block">판매가격 입력하세요. 0원으로 그대로 갈 경우 큰일납니다</p>
                        </div>
                        
                        <div class="form-group">
                            <label>상품 내용 이미지</label><!-- goods_contentimage -->
                            <input type="file" name="file" size="30" value=''/>
                            <p class="help-block">상품설명 이미지 입니다 1000x(2500~3800)사이즈 권장</p>
                        </div>
                        
                        <div class="form-group">
                            <label>배송 내용 이미지</label><!-- goods_delevimage -->
                            <input type="file" name="file" size="30" value=''/>
                            <p class="help-block">상품설명 이미지 입니다 1000x1000사이즈 권장</p>
                        </div>
                        
                        <div class="form-group">
                            <label>상품구분</label>	                            
                               <select id="goods_best" class="form-control" style="width:initial;" >
									<option value="0" label="기본" />
									<option value="1" label="추천" />
									<option value="2" label="베스트" />
									<option value="3" label="신상" />
								</select>
							<p class="help-block">선택옵션에 따라 추천, 베스트, 신상으로 구분되며 메인페이지 출력옵션에 사용됩니다</p>
                        </div>
                        
						<button type="submit" class="btn btn-success">상품등록</button>
						<button type="reset" class="btn btn-default">작성취소</button>					
				</form>
			</div>
	</div>
</div>

</body>
</html>