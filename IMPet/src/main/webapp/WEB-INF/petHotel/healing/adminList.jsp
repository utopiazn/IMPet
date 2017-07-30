<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/IMPet/resources/css/hotel/form.css">
<link href="/IMPet/resources/css/adminItem/bootstrapadmin.min.css" rel="stylesheet" style="text/css">





<div class="row" >
	<h1 class="page-header">펫호텔 힐링 목록</h1>
</div>

<div class="row">
	<div class="panel panel-default">
	 <div class="panel-heading">
                         [펫호텔 힐링 목록] 펫호텔 힐링 관리 페이지 입니다.
        </div>
	
	<div id="dataTables-example_wrapper" class="panel-body">
				
				<table class="table  table-bordered table-hover dataTable no-footer"
				id="dataTables-example" role="grid"
				aria-describedby="dataTables-example_info">
					<thead>
						<tr style="vertical-align:middle; border:1px solid lightgray;">
							<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">힐 링 사 진</th>
							<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">힐 링 번 호</th>
							<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">힐 링 이 름</th>
							<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">이 용 안 내</th>
							<th style="width: 10%; text-align:center;vertical-align:middle; border:1px solid lightgray;">힐 링 설 명</th>
							<th style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">관리자 버튼</th>
						</tr>
					</thead>
					
					<tbody>
					<c:forEach var="Healing" items="${list}">
						<tr style="vertical-align:middle; border:1px solid lightgray;">
							<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
							<img alt="s2"  src="/IMPet/resources/image/hotel/healingImg/${Healing.HEALING_IMG}" style="width: 100%; height: 130px;">
							</td>
							
							<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
							${Healing.HEALING_NO}
							</td>
							
							<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
							${Healing.HEALING_NAME}
							</td>
							
							<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
							${Healing.HEALING_GUIDE}
							</td>
							
							<td style="width: 10%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
							${Healing.HEALING_DETAIL}
							</td>
							
							<td style="width: 5%; text-align:center;vertical-align:middle; border:1px solid lightgray;">
							<img alt="update"  src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cog_font_awesome.svg/32px-Cog_font_awesome.svg.png" onclick="ajaxHealingModifyForm(${Healing.HEALING_NO})" style="cursor: pointer;">
							<img alt="delete"  src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png" onclick="ajaxHealingDelete(${Healing.HEALING_NO})" style="cursor: pointer;">
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				
				<div align="right">
					<input value="+ Add" class="button4 btn-4" type="button" onclick="ajaxHealingInsertForm()"/>
				</div>
				
		</div>
	</div>
</div>























