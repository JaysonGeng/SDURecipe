<%@ page import="Entity.Course" %>
<%@ page import="Dao.CuorseDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: MichaelOD
  Date: 2018/4/8
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Course course = new Course();
    CuorseDao cuorseDao = new CuorseDao();

    String idss = request.getParameter("ids");
    System.out.println("idss   "+idss);

    String idls = request.getParameter("idl");
    System.out.println("idls   "+idls);

    String[] ids = idss.split("-");

    String[] idl = idls.split("-");


    ArrayList<Course> coursess = new ArrayList<Course>();
    ArrayList<Course> coursesl = new ArrayList<Course>();

    for (String index : ids) {
        String[] idsn =index.split(",");
        course = cuorseDao.getCourseById(Integer.valueOf(idsn[1]));
        course.setLoc_name(idsn[0]);
        coursess.add(course);
    }

    for (String index : idl) {
        String[] idln =index.split(",");
        course = cuorseDao.getCourseById(Integer.valueOf(idln[1]));
        course.setLoc_name(idln[0]);
        coursesl.add(course);
    }
%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <title>山大食谱</title>
    <link rel="stylesheet" href="dist/css/framework7.ios.css">
    <link rel="stylesheet" href="dist/css/framework7.ios.colors.css">
    <link rel="stylesheet" href="dist/css/framework7.material.css">
    <link rel="stylesheet" href="dist/css/framework7.material.colors.css">
    <link rel="stylesheet" href="css/upscroller.css">
    <link rel="stylesheet" href="css/my-app.css">
    <link rel="stylesheet" href="./dist/css/sm.css">
    <link rel="stylesheet" href="./css/shoucang.css">
    <script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
    <script type='text/javascript' src='./dist/js/sm.js' charset='utf-8'></script>

    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<body>
<!-- page集合的容器，里面放多个平行的.page，其他.page作为内联页面由路由控制展示 -->
<div class="page-group">
    <!-- 单个page ,第一个.page默认被展示-->
    <div class="page">
        <header class="bar bar-nav" style="background-color: #e82100;position: fixed;top: 0">
            <h1 class="title" style="color: #fafafa">我的收藏</h1>
        </header>
        <nav class="bar bar-tab">
            <a class="tab-item external " href="./index.jsp">
                <span class="icon icon-home"></span>
                <span class="tab-label">首页</span>
            </a>
            <a class="tab-item external " href="./caipu.jsp">
                <span class="icon icon-app"></span>
                <span class="tab-label">菜谱</span>
            </a>
            <a class="tab-item external active" href="./gotoshoucang.jsp">
                <span class="icon icon-star"></span>
                <span class="tab-label">收藏</span>
            </a>
        </nav>
        <div class="content" style="background: white">
            <div class="buttons-tab ">
                <a href="#tab1" class="tab-link active button">美食收藏</a>
                <a href="#tab2" class="tab-link button">浏览历史</a>
                <a href="#tab3" class="tab-link button">意见反馈</a>
            </div>
            <div class="content-block">
                <div class="tabs">
                    <div id="tab1" class="tab active">
                        <div class="list-block media-list" style="background-color: #eeeeee">
                            <div class="card " style="margin: 0.1rem;">
                                <div class="card-content">
                                    <div class="list-block media-list">
                                        <ul id="shoucang">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab2" class="tab">
                        <div class="content-block" style="background-color: #eeeeee">
                            <div class="card card-magin">
                                <div class="card-content">
                                    <div class="list-block media-list">
                                        <ul id="lishi">


                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab3" class="tab">
                        <div class="content-block">
                            <div style="text-align: center;height: 92%;background-color:white">
                                <textarea id="feedbackinput" class="feedback">
                            </textarea>
                                <br/>
                                <p class="shuoming"><span style="color: #e82100">*</span>以下为选填，留下您的联系方式有助于我们更快地联系到您并帮助您解决问题<br/>
                                    有任何技术问题请联系邮箱1013619679@qq.com
                                </p>
                                <div class="list-block mymagin">
                                    <ul>
                                        <!-- Text inputs -->
                                        <li>
                                            <div class="item-content">
                                                <div class="item-media"><i class="icon icon-message"></i></div>
                                                <div class="item-inner">
                                                    <div class="item-input">
                                                        <input id="qq" onkeyup="value=value.replace(/[^\d]/g,'')"
                                                               type="number" pattern="\d*" placeholder="请输入您的QQ">
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="item-content">
                                                <div class="item-media"><i class="icon icon-phone"></i></div>
                                                <div class="item-inner">
                                                    <div class="item-input">
                                                        <input id="phone" onkeyup="value=value.replace(/[^\d]/g,'')"
                                                               type="number" pattern="\d*" placeholder="请输入您的手机号">
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                    </ul>
                                </div>
                                <a id="feedback" class="feed button button-fill button-big button-magin">提交</a>
                            </div>
                            <footer style="bottom: 0rem ; text-align: center">学生在线 © 版权所有</footer>
                            <script>

                                var input = document.getElementById('feedbackinput');
                                input.value = "";
                                input.onfocus = function () {
                                    input.value = "";
                                }
                            </script>
                        </div>
                    </div>
                </div>
            </div>

        </div>


    </div>
