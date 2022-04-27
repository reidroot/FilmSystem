<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022/4/25
  Time: 18:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SSM框架整合测试</title>
</head>
<body>
    <table border="1">
        <tr>
            <th>管理员ID</th>
            <th>管理员账号</th>
            <th>管理员密码</th>
        </tr>
        <tr>
            <td>${admin.adminId}</td>
            <td>${admin.adminName}</td>
            <td>${admin.adminPwd}</td>
        </tr>
    </table>
</body>
</html>
