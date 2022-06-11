<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<h2>Show Compliant Details</h2>
<c:choose>
<c:when test="${not empty compliants}">
<table border="1">
<tr>
<th>Compliant Id</th><th>Customer Name</th><th>Compliant Type</th><th>Description</th><th>Date Of Incidence</th><th>Loss Of Amount</th>
</tr>
<c:forEach var="compliant" items="${compliants}">
<tr>
<td align="right">${compliant.compliantId+10000}</td>
<td align="center">${compliant.customerName}</td>
<td align="center">${compliant.compliantTypeId}</td>
<td align="center">${compliant.description}</td>
<td align="center"><fmt:formatDate pattern="dd-MMM-yyyy" value="${compliant.dateOfIncidence}"/></td>
<td align="right">${compliant.amount}</td>
</tr>
</c:forEach>
</table>
</c:when>
<c:otherwise>
<h3 style="color: blue">No records found.....</h3>
</c:otherwise>
</c:choose>
<br><br>
<a href="${pageContext.request.contextPath}/index.jsp">HOME</a>
</body>
</html>