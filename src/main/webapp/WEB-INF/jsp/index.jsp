<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

            <h1>Опрос радио</h1>

            <br>

            <p class="muted" align="left">Добрый вечер. Мы проводим опрос для изучения популярности
                радиостанций в Минске. Пригласите, пожалуйста, к телефону того члена семьи в
                возрасте от 12 до 65 лет, у которого ближайший день рождения.</p>

            <p class="muted" align="left">Для мобильных: Добрый вечер! Мы проводим опрос для
                изучения популярности
                радиостанций в Минске. Ответьте, пожалуйста, на несколько вопросов, это займет всего
                пару минут. Подскажите, пожалуйста, город, в котором вы находитесь.</p>

            <br>

            <form:form action="/add" method="post" modelAttribute="formEntity">
                <form:label path="phoneNumber">Телефон</form:label>

                <div class="input-group input-group-medium col-sm-offset-3 col-sm-6">
                    <form:input path="phoneNumber" id="numberInput" type="text" class="center-block form-control input-medium"
                           title="Введите номер телефона" placeholder="Введите номер телефона"/>
                    <span class="input-group-btn"><button id="getNumber" class="btn btn-medium btn-primary" type="button">Получить номер</button></span>
                </div>

                <br>

                <form:label path="city">Город</form:label>
                <form:input path="city" type="text" class="center-block form-control" style="width: 50%"
                       title="Введите город" placeholder="Введите город"/>

                <br><br><br><br>

                <button type="submit" class="btn btn-success btn-lg ">Отправить</button>
            </form:form>
        </div>

    </div> <!-- /row -->

</div> <!-- /container full -->

</body>
</html>