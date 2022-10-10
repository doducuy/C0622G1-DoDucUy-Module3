<%--
  Created by IntelliJ IDEA.
  User: LAPTOP ACER
  Date: 10-10-2022
  Time: 08:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Customer Form</title>
</head>
<body>
<h3 style="text-align: center">Edit Customer Form</h3>
<a href="/customer">Back Customer List!!!</a>
<form action="/customer?action=edit&id=${id}" method="post">
    <pre>Customer Type Id:     <input type="text" name="customerTypeId" placeholder="${customer.getCustomerTypeId()}"> </pre>
    <pre>Name: <input type="text" name="name" placeholder="${customer.getName()}"> </pre>
    <pre>Birthday:    <input type="date" name="birthday" placeholder="${customer.getDateOfBirth()}"> </pre>
    <pre>Gender:  <input type="text" name="gender" placeholder="${customer.getGender()}"> </pre>
    <pre>Id Card:    <input type="text" name="idCard" placeholder="${customer.getIdCard()}"> </pre>
    <pre>Phone number:    <input type="text" name="phoneNumber" placeholder="${customer.getPhoneNumber()}"> </pre>
    <pre>Email:  <input type="text" name="email" placeholder="${customer.getEmail()}"> </pre>
    <pre>Address:  <input type="text" name="address" placeholder="${customer.getAddress()}"> </pre>
    <pre><button type="submit">Save</button></pre>
</form>
</body>
</html>
