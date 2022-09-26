<%--
  Created by IntelliJ IDEA.
  User: LAPTOP ACER
  Date: 26-09-2022
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<style type="text/css">
  .login {
    height:180px; width:230px;
    margin:0;
    padding:10px;
    border:1px #CCC solid;
  }
  .login input {
    padding:5px; margin:5px;
  }
</style>
<body>
<form action="/login" method="post">
  <div class="login">
    <h2>Login</h2>
    <input type="text" name="username" size="25"  placeholder="username" />
    <input type="password" name="password" size="25" placeholder="password" />
    <input type="submit" value="Sign in"/>
  </div>
</form>
</body>
</html>
