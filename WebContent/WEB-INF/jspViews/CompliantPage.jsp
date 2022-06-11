<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body{
background:lavender;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
	<h2><u>File Compliant</u></h2>
	<form:form action="processCompliantForm.html" method="POST" modelAttribute="compliantBean">
	<table>
	<tr>
	<td>Customer Name</td>
	<td><form:input path="customerName"/></td>
	<td><form:errors cssClass="error" path="customerName"/></td>
	</tr>
	<tr>
	<td>Customer Type</td>
	<td><form:select path="compliantTypeId">
	<form:option label="--Select--" value=""/>
	<form:options items="${types}"/>
	</form:select></td>
	<td><form:errors cssClass="error" path="compliantTypeId"/></td>
	</tr>
	<tr>
	<td>Description</td>
	<td><form:input path="description"/></td>
	</tr>
	<tr>
	<td>Date of Incidence <br> [dd-MMM-yyyy]</td>
	<td><form:input path="dateOfIncidence"/></td>
	<td><form:errors cssClass="error" path="dateOfIncidence"/></td>
	</tr>
	<tr>
	<td>Total loss of amount <br> from this incidence</td>
	<td><form:input path="amount"/></td>
	<td><form:errors cssClass="error" path="amount"/></td>
	</tr>
	</table>
	<br>
	<input type="submit" value="Submit Compliant">
	</form:form>
	<br>
	<a href="${pageContext.request.contextPath}/index.jsp">HOME</a>
</center>
</body>
</html>