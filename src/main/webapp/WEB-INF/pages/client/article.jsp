<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
    <!--主要写的jquery拓展方法-->
    <script src="${path}/assets/js/jquery.extend.js" type="text/javascript"></script>
    <!--主要写的css代码-->
    <link href="${path}/assets/css/default.css" rel="stylesheet" type="text/css" />
    <!--主要写的js代码-->
    <script src="${path}/assets/js/default.js" type="text/javascript"></script>
    <link href="${path}/assets/css/jquery.owl.carousel/owl.carousel.css" rel="stylesheet" />
    <style>
        #owl-demo .item { margin: 3px; }
        #owl-demo .item img { display: block; width: 100%; height: auto; }
    </style>
    <script src="${path}/assets/js/jquery.owl.carousel/owl.carousel.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#owl-demo").owlCarousel({
                autoPlay: false,
                items: 3,
                itemsDesktop: [1199, 2],
                itemsDesktopSmall: [979, 1],
                itemsTablet: [769,1],
                itemsMobile: [479,1],
                itemsScaleUp: true,
                lazyLoad: true
            });
        });
    </script>
</head>
<body oncontextmenu=self.event.returnValue=false onselectstart="return false">
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
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false"><i class="fa fa-user fa-fw"></i>&nbsp;游客&nbsp;<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="${path}/admin/login"><i class="fa fa-sign-out fa-fw"></i>&nbsp;登录</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid all">
        <div class="sidebar">
            <ul class="nav">
                <li><h3 class="text-info">&nbsp;&nbsp;相关内容</h3></li>
                <c:if test="${!empty articleList}">
                    <c:forEach items="${articleList}" var="article">
                        <li><a href="${path}/article/${article.id}"><i class="fa fa-chevron-circle-right"></i>${article.title}</a></li>
                    </c:forEach>
                </c:if>
            </ul>
        </div>
        <div class="maincontent row">
            <ul class="breadcrumb">
                <li class="active"><Strong>课程详情</Strong></li>
            </ul>
            <div class="col-lg-12">
                <div id="owl-demo" class="owl-carousel">
                    <c:if test="${!empty article.imagePath}">
                        <c:set value="${ fn:split(article.imagePath, ';') }" var="imagePaths" />
                        <c:forEach items="${imagePaths}" var="imagePath">
                            <div class="item"><img class="lazyOwl" data-src="${imagePath}" alt="未找到课件"></div>
                        </c:forEach>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</body>
</html>