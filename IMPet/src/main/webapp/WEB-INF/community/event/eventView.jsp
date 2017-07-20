<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.button2 {
  background: #333;
  color: #ccc;
  width: 100px;
  height: 30px;
  border: 0;
  font-size: 15px;
  border-radius: 4px;
  font-family: 'Noto sans KR', sans-serif;
  -webkit-transition: .6s;
  transition: .6s;
  overflow: hidden;
}
.button:focus2 {
  outline: 0;
}
.button2:before {
  content: '';
  display: block;
  position: absolute;
  background: rgba(255, 255, 255, 0.5);
  width: 60px;
  height: 100%;
  left: 0;
  top: 0;
  opacity: .5;
  -webkit-filter: blur(30px);
          filter: blur(30px);
  -webkit-transform: translateX(-100px) skewX(-15deg);
          transform: translateX(-100px) skewX(-15deg);
}
.button2:after {
  content: '';
  display: block;
  position: absolute;
  background: rgba(255, 255, 255, 0.2);
  width: 30px;
  height: 100%;
  left: 30px;
  top: 0;
  opacity: 0;
  -webkit-filter: blur(5px);
          filter: blur(5px);
  -webkit-transform: translateX(-100px) skewX(-15deg);
          transform: translateX(-100px) skewX(-15deg);
}
.button2:hover {
  background: #727070;
  cursor: pointer;
}
.button2:hover:before {
  -webkit-transform: translateX(300px) skewX(-15deg);
          transform: translateX(300px) skewX(-15deg);
  opacity: 0.6;
  -webkit-transition: .7s;
  transition: .7s;
}
.button2:hover:after {
  -webkit-transform: translateX(300px) skewX(-15deg);
          transform: translateX(300px) skewX(-15deg);
  opacity: 1;
  -webkit-transition: .7s;
  transition: .7s;
}
</style>
<div>
	<div style="float: left; width:70%; height:500px; margin-top: 10px;">
	<img alt="s2" src="/IMPet/resources/image/hotel/healingImg/${view.HEALING_IMG}" style="width: 100%; height: 100%;">
	</div>
	<div style="float:left; width:29%; height:500px; margin-top: 10px;">
		<div>
				<div align="left" style="padding-left: 15px;">
					<br/>
					<font size="10px" style="font-weight: bolder;"> ${view.HEALING_NAME}</font><br/>
					<font size="5px" style="border-bottom: 1px solid lightgray;"> ${view.HEALING_TIME}</font><br/>
				</div>
				
				<div align="left" style="margin-bottom:10px;">
					<br/>
					&nbsp;&nbsp;&nbsp;${view.HEALING_GUIDE}
				</div>
		</div>
	
	</div>
</div>	

<div>
	<div style="float: left; width: 100%; border:1px solid lightgray; margin-top: 10px;" >
		<div style="float: left;">
			<img alt="healing" src="/IMPet/resources/image/hotel/healingImg/healing.png">		
		</div>
			
		<div style="float: left; padding-top: 35px; ">
			&nbsp;&nbsp;${view.HEALING_DETAIL}<br/>
		</div>
	</div>
	
	<div align="right" style="float: right; width:100%; margin-top: 10px;">
		<c:if test="${sessionScope.member_Admin==1 }">
		<input value="이벤트 수정" class="button2" type="button" onclick="ajaxHealingModifyForm(${view.HEALING_NO})"/>
		<input value="이벤트 삭제" class="button2" type="button" onclick="ajaxHealingDelete(${view.HEALING_NO})"/>
		</c:if>
		<input value="목록으로" class="button2" type="button" onclick="ajaxHealing()"/>
	</div>
</div>