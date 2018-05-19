<%@ page import="Dao.CuorseDao" %>
<%@ page import="Entity.Course" %><%--
  Created by IntelliJ IDEA.
  User: MichaelOD
  Date: 2018/4/10
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = (String) request.getAttribute("id");
    CuorseDao cuorseDao = new CuorseDao();
    Course course = cuorseDao.getCourseById(Integer.valueOf(id));
    String f = (String) request.getAttribute("f");

%>
<html>
<head>
    <meta charset="utf-8">
    <title>山大食谱</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="stylesheet" href="./css/detail.css">
    <link rel="stylesheet" href="./dist/css/sm.css">
    <link rel="stylesheet" href="./dist/css/sm-extend.css">


</head>
<body style="background-color: #eeeeee">

<div class="page-group">
    <!-- 单个page ,第一个.page默认被展示-->
    <div class="page">
        <!-- 标题栏 -->
        <header class="bar bar-nav " style="background-color: #e82100">
            <a class="button button-link button-nav pull-left back" style="color: white"
               onClick="back()">
                <span class="icon icon-left"></span>
                返回
            </a>
            <h1 class="title" style="color: white"><%=course.getName()%>
            </h1>
        </header>
        <div class="content">
            <div class="content-padded">
                <div class="card demo-card-header-pic">
                    <div valign="bottom" class="card-header color-white no-border no-padding">
                        <img class='card-cover' src="<%=course.getPic()%>" alt="">
                    </div>
                </div>
                <div class="row">
                    <div class="col-100">
                        <h3 class="shop_title"><%=course.getName()%>
                        </h3>
                    </div>
                    <div class="col-100">
                                <span class="mui-price">
                                    <i>¥</i>
                                    <span class="mui-price-integer"><%=course.getPrice()%></span>
                                </span>
                    </div>

                    <div class="col-100 shop_Sales">
                        <div class="row no-gutter in-block">
                            <%
                                String[] tags = course.getTag().split("\\|");
                                for (String tag : tags) {
                            %>
                            <a href="#" class="button button-danger"><%=tag%>
                            </a>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
            <!--商品详情 - 详细信息 结束-->

            <div style="height: 10px"></div>

            <!--商品详情 - 内容介绍 开始-->
            <div class="content-padded padindo">
                <p><span class="absolutely">坐标</span></p>
                <p><%=course.getPosition()%>
                </p>

            </div>

            <div style="height: 10px"></div>

            <div class="content-padded zp">
                <p><span class="absolutely">配料</span></p>
                <p>
                    <%=course.getBatching()%>
                </p>
            </div>
            <div style="height: 10px"></div>

            <div class="content-padded zp">
                <p><span class="absolutely">做法</span></p>
                <p>
                    <%=course.getCookingTechniques()%>
                </p>
            </div>
        </div>
        <div style="height: 2.2rem"></div>
        <nav class="nav-menu">
            <a class="button button-fill button-big create-actions" style="border-radius: 0;height: 2rem">加入美食收藏</a>
        </nav>

    </div>

</div>

<!-- Left Panel with Reveal effect -->
<!-- 默认必须要执行$.init(),实际业务里一般不会在HTML文档里执行，通常是在业务页面代码的最后执行 -->
<script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
<script>$.config = {router: false}</script>
<script type='text/javascript' src='./dist/js/sm.js' charset='utf-8'></script>
<script type='text/javascript' src='./dist/js/sm-extend.js' charset='utf-8'></script>
<script>
    function back() {
        var f ="<%=f%>";
        if(f==="s"){
            window.location.href="gotoshoucang.jsp";
        }
        else {
            window.history.back(-1); return false;
        }

    }
</script>
<script>

    /*搜索记录相关*/
    //从localStorage获取搜索时间的数组
    var hisTime1;
    //从localStorage获取搜索内容的数组
    var hisItem1;
    //从localStorage获取最早的1个搜索时间
    var firstKey1;

    var idl;
    idl = "";

    function init() {
//每次执行都把2个数组置空
        hisTime1 = [];
        hisItem1 = [];

        var i = 0;
        console.log(localStorage.length);
        if (!isNaN(localStorage.key(i))) {
            for (; i < localStorage.length; i++) {
                hisItem1.push(localStorage.getItem(localStorage.key(i)));
                hisTime1.push(localStorage.key(i));
            }
        }
    }

    init();

    var value1 = "<%=course.getId()%>";
    var time1 = "l" + (new Date()).getTime();

    //输入的内容localStorage有记录
    var flag = true;
    if (hisItem1 != null) {
        for (var j = 0; j < localStorage.length; j++) {
            if (value1 == localStorage.getItem(localStorage.key(j)) && (localStorage.key(j).indexOf("l") == 0)) {
                localStorage.removeItem(localStorage.key(j));
                localStorage.setItem(time1, value1);
                flag = false;
                break;
            }
        }
        if (flag) {
            if (hisItem1.length > 2) {
                firstKey1 = hisTime1[0];
                localStorage.removeItem(firstKey1);
                console.log(firstKey1);
                localStorage.setItem(time1, value1);
                <%System.out.println("nbbnbnbnbnbn");%>
            } else {
                localStorage.setItem(time1, value1)
            }
        }
    }
    init();

</script>

<script>

    var hisTime;
    var hisItem;

    function init() {
        hisTime = [];
        hisItem = [];

        var i = 0;
        for (; i < localStorage.length; i++) {
            if (!isNaN(localStorage.key(i))) {
                hisItem.push(localStorage.getItem(localStorage.key(i)));
                hisTime.push(localStorage.key(i));
            }
        }
    }

    init();


    $(document).on('click', '.create-actions', function () {
        var buttons1 = [
            {
                text: '是否确定收藏该菜品',
                label: true
            },
            {
                text: '确定',
                bold: true,
                color: 'danger',
                onClick: function () {
                    var value = <%=course.getId()%>;
                    var time = "s" + (new Date()).getTime();
                    var flag = true;
                    if (hisItem != null) {
                        for (var j = 0; j < localStorage.length; j++) {
                            if ((value == localStorage.getItem(localStorage.key(j))) && (localStorage.key(j).indexOf("s") == 0)) {
                                $.alert("收藏过了哦");
                                flag = false;
                            }
                        }
                        if (flag) {
                            localStorage.setItem(time, value);
                            $.alert("收藏成功");
                        }
                    }
                    else {
                        localStorage.setItem(time, value);
                        $.alert("收藏成功");
                    }
                    init();

                }
            },
        ];
        var buttons2 = [
            {
                text: '取消',
                bg: 'danger'
            }
        ];
        var groups = [buttons1, buttons2];
        $.actions(groups);
    });
</script>
<script>$.init()</script>

</body>
</html>