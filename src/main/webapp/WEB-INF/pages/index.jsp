<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CMS User Login</title>
    <c:set value="${pageContext.request.contextPath}" var="path" scope="application"/>
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" type="text/css" href="${path}/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${path}/assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${path}/assets/css/form-elements.css">
    <link rel="stylesheet" type="text/css" href="${path}/assets/css/style.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<!-- Top content -->
<div class="top-content">

    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><strong>CMS Control Panel</strong> User Login </h1>
                    <div class="description">
                        <p>
                            This Is A Content Management System Demo and welcome to test it.
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>Login to CMS</h3>
                            <p>Enter your username and password to log on:</p>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-key"></i>
                        </div>
                    </div>
                    <div class="form-bottom">
                        <form:form action="${path}/login" method="post" commandName="user" role="form">
                            <div class="form-group">
                                <label class="sr-only" for="username">username</label>
                                <input type="text" id="username" name="nickname" placeholder="Username..." class="form-username form-control" >
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="password">Password</label>
                                <input type="password"  id="password" name="password" placeholder="Password..." class="form-password form-control">
                            </div>
                            <button type="submit" class="btn">Sign in!</button>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


<!-- Javascript -->
<script src="${path}/assets/js/jquery-1.11.1.min.js"></script>
<script src="${path}/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="${path}/assets/js/jquery.backstretch.min.js"></script>
<script src="${path}/assets/js/scripts.js"></script>

<!--[if lt IE 10]>
<script src="${path}/assets/js/placeholder.js"></script>
<![endif]-->

</body>

</html>