</div>
<!--内容结束-->


<script type="text/javascript" src="js/framework7.js"></script>
<!-- Path to your app js-->
<script type="text/javascript" src="js/upscroller.js"></script>
<script type="text/javascript" src="js/my-app.js"></script>
<script>

    var myApp = new Framework7();

    var $$ = Dom7;

    var content = document.getElementById('feedbackinput');
    var qq = document.getElementById('qq');
    var phone = document.getElementById('phone');
    var feed = document.getElementById('feedback');

    feed.onclick = function () {
        if (content.value == '') {
            myApp.alert('请输入您的意见后再提交哦！', '提示');
        }
        else {
            $.showPreloader('提交中')
            setTimeout(function () {
                $.hidePreloader();
                console.log(content.value + '\n' + qq.value + '\n' + phone.value);
                myApp.alert('我们已收到您的意见', '提交成功!');
                content.value = '';
                qq.value = '';
                phone.value = '';
            }, 1500);
        }
    }
</script>
<script>
    function del(id) {
        localStorage.removeItem(id);
    }
</script>
<script>

    var ulll = document.getElementById("shoucang");
    <%
        for (Course cs : coursess ) {
    %>
    var liii = document.createElement('li');

    liii.innerHTML = '<li class="swipeout">' +
        '<a href="/Servlet.Detail?id=<%=cs.getId()%>" class="item-link item-content">' +
        '<div class="item-media align-center" style="text-align: center">' +
        '<img src="/Servlet.FindBookPictureServlet?bookId=<%=cs.getId()%>" style="width: 4.5rem;margin-top: 0.5rem">' +
        '</div><div class="item-inner"><div class="item-title-row">' +
        '<div class="item-title" style="color: #3d4541"><%=cs.getName()%></div>' +
        '<div class="item-after"><span class="item-price">￥<%=cs.getPrice()%></span></div>' +
        '</div><div class="item-subtitle" style="color: #3d4541">' +
        <%
           String[] tags = cs.getTag().split("\\|");
           for (String tag : tags) {
       %>
        '<%=tag%>&nbsp;&nbsp;' +
        <%
         }
        %>
        '</div>' +
        '<div class="item-text">配料：<%=cs.getBatching()%></div>' +
        '</div></a><div class="swipeout-actions-right">' +
        '<a href="#" onclick="del(\'<%=cs.getLoc_name()%>\')" class="swipeout-delete">删除</a>' +
        '</div>' +
        '</li>';
    ulll.appendChild(liii);
    <%
        }
    %>


    var ull = document.getElementById("lishi");

    <%
        for (Course cl : coursesl ) {
    %>

    var lii = document.createElement('li');

    lii.innerHTML = '<li class="swipeout">' +
        '<a href="/Servlet.Detail?id=<%=cl.getId()%>" class="item-link item-content">' +
        '<div class="item-media align-center" style="text-align: center">' +
        '<img src="/Servlet.FindBookPictureServlet?bookId=<%=cl.getId()%>" style="width: 4.5rem;margin-top: 0.5rem">' +
        '</div><div class="item-inner"><div class="item-title-row">' +
        '<div class="item-title" style="color: #3d4541"><%=cl.getName()%></div>' +
        '<div class="item-after"><span class="item-price">￥<%=cl.getPrice()%></span></div>' +
        '</div><div class="item-subtitle" style="color: #3d4541">' +
        <%
           String[] tags = cl.getTag().split("\\|");
           for (String tag : tags) {
       %>
        '<%=tag%>&nbsp;&nbsp;' +
        <%
         }
        %>
        '</div>' +
        '<div class="item-text">配料：<%=cl.getBatching()%></div>' +
        '</div></a><div class="swipeout-actions-right">' +
        '<a href="#" onclick="del(\'<%=cl.getLoc_name()%>\')" class="swipeout-delete">删除</a>' +
        '</div>' +
        '</li>';
    ull.appendChild(lii);
    <%
        }
    %>

</script>

</body>
</html>