<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <link href="<c:url value="/css/bootply.css"/>" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>

<body>
<script type="text/javascript" src="webjars/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $("#getNumber").click(function () {
            $.get("getNumber", function (data) {
                $("#numberInput").val(data);
            });
        });
    });
</script>

<div class="container-full">

    <div class="row">

        <div class="col-lg-12 text-center v-center">

            <h1>${message}</h1>
            <p class="lead">Тестовая страница для получения номера абонента</p>

            <br>

            <div class="input-group input-group-lg col-sm-offset-4 col-sm-4">
                <input id="numberInput" type="text" class="center-block form-control input-lg"
                       title="Введите номер телефона"
                       placeholder="Введите номер телефона">
                <span class="input-group-btn"><button id="getNumber" class="btn btn-lg btn-primary">Получить номер</button></span>
            </div>
        </div>

    </div> <!-- /row -->

</div> <!-- /container full -->

</body>
</html>