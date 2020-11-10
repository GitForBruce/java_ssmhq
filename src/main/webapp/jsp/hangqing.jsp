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
    <style>
        table {
            margin-top: 40px;
            margin-left: 10px;
            margin-right: 10px;
            table-layout: fixed;
        }
    </style>
</head>

<body onload="SetFontColor()">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<a href = "/hq/findAll" style="margin-left: 200px">显示全部</a>
<a href = "/hq/findFailure" style="margin-left: 300px">显示错误</a>

<table id="tab" align='center' border='1' cellspacing='0' height="100">
    <tr>
        <td>id</td>
        <td>当前时间</td>
        <td>交易日</td>
        <td>行情服务器</td>
        <td>最新交易日</td>
        <td>主力合约</td>
        <td>时间段</td>
        <td>tick数据</td>
        <td>主力合约错误描述</td>
        <td>时间段错误描述</td>
        <td>tick数据错误描述</td>
    </tr>
    <c:forEach items="${hqinfos}" var="u">
        <tr>
            <td style="font-size: 14px; width: 50px">${u.id}</td>
            <td style="font-size: 14px; width: 90px">${u.date}</td>
            <td style="font-size: 14px; width: 80px">${u.trading_date}</td>
            <td style="font-size: 14px; width: 120px">${u.hq_server}</td>
            <td style="font-size: 14px; width: 120px">${u.maxdayKLine}</td>
            <td style="font-size: 14px; width: 70px">${u.main_instru}</td>
            <td style="font-size: 14px; width: 70px">${u.tick_range}</td>
            <td style="font-size: 14px; width: 70px">${u.tick_nums}</td>
            <td style="font-size: 12px; width: 80px">${u.main_instru_faildesc}</td>
            <td style="font-size: 12px; width: 300px">${u.tick_range_faildesc}</td>
            <td style="font-size: 12px; width: 300px">${u.tick_nums_faildesc}</td>
<%--            <td style="font-size: 12px"><pre>${u.tick_range_faildesc}</pre></td>--%>
<%--            <td style="font-size: 12px"><pre>${u.tick_nums_faildesc}</pre></td>--%>
        </tr>
    </c:forEach>
</table>

<script>
    //根据条件改变单元格字体颜色
    function SetFontColor() {
        var tab = document.getElementById("tab");
        //行数
        var rows = tab.rows.length;
        //列数
        var cols = tab.rows[0].cells.length;

        for(var row=0; row<rows; row++){
            for(var col=0; col<cols; col++){
                //判断单元格值的条件
                if(tab.rows[row].cells[col].innerHTML.indexOf("FAIL") !== -1){
                    tab.rows[row].cells[col].style.color = "red";
                }
                if(tab.rows[row].cells[col].innerHTML === "PASS"){
                    tab.rows[row].cells[col].style.color = "blue";
                }
            }
        }
    }
</script>

</body>
</html>
