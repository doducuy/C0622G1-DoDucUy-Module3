<%--
  Created by IntelliJ IDEA.
  User: Vanxuan
  Date: 9/29/2022
  Time: 1:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Customer</title>
</head>
<body>
<h1 style="text-align: center">DANH SÁCH KHÁCH HÀNG</h1>
<table style="width: 100%;text-align: center;background-color: lightgrey" border="1px" >
    <tr>
        <th>Name</th>
        <th>Day Of Birth</th>
        <th>Address</th>
        <th>Picture</th>
    </tr>
    <c:forEach var="customer" items="${customerList}" varStatus="status">
        <tr>
            <td>${customer.getName()}</td>
            <td>${customer.getDateOfBirth()}</td>
            <td>${customer.getAddress()}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>