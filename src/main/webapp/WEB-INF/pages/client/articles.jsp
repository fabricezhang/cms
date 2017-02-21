<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<!DOCTYPE html>
<html lang="en-us">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>开放性科学实践活动</title>
    <link rel="icon" href="${path}/assets/icon/favicon.ico" />
    <!--jquery库-->
    <script src="${path}/assets/js/jquery.min.js"></script>
    <!--bootstrap库-->
    <link href="${path}/assets/css/bootstrap.min.css" rel="stylesheet" />
    <script src="${path}/assets/js/bootstrap/bootstrap.min.js"></script>
    <!--[if lt IE 9]>
    <script src="${path}/assets/js/bootstrap/html5shiv.min.js"></script>
    <script src="${path}/assets/js/bootstrap/respond.min.js"></script>
    <![endif]-->
    <!--font-awesome字体库-->
    <link href="${path}/assets/css/font-awesome.min.css" rel="stylesheet" />
    <!--页面加载进度条-->
    <link href="${path}/assets/css/pace/dataurl.css" rel="stylesheet" />
    <script src="${path}/assets/js/pace/pace.min.js"></script>
    <!--平滑滚动到顶部库-->
    <script src="${path}/assets/js/jquery.scrolltopcontrol/scrolltopcontrol.js" type="text/javascript"></script>
    <!--jquery拓展方法-->
    <script src="${path}/assets/js/jquery.extend.js" type="text/javascript"></script>
    <link href="${path}/assets/css/index.css" rel="stylesheet" />
    <script src="${path}/assets/js/index.js" type="text/javascript"></script>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <%--<div class="jumbotron">--%>
    <%--<img></img>--%>
    <%--</div>--%>
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${path}/index">主页</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="${path}/articles"><i class="fa fa-book fa-fw"></i>文章</a></li>
                <li><a href="${path}/video"><i class="fa fa-video-camera fa-fw"></i>视频</a></li>
                <li><a href="${path}/admin/admin-index"><i class="fa fa-user fa-fw"></i>管理</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-expanded="false"><i class="fa fa-user fa-fw"></i>&nbsp;游客&nbsp;<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="${path}/admin/login"><i class="fa fa-sign-in fa-fw"></i>&nbsp;登录</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div style="height:60px;"></div>
<div class="container-fluid all">
    <div class="col-md-8 col-md-offset-2 ">
        <!--我是主要内容 start-->
        <div class="col-md-12">
            <h3  class="list-group-item active">文章列表</h3>
            <br>
            <div class="row">
                <div class="col-md-4 col-sm-12">
                    <ul class="list-group">
                        <li class="list-group-item-info">
                            <strong>物理</strong>
                        </li>
                        <c:if test="${!empty physicsArticleList}">
                            <c:forEach items="${physicsArticleList}" var="physicsArticle">
                                <li class="list-group-item">
                                        ${physicsArticle.title}（<a href="${path}/article/${physicsArticle.id}"
                                                                   target="_blank">阅读</a>）
                                </li>
                            </c:forEach>
                        </c:if>
                    </ul>
                </div>
                <div class="col-md-4 col-sm-12">
                    <ul class="list-group">
                        <li class="list-group-item-info">
                            <strong>化学</strong>
                        </li>
                        <c:if test="${!empty chemistryArticleList}">
                            <c:forEach items="${chemistryArticleList}" var="chemistryArticle">
                                <li class="list-group-item">
                                        ${chemistryArticle.title}（<a href="${path}/article/${chemistryArticle.id}"
                                                                     target="_blank">阅读</a>）
                                </li>
                            </c:forEach>
                        </c:if>
                    </ul>
                </div>
                <div class="col-md-4 col-sm-12">
                    <ul class="list-group">
                        <li class="list-group-item-info">
                            <strong>生物</strong>
                        </li>
                        <c:if test="${!empty biologyArticleList}">
                            <c:forEach items="${biologyArticleList}" var="biologyArticle">
                                <li class="list-group-item">
                                        ${biologyArticle.title}（<a href="${path}/article/${biologyArticle.id}"
                                                                   target="_blank">阅读</a>）
                                </li>
                            </c:forEach>
                        </c:if>
                    </ul>
                    <ul class="list-group">
                        <li class="list-group-item-info">
                            <strong>地理</strong>
                        </li>
                        <c:if test="${!empty geographyArticleList}">
                            <c:forEach items="${geographyArticleList}" var="geographyArticle">
                                <li class="list-group-item">
                                        ${geographyArticle.title}（<a href="${path}/article/${geographyArticle.id}"
                                                                     target="_blank">阅读</a>）
                                </li>
                            </c:forEach>
                        </c:if>
                    </ul>
                </div>
            </div>
        </div>
        <!--我是主要内容 end-->
    </div>
</div>
<a href="#top" id="goTop"><i class="fa fa-angle-up fa-3x"></i></a>
<div style="height:60px;"></div>
<div class="navbar-fixed-bottom panel-footer text-center">Copyrigh 2017</div>
</body>
</html>