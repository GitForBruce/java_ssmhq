<%--
  Created by IntelliJ IDEA.
  User: baoguo.he
  Date: 2020/7/10
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>行情服务数据查询</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table align='center' border='1' cellspacing='0'>
    <tr>
        <td>id</td>
        <td>date</td>
        <td>trading_date</td>
        <td>hq_server</td>
        <td>main_instru</td>
        <td>tick_range</td>
        <td>tick_nums</td>
        <td>main_instru_faildesc</td>
        <td>tick_range_faildesc</td>
        <td>tick_nums_faildesc</td>
    </tr>
    <c:forEach items="${hqinfos}" var="u" varStatus="st">
        <tr>
            <td>${u.id}</td>
            <td>${u.date}</td>
            <td>${u.trading_date}</td>
            <td>${u.hq_server}</td>
            <td>${u.main_instru}</td>
            <td>${u.tick_range}</td>
            <td>${u.tick_nums}</td>
            <td>${u.main_instru_faildesc}</td>
            <td>${u.tick_range_faildesc}</td>
            <td>${u.tick_nums_faildesc}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
