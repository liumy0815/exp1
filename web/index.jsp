<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/7/11
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
<head>
  <title></title>
  <style type="text/css">
    body{
      position: absolute;
    }
    input{
      border:1px solid #000;
      margin: auto;
    }
  </style>
</head>
<body>
<%
  String message = (String) session.getAttribute("message");
  if (message != null)
    out.println(message);
  if(session.isNew()||"您猜对了,系统将重新分配随机数".equals(message))
    session.setAttribute("randomNumber", (int)(Math.random() * 100));
%>
<form action="compare.jsp" method="post">
  <table border="0" align="left">
    <tr>
      <td>—欢迎来玩猜数字—</td>
    </tr>
    <tr>
      <td>请输入0-99的随机数字:</td>
    </tr>
    <tr>
      <td><input type="text" name="userNumber"></td>
    </tr>
    <tr>
      <td align="center"><input type="submit" value="输入"> <input
              type="reset" value="撤销"></td>
    </tr>
  </table>
</form>
</body>
</html>

