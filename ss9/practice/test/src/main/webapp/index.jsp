<%--
  Created by IntelliJ IDEA.
  User: LAPTOP ACER
  Date: 29-09-2022
  Time: 08:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<%--Chỉ demo cho biết không dùng cách này--%>
<%
  int num1 = Integer.parseInt(request.getParameter("n1"));
  int num2 = Integer.parseInt(request.getParameter("n2"));
  int sum = num1+num2;
%>
<h1><%=sum%></h1>
</body>
</html>
