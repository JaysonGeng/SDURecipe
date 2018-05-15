<%--
  Created by IntelliJ IDEA.
  User: MichaelOD_WIN10
  Date: 2018/5/13
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Dao.PictureDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    PictureDao pictureDao =new PictureDao();
%>

<img style="width: 200px ; height: 200px" src="/Servlet.FindBookPictureServlet?bookId=4">

</body>
</html>
