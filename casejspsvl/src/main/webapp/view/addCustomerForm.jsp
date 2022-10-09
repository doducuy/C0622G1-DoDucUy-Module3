<%--
  Created by IntelliJ IDEA.
  User: LAPTOP ACER
  Date: 09-10-2022
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Customer Form</title>
</head>
<body>
<h3 style="text-align: center">Add Customer Form</h3>
<c:if test="${mess!=null}">
    <span style="color: red">${mess}</span>
</c:if>
<a href="/customer">Back Customer List!!!</a>
<form action="/customer?action=add&mess=1" method="post">
    <pre>Customer Type Id: <input type="number" name="customerTypeId"></pre>
    <pre>Name:     <input type="text" name="name"> </pre>
    <pre>Birthday: <input type="date" name="birthday"> </pre>
    <pre>Gender: <input type="text" name="gender"> </pre>
    <pre>Id Card:    <input type="text" name="idCard"> </pre>
    <pre>Phone number:    <input type="text" name="phoneNumber"> </pre>
    <pre>Email:  <input type="text" name="email"> </pre>
    <pre>Address:  <input type="text" name="address"> </pre>
    <pre>           <button type="submit">Save</button></pre>
</form>
</body>
</html>
