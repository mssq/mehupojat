﻿<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Kirjaudu sisään</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="resources/css/login.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="wrapper">

    <div id="headerbar">
        <a href="index.jsp" id="pagenameLink"><img src="resources/img/mehupojat.png"</a>
        <a href="" class="productsLink">Linkki #1</a>
        <a href="" class="productsLink">Linkki #2</a>    
    </div>

    <form method="POST" action="${contextPath}/login" class="form-signin">
        <h2 class="form-heading">Kirjaudu sisään</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Sähköpostiosoitteesi"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Salasanasi"/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Kirjaudu sisään</button>
            <h4 class="text-center"><a href="${contextPath}/registration">Luo asiakastili</a></h4>
        </div>

    </form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
