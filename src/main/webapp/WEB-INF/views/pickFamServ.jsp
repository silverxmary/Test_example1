<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<div class="container">
			<div class="row">
			<h1>Selected Service - ${service}</h1>
			<hr/>
			</div>
			<div class="row">
			<p>choose your rentals</p>
			</div>
	<form:form action="${contextRoot}/checkFamPack" method="POST"  commandName="famPacksForm">
	
	<table>
	<c:forEach items="${packs}" var="p" varStatus="loop">
			<tr>
				<td>NombrePAcK 
				<form:select name="nombre-${loop.index+1}" path="nombre" id="nombre-${loop.index+1}">
					<option value="0">Select</option>
					<option value="1">Pack1</option>
					<option value="2">Pack2</option>
					<option value="3">Pack3</option>
				</form:select></td>
				<td></td>
				<td>RentTime -
				<form:input type="text" id="rentTime-${loop.index+1}" path="rentTime" onkeypress='return event.charCode >= 48 && event.charCode <= 57'/>
				<span id="timefrec-${loop.index+1}"></span></td>
				
				<td></td>
				<td></td>
			</tr>
		</c:forEach>

	</table>
	
			<button type="submit">Send</button>
	</form:form>
			
</div>
		