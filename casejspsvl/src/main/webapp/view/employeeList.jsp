<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: LAPTOP ACER
  Date: 06-10-2022
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Employee List</title>
    <link rel="stylesheet" href="../bootstrap-5.0.2-dist/css/bootstrap.css">
</head>
<body>
<h3 style="color: #ffc107; text-align: center">EMPLOYEE LIST OF FURAMA RESORT</h3>
<table class="table table-striped" border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Date Of Birth</th>
        <th>Id Card</th>
        <th>Salary</th>
        <th>Phone Number</th>
        <th>Email</th>
        <th>Address</th>
<%--        <th>Position Id</th>--%>
<%--        <th>Education Degree Id</th>--%>
<%--        <th>Division Id</th>--%>
        <th>Username</th>
        <th>Edit</th>
        <th><a href="/employee?action=add">Add New Employee</a></th>
    </tr>
    <c:forEach var="employList" items="${employeeList}">
        <tr>
            <td>${employList.getId()}</td>
            <td>${employList.getName()}</td>
            <td>${employList.getDateOfBirth()}</td>
            <td>${employList.getIdCard()}</td>
            <td><fmt:formatNumber value="${employList.getSalary()}"/></td>
            <td>${employList.getPhoneNumber()}</td>
            <td>${employList.getEmail()}</td>
            <td>${employList.getAddress()}</td>
<%--            <td><c:out value="${employList.getPositionId()}"></c:out></td>--%>
<%--            <td><c:out value="${employList.getEducationDegreeId()}"></c:out></td>--%>
<%--            <td><c:out value="${employList.getDivisionId()}"></c:out></td>--%>
            <td>${employList.getUsername()}</td>
        </tr>
    </c:forEach>
</table>
<div>
    <a href="/view/home.jsp">Back Home!!!</a>
</div>
<script src="../bootstrap-5.0.2-dist/js/bootstrap.js"></script>
</body>
</html>
