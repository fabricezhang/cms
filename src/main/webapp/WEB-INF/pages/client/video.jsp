<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
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
    <!--jquery.hammer手势插件-->
    <script src="${path}/assets/js/jquery.hammer/hammer.min.js"></script>
    <script src="${path}/assets/js/jquery.hammer/jquery.hammer.js"></script>
    <!--平滑滚动到顶部库-->
    <script src="${path}/assets/js/jquery.scrolltopcontrol/scrolltopcontrol.js" type="text/javascript"></script>
    <!--主要写的jquery拓展方法-->
    <script src="${path}/assets/js/jquery.extend.js" type="text/javascript"></script>
    <!--主要写的css代码-->
    <link href="${path}/assets/css/default.css" rel="stylesheet" type="text/css" />
    <!--主要写的js代码-->
    <script src="${path}/assets/js/default.js" type="text/javascript"></script>
    <link href="${path}/assets/css/video/video-js.min.css" rel="stylesheet">
    <script src="${path}/assets/js/video/video.min.js"></script>
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle show pull-left" data-target="sidebar">
                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
            </button>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${path}/index">主页</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="${path}/articles"><i class="fa fa-book fa-fw"></i>文章</a></li>
                <li class="active"><a href="${path}/video"><i class="fa fa-video-camera fa-fw"></i>视频</a></li>
                <li><a href="${path}/admin/admin-index"><i class="fa fa-user fa-fw"></i>管理</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-expanded="false"><i class="fa fa-user fa-fw"></i>&nbsp;游客&nbsp;<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="${path}/login"><i class="fa fa-sign-out fa-fw"></i>&nbsp;登录</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid all">
    <div class="sidebar">
        <ul class="nav">
            <li><h3 class=text-info>内容列表</h3></li>
            <li><a href="${path}/articles">所有文章</a></li>
            <li><a href="${path}/video">所有视频</a></li>
        </ul>
    </div>
    <div class="maincontent row">
        <ul class="breadcrumb">
            <li class="active"><Strong>视频————</Strong></li>
        </ul>
        <div class="col-sm-10 col-sm-offset-1">
            <div class="embed-responsive embed-responsive-16by9">
                <h4 class="media-heading">物理</h4>
                <video id="really-cool-video" class="video-js vjs-default-skin embed-responsive-item"
                       controls="" preload="auto" width="100%" height="100%" poster=""
                       data-setup="{}">
                    <%--<source src="http://video-js.zencoder.com/oceans-clip.mp4" type="video/mp4">--%>
                    <%--<source src="http://vjs.zencdn.net/v/oceans.webm" type="video/webm">--%>
                    <%--<source src="http://vjs.zencdn.net/v/oceans.ogv" type="video/ogg">--%>
                    <source src="http://115.28.8.165/videos/1.mp4" type="video/mp4" >
                </video>
            </div>
        </div>
        <!--我是主要内容 end-->
    </div>
</div>
</body>

</html>