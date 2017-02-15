<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" href="${path}/assets/css/ccs.login/form-elements.css">
    <link rel="stylesheet" type="text/css" href="${path}/assets/css/ccs.login/style.css">
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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media
    queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file://
    -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
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
                <li><a href="${path}/article"><i class="fa fa-book fa-fw"></i>文章</a></li>
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
<div class="container-fluid all">
    <div class="sidebar">
        <ul class="nav">
            <li><a href="${path}/index">主页</a></li>
            <li><a href="${path}/articles">文章列表</a></li>
            <li><a href="${path}/video">视频列表</a></li>
        </ul>
    </div>
    <div class="maincontent row">
        <div class="col-sm-6 col-sm-offset-3 form-box">
            <div class="form-top">
                <div class="form-top-left">
                    <h3>登录内容发布管理系统</h3>
                    <p>请输入您的用户名和密码</p>
                </div>
                <div class="form-top-right">
                    <i class="fa fa-key"></i>
                </div>
            </div>
            <div class="form-bottom">
                <form:form action="${path}/admin/login" method="post" commandname="user"
                           role="form">
                    <div class="form-group">
                        <label class="sr-only" for="username">用户名</label>
                        <input type="text" id="username" name="username" placeholder="用户名..."
                               class="form-control">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="password">密码</label>
                        <input type="password" id="password" name="password" placeholder="密码..."
                               class="form-control">
                    </div>
                    <button type="submit" class="btn">登录</button>
                </form:form>
            </div>
        </div>
        <!--我是主要内容 end-->
    </div>
</div>
</body>

</html>