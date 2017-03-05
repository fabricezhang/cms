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
    <!--平滑滚动到顶部库-->
    <script src="${path}/assets/js/jquery.scrolltopcontrol/scrolltopcontrol.js" type="text/javascript"></script>
    <!--jquery拓展方法-->
    <script src="${path}/assets/js/jquery.extend.js" type="text/javascript"></script>
    <link href="${path}/assets/css/index.css" rel="stylesheet" />
    <script src="${path}/assets/js/index.js" type="text/javascript"></script>
    <!--页面加载进度条-->
    <script src="${path}/assets/js/pace/pace.min.js"></script>
    <!--轮播图 -->
    <link href="${path}/assets/css/jquery.owl.carousel/owl.carousel.css" rel="stylesheet" />
    <script src="${path}/assets/js/jquery.owl.carousel/owl.carousel.min.js"></script>
    <!--二维码 -->
    <script src="${path}/assets/js/qrcode/qrcode.min.js"></script>
</head>
<body>
    <div class="container-fluid all">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <!--我是主要内容 start-->
                <div id="owl-demo" class="owl-carousel">
                    <div class="item"><img src="${path}/assets/image/banner/banner1.jpg" alt=""></div>
                    <div class="item"><img src="${path}/assets/image/banner/banner2.jpg" alt=""></div>
                    <div class="item"><img src="${path}/assets/image/banner/banner3.jpg" alt=""></div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-9 col-sm-12">
                                <ul class="row">
                                    <h3 class="title-physic">
                                        <strong>物理</strong>
                                    </h3>
                                    <c:if test="${!empty physicsArticleList}">
                                        <c:forEach items="${physicsArticleList}" var="physicsArticle">
                                            <li class="col-lg-4 col-sm-6 col-xs-11 list-group-item">
                                                    ${physicsArticle.title}<a class="badge badge-physic" href="${path}/article/${physicsArticle.id}"
                                                                               target="_blank">阅读</a>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                </ul>
                                <ul class="row">
                                    <h3 class="title-chemistry">
                                        <strong>化学</strong>
                                    </h3>
                                    <c:if test="${!empty chemistryArticleList}">
                                        <c:forEach items="${chemistryArticleList}" var="chemistryArticle">
                                            <li class="col-lg-4 col-sm-6 col-xs-11 list-group-item">
                                                    ${chemistryArticle.title}<a class="badge badge-chemistry" href="${path}/article/${chemistryArticle.id}"
                                                                                 target="_blank">阅读</a>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                </ul>
                                <ul class="row">
                                    <h3 class="title-biology">
                                        <strong>生物</strong>
                                    </h3>
                                    <c:if test="${!empty biologyArticleList}">
                                        <c:forEach items="${biologyArticleList}" var="biologyArticle">
                                            <li class="col-lg-4 col-sm-6 col-xs-11 list-group-item">
                                                    ${biologyArticle.title}<a class="badge badge-biology" href="${path}/article/${biologyArticle.id}"
                                                                               target="_blank">阅读</a>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                </ul>
                                <ul class="row">
                                    <h3 class="title-geography">
                                        <strong>地理</strong>
                                    </h3>
                                    <c:if test="${!empty geographyArticleList}">
                                        <c:forEach items="${geographyArticleList}" var="geographyArticle">
                                            <li class="col-lg-4 col-sm-6 col-xs-11 list-group-item">
                                                    ${geographyArticle.title}<a class="badge badge-geography" href="${path}/article/${geographyArticle.id}"
                                                                                 target="_blank">阅读</a>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                </ul>
                            </div>
                            <div class="col-md-2 col-md-offset-1 hidden-sm hidden-xs jumbotron_index" >
                                <div class="row" >
                                    <div class="col-md-10 col-md-offset-1">
                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <label>扫描二维码，使用手机阅读文章及视频</label>
                                                <div class="qrcode img-responsive img" id="qrcode"></div>
                                            </div>
                                            <div class="form-group">
                                                <label for="contact" class="col-md-12 control-label">联系方式</label>
                                                <div class="col-md-12">
                                                    <input type="text" class="form-control" id="contact"
                                                           placeholder="联系方式">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="comment" class="col-md-12 control-label">意见反馈</label>
                                                <div class="col-md-12">
                                                    <input type="text" class="form-control" id="comment"
                                                           placeholder="意见反馈">
                                                </div>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <div class="pull-left">
                                                <button type="submit" class="btn btn-default">提交</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--我是主要内容 end-->
            </div>
        </div>
    </div>
    <a href="#top" id="goTop"><i class="fa fa-angle-up fa-3x"></i></a>
    <div style="height:60px;"></div>
    <div class="navbar-bottom panel-footer text-center">Copyrigh 2017</div>
</body>
</html>