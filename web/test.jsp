<%--
  Created by IntelliJ IDEA.
  User: MichaelOD
  Date: 2018/4/8
  Time: 1:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="list-block media-list">
    <div class="row" style="text-align: center;padding-bottom: 0.2rem">
        <div class="col-5">&nbsp;</div>
        <div class="col-15"><a href="#tab1" class="tab-link button active button-round">01</a></div>
        <div class="col-15"><a href="#tab2" class="tab-link button button-round">02</a></div>
        <div class="col-15"><a href="#tab3" class="tab-link button button-round">03</a></div>
        <div class="col-15"><a href="#tab4" class="tab-link button button-round">04</a></div>
        <div class="col-15"><a href="#tab5" class="tab-link button button-round">05</a></div>
        <div class="col-15"><a href="#tab6" class="tab-link button button-round">06</a></div>
        <div class="col-5">&nbsp;</div>
    </div>
    <div class="row" style="text-align: center;padding-top: 0.4rem;padding-bottom: 0.4rem">
        <div class="col-5">&nbsp;</div>
        <div class="col-15"><a href="#tab1" class="tab-link button button-round">07</a></div>
        <div class="col-15"><a href="#tab2" class="tab-link button button-round">08</a></div>
        <div class="col-15"><a href="#tab3" class="tab-link button button-round">09</a></div>
        <div class="col-15"><a href="#tab4" class="tab-link button button-round">10</a></div>
        <div class="col-15"><a href="#tab5" class="tab-link button button-round">11</a></div>
        <div class="col-15"><a href="#tab6" class="tab-link button button-round">12</a></div>
        <div class="col-5">&nbsp;</div>
    </div>
</div>
<div class="content-block">
    <%
        for (int i = 1; i <13 ; i++) {

    %>
    <div class="tabs">
        <div id="tab<%=i%>" class="tab active">
            <div class="content-block">
                <p>This is tab <%=i%> content</p>
            </div>
        </div>
    </div>
    <%}%>
</div>

</body>
</html>
