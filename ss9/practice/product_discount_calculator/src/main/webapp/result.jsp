<%--
  Created by IntelliJ IDEA.
  User: LAPTOP ACER
  Date: 26-09-2022
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<h1>Product Description: <%=request.getAttribute("productDescription")%></h1>
<h1>Discount Amount: <%=request.getAttribute("discountAmount")%></h1>
<h1>Discount Price: <%=request.getAttribute("discountPrice")%></h1>
</body>
</html>