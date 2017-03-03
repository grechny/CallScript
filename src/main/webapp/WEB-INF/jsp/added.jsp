<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <c:url value="/css/bootply.css" var="jstlCss" />
    <link href="${jstlCss}" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>

<body>
<script type="text/javascript" src="webjars/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<div class="container-full">
    <div class="row">
        <div class="col-lg-12 text-center v-center">
            <h1 class="">Запись успешно добавлена</h1>

        </div>
    </div>
    <div class="row text-center v-center">
        <input class="btn btn-lg btn-primary" type="button" onclick="location.href='/';" value="Добавить еще одну запись" />
    </div>

</div> <!-- /container full -->

</body>
</html>