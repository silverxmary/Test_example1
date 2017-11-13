<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<div class="container">
<h1>Checkout</h1>
	<c:if test="${singlePack==true}">
		<div class="row">
			
			<hr/>
			<p>You Selected - ${nombre} -  and must pay  ${precio}</p>
		</div>
	</c:if>
	<c:if test="${famPack==true}">
		<div class="row">
		Selected Packs
		<table>
			<c:forEach items="${famPacksForm.bikePacksFam}" var="p" varStatus="loop">
				<tr>
					<td>NombrePacK ${p.nombre}</td>
					
					<td></td>
					<td>Precio - ${p.precio}</td>
					
					
					<td></td>
				</tr>
			</c:forEach>
			</table>
			<td>PRecio total - ${precioFin}</td>
		</div>
		
	</c:if>
	

</div>