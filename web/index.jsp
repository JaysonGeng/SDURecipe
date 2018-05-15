<%@ page import="Dao.CuorseDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Entity.Course" %>
<%@ page import="Dao.TuisongDao" %>
<%@ page import="Entity.TuiSong" %><%--
  Created by IntelliJ IDEA.
  User: MichaelOD
  Date: 2018/4/5
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    CuorseDao cuorseDao = new CuorseDao();
    ArrayList<Course> courses = cuorseDao.getTuijianCuorse(1);

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
    <link rel="stylesheet" href="./css/index.css">


</head>
<body style="background-color: #eeeeee">

<!-- page集合的容器，里面放多个平行的.page，其他.page作为内联页面由路由控制展示 -->
<div class="page-group">
    <!-- 单个page ,第一个.page默认被展示-->
    <div class="page">
        <!-- 标题栏 -->
        <header class="bar bar-nav header" id="head">
            <%--class="bar bar-nav header"--%>
            <div class="row">
                <div class="col-15">
                    <a class="icon header-a pull-left open-panel"><img src="./images/logo_wite.png"></a>
                </div>
                <div class="col-75">
                    <div class="h-search h-title">
                        <a href="#" class="open-about" data-popup=".popup-about">
                            <span style="color: #3d4145"><i class="icon icon-search"></i>寻找新美味</span>
                        </a>
                    </div>
                </div>
                <div class="col-10">
                    <a class="icon icon-menu" style="color: white"></a>
                </div>
            </div>

        </header>

        <!-- 工具栏 -->
        <nav class="bar bar-tab">
            <a class="tab-item external active" href="./index.jsp">
                <span class="icon icon-home"></span>
                <span class="tab-label">首页</span>
            </a>
            <a class="tab-item external" href="./caipu.jsp">
                <span class="icon icon-app"></span>
                <span class="tab-label">菜谱</span>
            </a>
            <a class="tab-item external" href="./gotoshoucang.jsp">
                <span class="icon icon-star"></span>
                <span class="tab-label">收藏</span>
            </a>
        </nav>

        <!-- 这里是页面内容区 -->
        <div class="content">
            <!--轮播图-->

            <div class="jd_carousel">
                <ul class="clearfix carousel_img" style="background-color: #ffffff;margin: 0">

                    <li>
                        <a href="javascript:;"><img style="height: 10rem;width: 100%" src="./images/shiguobanfan.png"
                                                    alt=""></a>
                    </li>
                    <%
                        int index = 1;
                        for (Course cc : courses) {
                            if (index > 3)
                                break;
                    %>
                    <li>
                        <a href="./Servlet.Detail?id=<%=cc.getId()%>">
                            <img style="height: 10rem;width: 100%"
                                 src="<%=cc.getPic()%>"
                                 alt="<%=cc.getName()%>"></a>
                    </li>
                    <%
                            index++;
                        }
                    %>
                </ul>
                <ul class="clearfix indexer">
                    <li class="active"></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>


            <!--首页导航-->
            <div class="c-category-nav" style="background-color: #ffffff;padding-bottom: 1rem">
                <%
                    String[] s = {"家常菜", "西餐", "清真", "川菜", "汤", "粥", "面食", "四层"};
                    for (int i = 1; i < 3; i++) {
                %>

                <ul class="row" style="margin-top: 0;margin-bottom: 0;padding-top:0;">
                    <%
                        for (int j = 0; j < 4; j++) {

                    %>
                    <li class="col-25">
                        <a href="./Servlet.Classify?classify=<%=s[(i - 1) * 4 + j]%>">
                            <p style="color: #555555"><%=s[(i - 1) * 4 + j]%>
                            </p>
                        </a>
                    </li>
                    <%
                        }
                    %>
                </ul>
                <%
                    }
                %>
            </div>
            <%--每日推荐--%>
            <div>
                <div class="card" style="margin: 0.2rem">
                    <div class="card-header">
                        <span><img src="./images/dianzan.png"
                                   style="width: 13px ;height: 13px;margin-right: 4px">
                        <span style="left: 2rem">每日推荐</span></span>
                        <a href="./lishi_tuijian.jsp" style="color: #5f646e;font-size: 0.7rem">历史推荐 >></a>
                    </div>
                    <div class="card-content">
                        <div class="list-block media-list">
                            <ul>
                                <%

                                    for (Course c : courses) {
                                %>

                                <li>
                                    <a href="./Servlet.Detail?id=<%=c.getId()%>" class="item-link item-content">
                                        <div class="item-media"><img
                                                src="<%=c.getPic()%>"
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
                                            <div class="item-text">推荐理由：<%=c.getReason()%>
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
            <%--每日推送--%>
            <div>
                <div class="card" style="margin: 0.2rem">
                    <div class="card-header">
                        <span><img src="./images/bell.png"
                                   style="width: 13px ;height: 13px;margin-right: 4px">
                        <span style="left: 2rem">每日推送</span></span>
                        <a href="./lishi_tuisong.jsp" style="color:#5f646e;font-size: 0.7rem">历史推送 >></a>
                    </div>
                    <div class="card-content">
                        <div class="list-block media-list">
                            <ul>
                                <%
                                    TuisongDao tuisongDao = new TuisongDao();
                                    ArrayList<TuiSong> tuiSongs = tuisongDao.getTuijian();
                                    for (TuiSong tuisong : tuiSongs) {
                                %>
                                <li>
                                    <a href="<%=tuisong.getUrl()%>" class="item-link item-content">
                                        <div class="item-media"><img src="<%=tuisong.getPicture()%>"
                                                                     style='width: 4rem;'>
                                        </div>
                                        <div class="item-inner">
                                            <div class="item-title-row">
                                                <div class="item-title"><%=tuisong.getName()%>
                                                </div>
                                            </div>
                                            <div class="item-text"><%=tuisong.getReason()%>
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
<div class="popup popup-about">
    <div class="content-block">

        <div class="page">
            <!-- 标题栏 -->
            <header class="bar bar-nav">
                <div class="searchbar">
                    <a class="searchbar-cancel close-popup">取消</a>
                    <div class="search-input">
                        <form name="input" action="/Servlet.ResultServlet" method="get">
                            <label class="icon icon-search" for="search"></label>
                            <input type="search" id='search' name="name" results="0" onsearch="SiteSearch()"
                                   placeholder='输入关键字...'/>
                        </form>
                    </div>
                </div>
            </header>

            <!-- 这里是页面内容区 -->
            <div class="content" style="margin: 1rem">
                <div class="content-block">
                    <div class="lsss" style="margin-bottom: 1rem">历史搜索:</div>
                    <div class="sslb" id="lssslb">
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


<%
    String[] name = {"中心", "软件园", "兴隆山", "洪家楼", "趵突泉", "千佛山", "青岛"};
    String[] id = {"zx", "rjy", "xls", "hjl", "btq", "qfs", "qd"};
%>
<!-- Left Panel with Reveal effect -->
<div class="panel panel-left panel-reveal" style="background-color: white">
    <div class="content-block">
        <p>请选择校区</p>
        <p>
        <div class="list-block">
            <ul>

                <%
                    for (int i = 0; i < name.length; i++) {

                %>
                <li class="item-content item-link alert-text " id="<%=id[i]%>">
                    <div class="item-media"><i class="icon icon-f7"></i></div>
                    <div class="item-inner">
                        <div class="item-title"><%=name[i]%>
                        </div>
                    </div>
                </li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
    </p>
    <!-- Click on link with "close-panel" class will close panel -->
    <p><a href="#" class="close-panel">关闭</a></p>
</div>

<script>

    var name = ["中心", "软件园", "兴隆山", "洪家楼", "趵突泉", "千佛山", "青岛"];
    var id = ["#zx", "#rjy", "#xls", "#hjl", "#btq", "#qfs", "#qd"];

    for (var i = 1; i < 7; i++) {
        $(id[i]).click(function () {
            $.alert("该校区暂未开放");
        })
    }
    $(document).on('click', '.icon-menu', function () {
        $.alert('这里是一大波齐园的介绍，这里是一大波齐园的介绍。这里是一大波齐园的介绍，这里是一大波齐园的介绍。这里是一大波齐园的介绍，这里是一大波齐园的介绍。', '齐园(硬广)');
    });

    $('#zx').click(function () {
        $.showPreloader('一大波美食正在靠近~');
        setTimeout(function () {
            $.hidePreloader();
        }, 1500);
        $.closePanel();
    })
</script>

<!-- 默认必须要执行$.init(),实际业务里一般不会在HTML文档里执行，通常是在业务页面代码的最后执行 -->
<script>$.init()</script>
<script>
    $(document).on('click', '.open-about', function () {
        $.popup('.popup-about');
        var serachfocus = document.getElementById('search').focus();
    });
</script>
<script src="./js/itcastEvent.js"></script>
<script src="./js/index.js"></script>
<script>
    var search = document.getElementById('search');

    search.onfocus = function (ev) {
        search.value = '';
    }

    function SiteSearch() {
        var sszd = search.value;
        if (sszd == '') {
            $.alert("不输入内容的话，是没有办法找到好吃的哦！");
        } else {
            setHistoryItems(sszd);
        }
    };
    //取值写入页面
    $(function () {
        var str = localStorage.historyItems;
        var s = '';
        if (str == undefined) {
            s = '<div class="rmssts">暂无搜索记录...</div>';
            $("#lssslb").append(s);
        } else {
            var strs = new Array();
            strs = str.split("|");
            for (var i = 0; i < strs.length; i++) {
                s += "<a href='./Servlet.ResultServlet?name=" + strs[i] + "' class='button button-warning button-round' style='display: inline-block;margin: 0.2rem'>" + strs[i] + "</a>";
            }
            $("#lssslb").append(s + '<a href="#" class="button button-danger button-round scls" style="margin: 2rem 2rem 1rem 2rem" onclick="clearHistory();">清除历史记录</a>');
        }
    });

    //存值方法,新的值添加在首位
    function setHistoryItems(keyword) {
        let {historyItems} = localStorage;
        if (historyItems === undefined) {
            localStorage.historyItems = keyword;
        } else {
            historyItems = keyword + '|' + historyItems.split('|').filter(e => e != keyword).join('|');
            localStorage.historyItems = historyItems;
        }
    };

    //清除值
    function clearHistory() {
        localStorage.removeItem('historyItems');
        var div = document.getElementById("lssslb");
        while (div.hasChildNodes()) //当div下还存在子节点时 循环继续
        {
            div.removeChild(div.firstChild);
        }
        $("#lssslb").append('<div class="rmssts">暂无搜索记录...</div>');
    }

</script>
</body>
</html>