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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>行情数据查询-登录</title>
<%--    <link rel="shortcut icon" href="/static/love.ico">--%>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4" style="margin-top: 300px">
            <h2 style="margin-left: 120px">Login</h2>
            <form id="loginForm" method="post">
                <div class="form-group">
                    <label>账号</label>
                    <input type="text" class="form-control" id="username" name="username">
                </div>
                <div class="form-group">
                    <label>密码</label>
                    <input type="password" class="form-control" id="password" name="password">
                </div>
                <button id="loginBtn" type="submit" class="btn btn-default">登录</button>
            </form>

        </div>
    </div>
</div>

<script>
    if(${status} == 0){
        // alert("登录成功");
        location.href="/hq/findAll";
    }else{
        alert("登录失败，用户名或密码错误");
    }
</script>


</body>
</html>
