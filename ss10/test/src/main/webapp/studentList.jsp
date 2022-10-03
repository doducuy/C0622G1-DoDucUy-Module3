<%--
  Created by IntelliJ IDEA.
  User: LAPTOP ACER
  Date: 29-09-2022
  Time: 23:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>dshs</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <h2 style="text-align: center">DANH SÁCH HỌC SINH</h2>
    <table class="table table-dark">
        <tr>
            <td>STT</td>
            <td>ID</td>
            <td>Tên</td>
            <td>Lớp</td>
            <td>ID Lớp</td>
        </tr>
        <c:forEach var="student" items="${studentList}" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${student.getId()}</td>
                <td>${student.getName()}</td>
                <td>${student.getClassName()}</td>
                <c:forEach var="ic" items="${idcl}">
                    <c:if test="${student.getClassName()==ic.getClassName()}">
                        <td>${ic.getIdClass()}</td>
                    </c:if>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
