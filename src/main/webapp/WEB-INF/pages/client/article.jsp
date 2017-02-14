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
    <link href="${path}/assets/css/jquery.mmenu/demo.css" rel="stylesheet" />
    <link href="${path}/assets/css/jquery.mmenu/jquery.mmenu.all.css" rel="stylesheet" />
    <link href="${path}/assets/css/jquery.owl.carousel/owl.carousel.css" rel="stylesheet" />
    <style>
        #owl-demo .item { margin: 3px; }
        #owl-demo .item img { display: block; width: 100%; height: auto; }
    </style>

    <script src="${path}/assets/js/jquery.min.js"></script>
    <script src="${path}/assets/js/jquery.owl.carousel/owl.carousel.min.js"></script>
    <script src="${path}/assets/js/jquery.mmenu/jquery.mmenu.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('nav#menu').mmenu();
            $("#owl-demo").owlCarousel({
                autoPlay: false,
                items: 3,
                itemsDesktop: [1199, 2],
                itemsDesktopSmall: [979, 1],
                itemsTablet: [769,1],
                itemsMobile: [479,1],
                itemsScaleUp: true
            });
        });
    </script>
</head>
<body oncontextmenu=self.event.returnValue=false onselectstart="return false">
<div id="page">
    <div class="header">
        <a href="#menu"></a>
        开放性科学实践活动
    </div>
    <div class="content">
        <div id="owl-demo" class="owl-carousel">
            <div class="item"><img src="http://p1.bqimg.com/567571/eac62a6e10a27a3a.png" alt="Owl Image"></div>
            <div class="item"><img src="http://i1.piimg.com/567571/734c2ae8aa23999c.png" alt="Owl Image"></div>
            <div class="item"><img src="http://placehold.it/1200x675&text=First+slide" alt="Owl Image"></div>
            <div class="item"><img src="http://placehold.it/1200x675&text=First+slide" alt="Owl Image"></div>
            <div class="item"><img src="http://placehold.it/1200x675&text=First+slide" alt="Owl Image"></div>
            <div class="item"><img src="http://placehold.it/1200x675&text=First+slide" alt="Owl Image"></div>
            <div class="item"><img src="http://placehold.it/1200x675&text=First+slide" alt="Owl Image"></div>
            <div class="item"><img src="http://placehold.it/1200x675&text=First+slide" alt="Owl Image"></div>
        </div>
    </div>

    <nav id="menu">
        <ul>
            <li><a href="#">Home</a></li>
            <li>
                <span>About us</span>
                <ul>
                    <li><a href="#about/history">History</a></li>
                    <li>
                        <span>The team</span>
                        <ul>
                            <li><a href="#about/team/management">Management</a></li>
                            <li><a href="#about/team/sales">Sales</a></li>
                            <li><a href="#about/team/development">Development</a></li>
                        </ul>
                    </li>
                    <li><a href="#about/address">Our address</a></li>
                </ul>
            </li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </nav>
</div>
</body>
</html>