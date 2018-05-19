<%@ page import="Entity.Course" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Dao.CuorseDao" %><%--
  Created by IntelliJ IDEA.
  User: MichaelOD
  Date: 2018/4/8
  Time: 0:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String classify = (String) request.getAttribute("classify");
    CuorseDao cuorseDao = new CuorseDao();
    ArrayList<Course> list = cuorseDao.getCourseByTag(classify);
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>山大食谱</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="stylesheet" href="./dist/css/sm.css">
    <link rel="stylesheet" href="./dist/css/sm-extend.min.css">
    <link rel="stylesheet" href="./css/classify.css">
    <script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
    <script>$.config = {router: false}</script>
    <script type='text/javascript' src='./dist/js/sm.min.js' charset='utf-8'></script>
    <script type='text/javascript' src='./dist/js/sm-extend.min.js' charset='utf-8'></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<body style="background-color: #eeeeee">

<!-- page集合的容器，里面放多个平行的.page，其他.page作为内联页面由路由控制展示 -->
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
            <h1 class="title" style="color: white"><%=classify%>
            </h1>
        </header>

        <!-- 工具栏 -->
        <nav class="bar bar-tab">
            <a class="tab-item external " href="./index.jsp">
                <span class="icon icon-home"></span>
                <span class="tab-label">首页</span>
            </a>
            <a class="tab-item external " href="./caipu.jsp">
                <span class="icon icon-app"></span>
                <span class="tab-label">菜谱</span>
            </a>
            <a class="tab-item external" href="./shoucangf.jsp">
                <span class="icon icon-star"></span>
                <span class="tab-label">收藏</span>
            </a>
        </nav>

        <!-- 这里是页面内容区 -->
        <div class="content" style="background-color: #fafafa">
            <div >
                <div class="card" style="margin: 0rem">
                    <div class="card-header">
                        <span><i class="fa fa-window-maximize" style="color: #e82100;"></i>
                        <span style="left: 2rem">窗口</span></span>
                    </div>
                    <div class="content-block">
                        <div class="buttons-row" style="margin-left: 0.8rem;margin-right: 0.8rem">
                            <a href="#tab1" class="tab-link active button">①</a>
                            <a href="#tab2" class="tab-link button">②</a>
                            <a href="#tab3" class="tab-link button">③</a>
                            <a href="#tab4" class="tab-link button">④</a>
                            <a href="#tab5" class="tab-link button">⑤</a>
                            <a href="#tab6" class="tab-link button">⑥</a>
                        </div>
                    </div>
                    <div class="content-block" style="padding-top: 0.4rem;padding-bottom: 0.5rem; margin-left: 0.8rem;margin-right: 0.8rem">
                        <div class="buttons-row">
                            <a href="#tab7" class="tab-link button">⑦</a>
                            <a href="#tab8" class="tab-link button">⑧</a>
                            <a href="#tab9" class="tab-link button">⑨</a>
                            <a href="#tab10" class="tab-link button">⑩</a>
                            <a href="#tab11" class="tab-link button">⑪</a>
                            <a href="#tab12" class="tab-link button">⑫</a>
                        </div>
                    </div>
                    <div class="tabs">
                        <div id="tab1" class="tab active">
                            <div class="content-block">
                                <div class="card-content" style="margin-top: 0.5rem ">
                                    <div class="list-block media-list">
                                        <ul id="w1">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab2" class="tab">
                            <div class="content-block">
                                <div class="card-content" style="margin-top: 0.5rem">
                                    <div class="list-block media-list">
                                        <ul id="w2">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab3" class="tab">
                            <div class="content-block">
                                <div class="card-content" style="margin-top: 0.5rem">
                                    <div class="list-block media-list">
                                        <ul id="w3">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab4" class="tab">
                            <div class="content-block">
                                <div class="card-content" style="margin-top: 0.5rem">
                                    <div class="list-block media-list">
                                        <ul id="w4">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab5" class="tab">
                            <div class="content-block">
                                <div class="card-content" style="margin-top: 0.5rem">
                                    <div class="list-block media-list">
                                        <ul id="w5">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab6" class="tab">
                            <div class="content-block">
                                <div class="card-content" style="margin-top: 0.5rem">
                                    <div class="list-block media-list">
                                        <ul id="w6">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab7" class="tab">
                            <div class="content-block">
                                <div class="card-content" style="margin-top: 0.5rem">
                                    <div class="list-block media-list">
                                        <ul id="w7">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab8" class="tab">
                            <div class="content-block">
                                <div class="card-content" style="margin-top: 0.5rem">
                                    <div class="list-block media-list">
                                        <ul id="w8">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab9" class="tab">
                            <div class="content-block">
                                <div class="card-content" style="margin-top: 0.5rem">
                                    <div class="list-block media-list">
                                        <ul id="w9">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab10" class="tab">
                            <div class="content-block">
                                <div class="card-content" style="margin-top: 0.5rem">
                                    <div class="list-block media-list">
                                        <ul id="w10">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab11" class="tab">
                            <div class="content-block">
                                <div class="card-content" style="margin-top: 0.5rem">
                                    <div class="list-block media-list">
                                        <ul id="w11">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab12" class="tab">
                            <div class="content-block">
                                <div class="card-content" style="margin-top: 0.5rem">
                                    <div class="list-block media-list">
                                        <ul id="w12">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <script>

        // for (var j = 1; j < 13; j++) {
        //     var name = '#w' + j;
        //     var li = '<li>' +
        //         '<a href="./Servlet.Detail" class="item-link item-content">' +
        //         '<div class="item-media">' +
        //         '<img src="./images/shiguobanfan.png" style=\'width: 4rem;\'>' +
        //         '</div>' +
        //         '<div class="item-inner">' +
        //         '<div class="item-title-row">' +
        //         '<div class="item-title">石锅拌饭</div>' +
        //         '<div class="item-after">￥' + j + '</div>' +
        //         '</div>' +
        //         '<div class="item-subtitle">二层&nbsp;&nbsp;西餐</div>' +
        //         '<div class="item-text">配料：********</div>' +
        //         '</div>' +
        //         '</a>' +
        //         '</li>'
        //     for (var i = 0; i < 10; i++) {
        //         console.log(name);
        //         $(name).append(li);
        //     }
        // }

        <%
             for (Course ccc :list ) {
        %>
        var name = '#w' + <%=ccc.getWindow()%>;
        var li = '<li>' +
            '<a href="./Servlet.Detail?id=<%=ccc.getId()%>" class="item-link item-content">' +
            '<div class="item-media">' +
            '<img src="<%=ccc.getPic()%>" style=\'width: 4rem;\'>' +
            '</div>' +
            '<div class="item-inner">' +
            '<div class="item-title-row">' +
            '<div class="item-title"><%=ccc.getName()%></div>' +
            '<div class="item-after">￥<%=ccc.getPrice()%></div>' +
            '</div>' +
            '<div class="item-subtitle">' +
            <%
                String[] tags = ccc.getTag().split("\\|");
                for (String tag : tags) {
            %>
            '<%=tag%>&nbsp;&nbsp;'+
            <%
             }
            %>
            '</div>' +
            '<div class="item-text">配料：<%=ccc.getBatching()%></div>' +
            '</div>' +
            '</a>' +
            '</li>';
        $(name).append(li);
        <%
             }
        %>
        <%

        %>
    </script>
    <!-- 其他的单个page内联页（如果有） -->
    <%--<div class="page">...</div>--%>
</div>


<!-- 默认必须要执行$.init(),实际业务里一般不会在HTML文档里执行，通常是在业务页面代码的最后执行 -->
<script>$.init()</script>

</body>
</html>