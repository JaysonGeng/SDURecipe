<%@ page import="Dao.CuorseDao" %>
<%@ page import="Entity.Course" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: MichaelOD_WIN10
  Date: 2018/5/15
  Time: 0:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    CuorseDao cuorseDao = new CuorseDao();
    String name = (String) request.getAttribute("name");
    System.out.println(name);
    ArrayList<Course> courses = cuorseDao.getCourseByName(name);
%>
<html>
<head>
    <meta charset="utf-8">
    <title>山大食谱</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="stylesheet" href="./css/index.css">
    <link rel="stylesheet" href="./dist/css/sm.css">
    <link rel="stylesheet" href="./dist/css/sm-extend.css">
</head>
<body>
<div class="page-group">
    <!-- 单个page ,第一个.page默认被展示-->
    <div class="page">
        <!-- 标题栏 -->
        <header class="bar bar-nav " style="background-color: #e82100">
            <a class="button button-link button-nav pull-left back" style="color: white"
               onClick="javascript :window.history.back(-1); return false;">
                <span class="icon icon-left"></span>
                返回
            </a>
            <h1 class="title" style="color: white">搜索结果
            </h1>
        </header>

        <div class="content">
            <%--每日推荐--%>
            <div>
                <div class="card" style="margin: 0.2rem">
                    <div class="card-content">
                        <div class="list-block media-list">
                            <ul>
                                <%

                                    for (Course c : courses) {
                                %>

                                <li>
                                    <a href="./Servlet.Detail?id=<%=c.getId()%>" class="item-link item-content">
                                        <div class="item-media">
                                            <img src="./Servlet.FindBookPictureServlet?bookId=<%=c.getId()%>"
                                                 style='width: 4rem;'>
                                        </div>
                                        <div class="item-inner">
                                            <div class="item-title-row">
                                                <div class="item-title"><%=c.getName()%>
                                                </div>
                                                <div class="item-after">￥<%=c.getPrice()%>
                                                </div>
                                            </div>
                                            <div class="item-subtitle">
                                                <%
                                                    String[] tags = c.getTag().split("\\|");
                                                    for (String tag : tags) {
                                                %>
                                                <%=tag%>&nbsp;&nbsp;
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <div class="item-text">配料：<%=c.getBatching()%>
                                            </div>
                                        </div>
                                    </a>
                                </li>

                                <%
                                    }
                                %>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
<script>$.config = {router: false}</script>
<script type='text/javascript' src='./dist/js/sm.min.js' charset='utf-8'></script>
<script type='text/javascript' src='./dist/js/sm-extend.min.js' charset='utf-8'></script>
<script>$.init()</script>
<script src="./js/itcastEvent.js"></script>
<script src="./js/index.js"></script>
</body>
</html>
