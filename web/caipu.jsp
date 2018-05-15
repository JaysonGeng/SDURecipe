<%--
  Created by IntelliJ IDEA.
  User: MichaelOD
  Date: 2018/4/5
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="./css/caipu.css?4564646">
    <script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
    <script>$.config = {router: false}</script>
    <script type='text/javascript' src='./dist/js/sm.min.js' charset='utf-8'></script>
    <script type='text/javascript' src='./dist/js/sm-extend.min.js' charset='utf-8'></script>

</head>
<body style="background-color: #eeeeee">

<!-- page集合的容器，里面放多个平行的.page，其他.page作为内联页面由路由控制展示 -->
<div class="page-group">
    <!-- 单个page ,第一个.page默认被展示-->
    <div class="page">
        <!-- 标题栏 -->
        <header class="bar bar-nav" style="background-color: #e82100">
            <h1 class="title" style="color: #fafafa">菜谱</h1>
        </header>

        <!-- 工具栏 -->
        <nav class="bar bar-tab">
            <a class="tab-item external " href="./index.jsp">
                <span class="icon icon-home"></span>
                <span class="tab-label">首页</span>
            </a>
            <a class="tab-item external active" href="./caipu.jsp">
                <span class="icon icon-app"></span>
                <span class="tab-label">菜谱</span>
            </a>
            <a class="tab-item external" href="./shoucangf.jsp">
                <span class="icon icon-star"></span>
                <span class="tab-label">收藏</span>
            </a>
        </nav>

        <!-- 这里是页面内容区 -->
        <div class="content">

            <div class="card card-magin-caipu">
                <div class="card-header">楼层</div>
                <div class="card-content" style="text-align: center">
                    <div class="row">
                        <a href="/Servlet.Classify?classify=负一层">
                            <img class="row-image-caipu" src="./images/floor-1.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=一层">
                            <img class="row-image-caipu" src="./images/floor1.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=二层">
                            <img class="row-image-caipu" src="./images/floor2.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=三层">
                            <img class="row-image-caipu" src="./images/floor3.png" >
                        </a>
                    </div>
                    <div class="row">
                        <a href="/Servlet.Classify?classify=四层">
                            <img class="row-image-caipu" src="./images/floor4.png" >
                        </a>
                        <img class="row-image-caipu" src="./images/kong.png" >
                        <img class="row-image-caipu" src="./images/kong.png" >
                        <img class="row-image-caipu" src="./images/kong.png" >
                    </div>
                </div>
            </div>


            <div class="card card-magin-caipu">
                <div class="card-header">菜系</div>
                <div class="card-content" style="text-align: center">
                    <div class="row">
                        <a href="/Servlet.Classify?classify=川菜">
                            <img class="row-image-caipu" src="./images/chuan.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=鲁菜">
                            <img class="row-image-caipu" src="./images/lu.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=粤菜">
                            <img class="row-image-caipu" src="./images/yu.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=苏菜">
                            <img class="row-image-caipu" src="./images/su.png" >
                        </a>
                    </div>
                    <div class="row">
                        <a href="/Servlet.Classify?classify=浙菜">
                            <img class="row-image-caipu" src="./images/zhe.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=闽菜">
                            <img class="row-image-caipu" src="./images/min.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=湘菜">
                            <img class="row-image-caipu" src="./images/xiang.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=徽菜">
                            <img class="row-image-caipu" src="./images/hui.png" >
                        </a>
                    </div>
                    <div class="row">
                        <a href="/Servlet.Classify?classify=西餐">
                            <img class="row-image-caipu" src="./images/xican.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=清真">
                            <img class="row-image-caipu" src="./images/qingzhen.png" >
                        </a>
                        <img class="row-image-caipu" src="./images/kong.png" >
                        <img class="row-image-caipu" src="./images/kong.png" >
                    </div>
                </div>
            </div>


            <div class="card card-magin-caipu">
                <div class="card-header">场景</div>
                <div class="card-content" style="text-align: center">
                    <div class="row">
                        <a href="/Servlet.Classify?classify=早餐">
                            <img class="row-image-caipu" src="./images/zaocan.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=午餐">
                            <img class="row-image-caipu" src="./images/wucan.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=晚餐">
                            <img class="row-image-caipu" src="./images/wancan.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=宵夜">
                            <img class="row-image-caipu" src="./images/xiaoye.png" >
                        </a>
                    </div>
                </div>
            </div>


            <div class="card card-magin-caipu">
                <div class="card-header">普通菜品</div>
                <div class="card-content" style="text-align: center">
                    <div class="row" >
                        <a href="/Servlet.Classify?classify=家常菜">
                            <img class="row-image-caipu" src="./images/jiachangcai.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=素菜">
                            <img class="row-image-caipu" src="./images/sucai.png">
                        </a>
                        <a href="/Servlet.Classify?classify=面食">
                            <img class="row-image-caipu" src="./images/mianshi.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=冷菜">
                            <img class="row-image-caipu" src="./images/lengcai.png" >
                        </a>
                    </div>
                    <div class="row">
                        <a href="/Servlet.Classify?classify=汤">
                            <img class="row-image-caipu" src="./images/tang.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=粥">
                            <img class="row-image-caipu" src="./images/zhou.png" >
                        </a>
                        <a href="/Servlet.Classify?classify=下饭菜">
                            <img class="row-image-caipu" src="./images/xiafancai.png" >
                        </a>
                        <img class="row-image-caipu" src="./images/kong.png" >
                    </div>
                </div>
            </div>

        </div>


    </div>

    <!-- 其他的单个page内联页（如果有） -->
    <%--<div class="page">...</div>--%>
</div>

<!-- Left Panel with Reveal effect -->

</div>
<!-- 默认必须要执行$.init(),实际业务里一般不会在HTML文档里执行，通常是在业务页面代码的最后执行 -->
<script>$.init()</script>

</body>
</html>