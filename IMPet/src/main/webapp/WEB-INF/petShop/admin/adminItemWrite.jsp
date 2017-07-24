<%@ page contentType="text/html; charset=UTF-8" %>


<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">


<script type="text/javascript">
function validateForm() {
    var x = document.forms["joinform"]["goods_name"].value;
    if (x == null || x == "") {
        alert("상품명은 입력해야합니다");
        return false;
    }
}
function chk_radio() { 
	alert("111");
	
	var frm = document.joinform;
	
	if(frm.ITEM_NAME.value == ""){
		alert("상품 제목을 입력해 주세요.");
		return false;
	}
	
	if(frm.ITEM_IMG.value == ""){
		alert("상품 메인 이미지를 선택해주세요.");
		return false;
	}
	
	if(frm.ITEM_TOTALCOUNT.value == ""){
		alert("상품 판매량을 입력해 주세요.");
		return false;
	
	}
	
	if(frm.ITEM_PRICE.value == ""){
		alert("상품 가격을 입력해 주세요.");
		return false;
	
	}
	
	if(frm.ITEM_DETAILIMG.value == ""){
		alert("상품 설명 이미지를 선택해주세요");
		return false;
	}
	
	if(frm.ITEM_BASKETIMG.value == ""){
		alert("상품 배송 이미지를 선택해주세요");
		return false;
	}
	
	else{
		  frm.method = "post";
		  frm.action = "/IMPet/PetShop/AdminItemWrite";
		  frm.enctype= "multipart/form-data";
		  frm.submit();
		  return true;
	 }

}	

</script>
</head>


<!-- 메뉴 시작 -->

<div class="row" style="padding-left:15px;width:100;">    
	<h1 class="page-header">상품등록</h1>
</div>

<div class="row" style="padding-left:15px;width:100%; text-align:left;" id="right">
	<div class="panel panel-default">
		<div class="panel-heading">상품등록 페이지입니다. 빠짐없이 입력하셔야합니다</div>
			<div class="panel-body">
				<form name="joinform" >	
						<div class="form-group">
                            <label>카테고리</label>	                            
                            <select name="ITEM_TYPE" class="form-control" style="width:initial;" >
								<option value="0" label="사료" />
								<option value="1" label="간식" />
								<option value="2" label="패션의류" />
								<option value="3" label="목줄/야외" />
								<option value="4" label="생활/잡화" />
							</select>
                        </div>
                        
                        <div class="form-group">
                            <label>상품명</label>
                            <input type="text" name="ITEM_NAME" class="form-control" id="ITEM_NAME"  value="" placeholder="상품명을 입력하세요" style="width:500px;" required/>
                        </div>
                        
                        <div class="file_input">
                        	메인 상품 이미지 <br/>
                             <label>파일 첨부 
                           <!--  <input type="file" name="ITEM_BASKETIMG" size="30" value='' class="fileBtn"/> -->
                            <input type="file" name="ITEM_IMG" onchange="javascript:document.getElementById('file_route').value=this.value" required>                          
                            </label>
                            <input type="text" readonly="readonly" title="File Route" id="file_route">
                            <p class="help-block">메인상품 이미지 입니다 800x800 사이즈 권장합니다</p>
                        </div>
                        
                        <div class="form-group">
                            <label>상품수량</label>
                            <input type="text" class="form-control" id="ITEM_TOTALCOUNT" name="ITEM_TOTALCOUNT" placeholder="상품수량을 입력해주세요" value="1" style="width:107px;" required >
                        </div>
                        
                        <div class="form-group">
                            <label>판매가격</label>
                            <input type="text" class="form-control" id="ITEM_PRICE" name="ITEM_PRICE" style="width:initial;" required>
                            <p class="help-block">판매가격 입력하세요. 0원으로 그대로 갈 경우 큰일납니다</p>
                        </div>
                        
                          <div class="form-group">
                            <label>할인가격</label>
                            <input type="text" class="form-control" id="ITEM_DCPRICE" name="ITEM_DCPRICE" style="width:initial;"required>
                            <p class="help-block">할인가격 입력하세요. </p>
                        </div>
                        
                         <div class="file_input">
                        	상품 내용 이미지 <br/>
                             <label>파일 첨부 
                           <!--  <input type="file" name="ITEM_BASKETIMG" size="30" value='' class="fileBtn"/> -->
                            <input type="file" name="ITEM_DETAILIMG" onchange="javascript:document.getElementById('file_route1').value=this.value" required>                          
                            </label>
                            <input type="text" readonly="readonly" title="File Route" id="file_route1">
                            <p class="help-block">상품설명 이미지 입니다 1000x(2500~3800)사이즈 권장</p>
                        </div>
                        
                        <div class="file_input">
                        	배송 내용 이미지 <br/>
                            <label>파일 첨부 
                           <!--  <input type="file" name="ITEM_BASKETIMG" size="30" value='' class="fileBtn"/> -->
                            <input type="file" name="ITEM_BASKETIMG" onchange="javascript:document.getElementById('file_route2').value=this.value" required>                          
                            </label>
                            <input type="text" readonly="readonly" title="File Route" id="file_route2">
                            <p class="help-block">배송 상품  이미지 입니다 1000x1000사이즈 권장</p>
                        </div> 
                                  
                        <!-- <div class="file_input">
		                     <label>
		                        	파일첨부
		                        <input type="file" onchange="javascript:document.getElementById('file_route').value=this.value">
		                     </label>
		                     <input type="text" readonly="readonly" title="File Route" id="file_route">
		                </div>          -->
						<button type="submit" class="btn btn-success" onclick="chk_radio()">상품등록</button>
						<button type="reset" class="btn btn-default" onClick="location.href='/IMPet/PetShop/AdminItemList'">작성취소</button>					
				</form>
			</div>
	</div>
</div>
