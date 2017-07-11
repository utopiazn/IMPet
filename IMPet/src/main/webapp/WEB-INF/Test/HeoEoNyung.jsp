<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  


<!DOCTYPE html>

<html lang="ko">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/resources/ajax/ajax.js'/>" charset="utf-8"></script>
<script type="text/javascript">
$(document).ready(function(){
	//<a href="#this" id="test" >테스트</a> 에서 id부분을 #test로 표시하여 id 클릭시 fn_test 이벤트가 발생함.
	  $("#test").on("click", function(e){ 
	       e.preventDefault();
	       fn_test();
	   });
	 
	1번
	//<a href='#this' name='title'>테스트</a> 에서 name이 title인 것을 클릭시 fn_test2가 발생함.
	  $("a[name='title']").on("click", function(e){ //제목 
		    e.preventDefault();
	  		
	  		// $(this)란 내가 클릭한 곳을 말함.
		    fn_test2($(this));
		});
});	

// 이 Function 이벤트는 모두 <a 태그로 작성하여 써야함.(input type="button"/ input type="submit")
function fn_test(){ 
	//위에 선언해놓은 ajax주소에 function ComSubmit(opt_formId) 부분을 new ComSubmit(); 으로 생성하여 가져다씀.
      var comSubmit = new ComSubmit();
	
	// 내가 보내주고싶은 url
      comSubmit.setUrl("<c:url value='ajax' />");
	
	// 내가 넘겨주고 싶은 값 (글쓰기 같은 경우 값을 넘겨줄 필요가 없으므로 지워도 됌)
     comSubmit.addParam("no",5);
	
	// <form 태그에 submit 버튼 역활을 함.(자세한건 ajax.js에서 보면 알수있음)
      comSubmit.submit();
    }


//1번
function fn_test2(obj){
	
	//위에 선언해놓은 ajax주소에 function ComAjax(opt_formId) 부분을 new ComAjax(); 으로 생성하여 가져다씀.
    var comAjax1 = new ComAjax();
	
	//내가 보내고 주고싶은 url 주소
    comAjax1.setUrl("<c:url value='ajax2' />");
	
	// obj.parent() 란 받아온 $(this)가 obj 이며 obj.parent는 내가 클릭한 부분의 부모를 가르키므로 <td class='test'> 부분을 나타낸다.
	// <td class='test'> td와 /td 사이에 find 함수를 통하여 id가 test, test2인곳을 찾아 value값을 가져온다. </td>
    comAjax1.addParam("test", obj.parent().find("#test").val());
    comAjax1.addParam("gab", obj.parent().find("#test2").val());
    
    // ajax 기능을 하게 해준다(자세한건 ajax.js에서 보면 알수있음.)
    comAjax1.ajax1();
}
</script>

<head>

	<meta charset="UTF-8">
<title>허어녕 전용 페이지 </title>
</head>
<body>	
		<%@ include file="/WEB-INF/ajax/include-body.jspf" %>
		<a href="#this" id="test" >테스트</a> <!-- 글쓰기 식 -->
		
	<table>
			<tr>
				<td class='test'>
					<a href='#this' name='title'>테스트2</a> <!-- 글 상세보기 -->
					<input type='hidden' name='test' id='test' value="string">
					<input type='hidden' name='test' id='test2' value="${gab }">
				</td>
			</tr>
		</table> 


</body>
</html>