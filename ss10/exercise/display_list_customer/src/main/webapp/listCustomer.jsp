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
<h1 style="text-align: center">LIST CUSTOMER</h1>
<table style="width: 100%;text-align: center;background-color: lightgrey" border="1px" >
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Day Of Birth</th>
        <th>Address</th>
        <th>Picture</th>
    </tr>
    <c:forEach var="customer" items="${customerList}" varStatus="status">
        <tr>
            <td>${customer.getId()}</td>
            <td>${customer.getName()}</td>
            <td>${customer.getDateOfBirth()}</td>
            <td>${customer.getAddress()}</td>
            <td>
                <c:choose>
                    <c:when test="${customer.getId() == 1}">
                        <img  style=" width: 100px; height: 100px" src="https://i.pinimg.com/236x/9d/78/f6/9d78f6c083d2d0f46aac6e3920d9c9ba.jpg">
                    </c:when>
                    <c:when test="${customer.getId() == 2}">
                        <img  style=" width: 100px; height: 100px" src="https://i.pinimg.com/236x/9d/78/f6/9d78f6c083d2d0f46aac6e3920d9c9ba.jpg">
                    </c:when>
                    <c:when test="${customer.getId() == 3}">
                        <img  style=" width: 100px; height: 100px" src="https://i.pinimg.com/236x/9d/78/f6/9d78f6c083d2d0f46aac6e3920d9c9ba.jpg">
                    </c:when>
                    <c:when test="${customer.getId() == 4}">
                        <img  style=" width: 100px; height: 100px" src="https://i.pinimg.com/236x/9d/78/f6/9d78f6c083d2d0f46aac6e3920d9c9ba.jpg">
                    </c:when>
                    <c:when test="${customer.getId() == 5}">
                        <img  style=" width: 100px; height: 100px" src="https://i.pinimg.com/236x/9d/78/f6/9d78f6c083d2d0f46aac6e3920d9c9ba.jpg">
                    </c:when>
                    <c:otherwise>
                        <p>Not Found</p>
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>