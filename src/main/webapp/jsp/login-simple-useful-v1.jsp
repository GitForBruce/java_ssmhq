<%--
  Created by IntelliJ IDEA.
  User: baoguo.he
  Date: 2020/7/10
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<h2>登录</h2>
<form action="/user/login" method="post">
    用户名：<input type="text" name="username">
    密码：<input type="password" name="password">
    <input type="submit"  value="登录">
</form>
</body>
<script>
    if(${status} == 0){
        // alert("登录成功");
        location.href="/hq/findAll";
    }else{
        alert("登录失败，用户名或密码错误");
    }
</script>
</html>
