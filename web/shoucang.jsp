<%--
  Created by IntelliJ IDEA.
  User: MichaelOD
  Date: 2018/4/7
  Time: 20:55
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
    <link rel="stylesheet" href="./css/shoucang.css">
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
        <header class="bar bar-nav" style="background-color: #e82100">
            <h1 class="title" style="color: #fafafa">我的收藏</h1>
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
            <a class="tab-item external active" href="./shoucang.jsp">
                <span class="icon icon-star"></span>
                <span class="tab-label">收藏</span>
            </a>
        </nav>

        <!-- 这里是页面内容区 -->
        <div class="content">
            <div class="buttons-tab ">
                <a href="#tab1" class="tab-link active button">美食收藏</a>
                <a href="#tab2" class="tab-link button">浏览历史</a>
                <a href="#tab3" class="tab-link button">意见反馈</a>
            </div>
            <div class="content-block">
                <div class="tabs">
                    <div id="tab1" class="tab active">
                        <div class="content-block">
                            <div class="card card-magin">
                                <div class="card-content">
                                    <div class="list-block media-list">
                                        <ul>
                                            <li>
                                                <a href="#" class="item-link item-content">
                                                    <div class="item-media"><img src="./images/musidangao.png"
                                                                                 style='width: 4rem;'></div>
                                                    <div class="item-inner">
                                                        <div class="item-title-row">
                                                            <div class="item-title">慕斯蛋糕</div>
                                                            <div class="item-after">￥6</div>
                                                        </div>
                                                        <div class="item-subtitle">四层&nbsp;&nbsp;西餐</div>
                                                        <div class="item-text">推荐理由：口感柔软，入口即化，质地松软，外型、色泽、结构都十分值得推荐</div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="item-link item-content">
                                                    <div class="item-media"><img src="./images/shiguobanfan.png"
                                                                                 style='width: 4rem;'></div>
                                                    <div class="item-inner">
                                                        <div class="item-title-row">
                                                            <div class="item-title">石锅拌饭</div>
                                                            <div class="item-after">￥8</div>
                                                        </div>
                                                        <div class="item-subtitle">二层&nbsp;&nbsp;西餐</div>
                                                        <div class="item-text">推荐理由：因为我觉得好吃啊，不服来辩</div>
                                                    </div>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab2" class="tab">
                        <div class="content-block">
                            <div class="card card-magin">
                                <div class="card-content">
                                    <div class="list-block media-list">
                                        <ul>
                                            <li>
                                                <a href="#" class="item-link item-content">
                                                    <div class="item-media"><img src="./images/shiguobanfan.png"
                                                                                 style='width: 4rem;'></div>
                                                    <div class="item-inner">
                                                        <div class="item-title-row">
                                                            <div class="item-title">石锅拌饭</div>
                                                            <div class="item-after">￥8</div>
                                                        </div>
                                                        <div class="item-subtitle">二层&nbsp;&nbsp;西餐</div>
                                                        <div class="item-text">推荐理由：因为我觉得好吃啊，不服来辩</div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="item-link item-content">
                                                    <div class="item-media"><img src="./images/musidangao.png"
                                                                                 style='width: 4rem;'></div>
                                                    <div class="item-inner">
                                                        <div class="item-title-row">
                                                            <div class="item-title">慕斯蛋糕</div>
                                                            <div class="item-after">￥6</div>
                                                        </div>
                                                        <div class="item-subtitle">四层&nbsp;&nbsp;西餐</div>
                                                        <div class="item-text">推荐理由：口感柔软，入口即化，质地松软，外型、色泽、结构都十分值得推荐</div>
                                                    </div>
                                                </a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab3" class="tab" >
                        <div class="content-block" >
                            <div style="text-align: center;height: 92%;background-color:white">
                                <textarea id="feedbackinput" class="feedback">
                            </textarea>
                                <br/>
                                <p class="shuoming"><span style="color: #e82100">*</span>以下为选填，留下您的联系方式有助于我们更快地联系到您并帮助您解决问题</p>
                                <div class="list-block mymagin">
                                    <ul>
                                        <!-- Text inputs -->
                                        <li>
                                            <div class="item-content">
                                                <div class="item-media"><i class="icon icon-message"></i></div>
                                                <div class="item-inner">
                                                    <div class="item-input">
                                                        <input type="text" placeholder="请输入您的QQ">
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="item-content">
                                                <div class="item-media"><i class="icon icon-phone"></i></div>
                                                <div class="item-inner">
                                                    <div class="item-input">
                                                        <input type="email" placeholder="请输入您的手机号">
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                    </ul>
                                </div>
                                <a id="feedback" class="button button-fill button-big button-magin">提交</a>
                            </div>
                            <script>
                                var btn = document.getElementById("feedback");
                                btn.onclick = function () {
                                    $.alert('我们已收到您的消息', '提交成功！');

                                }
                                var input =document.getElementById('feedbackinput');
                                input.onfocus =function (ev) {
                                        input.value="";
                                }
                            </script>
                        </div>
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