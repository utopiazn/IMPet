<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<div id="ContextEvent" align="center" style="width:100%;  float: left;">
	
				
		<div align="center">
			<table style="width: 100%">
			
				<c:forEach var="Event" items="${listAll}">
				
					<tr>
						<td>
							<div class="con">
								<div>
									<img alt="s2" src="/IMPet/resources/image/event/${Event.EVENT_IMG}" style="padding-left : 8px; width: 30%; height: 100%; float:left;" >
								</div>
								
								<div>
									 <a href="javascript:EventView(${Event.EVENT_NO});" >
									 <h3>&nbsp;&nbsp; ${Event.EVENT_SUBJECT} <br/><br/></h3>
									 &nbsp;&nbsp;${Event.EVENT_CONTENT} <br/><br/></a>
								</div>
							</div>
									
						</td>
					</tr>
				</c:forEach>
			</table>
			
			
			<div class="paging">			
				${pagingHtml} 
			</div>
	</div>			 					 
		
	
		
	
	
	
	
	</div>
	


		

