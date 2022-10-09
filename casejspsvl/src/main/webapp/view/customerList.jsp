<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--%khai báo dòng này để forrmat số :--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: LAPTOP ACER
  Date: 09-10-2022
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
    <link rel="stylesheet" href="../bootstrap-5.0.2-dist/css/bootstrap.css">

</head>
<body>
<h3 style="color: #ffc107; text-align: center">CUSTOMER LIST OF FURAMA RESORT</h3>
<a href="/customer?action=add">Add New Customer</a>
<table class="table table-striped" border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Date Of Birth</th>
        <th>Gender</th>
        <th>Id Card</th>
        <th>Phone Number</th>
        <th>Email</th>
        <th>Address</th>
        <%--        <th>Position Id</th>--%>
        <%--        <th>Education Degree Id</th>--%>
        <%--        <th>Division Id</th>--%>
        <th>Delete</th>
        <th>Edit</th>
    </tr>
    <c:forEach var="customerList" items="${customerList}">
        <tr>
            <td>${customerList.getId()}</td>
            <td>${customerList.getName()}</td>
            <td>${customerList.getDateOfBirth()}</td>
            <c:if test="${customerList.getGender()==0}"><td><c:out value="nữ"></c:out></td>  </c:if>
            <c:if test="${customerList.getGender()==1}"><td><c:out value="nam"></c:out></td>  </c:if>
            <td>${customerList.getIdCard()}</td>
            <td>${customerList.getPhoneNumber()}</td>
            <td>${customerList.getEmail()}</td>
            <td>${customerList.getAddress()}</td>
            <td style="width: 20px">
                <!-- Button trigger modal -->
                <button type="button"  data-bs-toggle="modal" data-bs-target="#exampleModal${customerList.getId()}">
                    <img src="../img/xoa.jpg" style="width: 50%">
                </button>
                <!-- Modal -->
                <div class="modal fade" id="exampleModal${customerList.getId()}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Delete Customer</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Are You Sure?
                            </div>
                            <div class="modal-footer">
                                <button type="button"  data-bs-dismiss="modal">  No</button>
                                <button type="button"><a href="/employee?action=delete&id=${customerList.getId()}">Delete!</a></button>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
            <td ><a href="/employee?action=edit&id=${customerList.getId()}"><img src="../img/edit.jpg" style="width: 30px"></a></td>
        </tr>

    </c:forEach>

</table>
<div>
    <a href="/view/home.jsp">Back Home!!!</a>
</div>
<script src="../bootstrap-5.0.2-dist/js/bootstrap.js"></script>
</body>
</html>
