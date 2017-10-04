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
<script type="text/javascript" src="webjars/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
  $(document).ready(function () {

    $('#getNumber').click(function () {
      $.get("getNumber", function (data) {
        $("#numberInput").val(data);
      });
    });



    $("#submitButton").click(function(event) {
      if ($(".has-error:first").length) {
        $('html, body').animate({
          scrollTop: $(".has-error:first").offset().top
        });
        event.preventDefault();
      }
    });
  });
</script>

<div class="container-full">
    <div class="row">
        <div class="col-lg-12">
            <h1>Опрос радио</h1>
            <br>
            <p class="muted">Добрый день/вечер. Мы проводим опрос для изучения популярности
                телевидения в Беларуси. Ответьте, пожалуйста, на несколько вопросов.
                Это займет всего пару минут.</p>
            <br>

            <form:form action="/add" method="post" modelAttribute="formDTO">

                <div id="operatorDiv">
                    <b>Оператор</b><b style="color: red"> *</b><br>
                    <form:input path="form[operator]" type="text" class="form-control" style="width: 50%" title="Ваше имя" placeholder="Введите свое имя" required="true"/>
                    <br>
                </div>

                <div id="phoneNumberDiv">
                    <b>Телефон</b><b style="color: red"> *</b><br>
                    <div class="input-group input-group-medium col-sm-offset-0 col-sm-6">
                        <form:input path="form[phoneNumber]" id="numberInput" type="text" class="form-control input-medium"
                                    title="Введите номер телефона" placeholder="Введите номер телефона" required="true"/>
                        <span class="input-group-btn"><button id="getNumber" class="btn btn-medium btn-primary" type="button">Получить номер</button></span>
                    </div>
                    <br>
                </div>

                <div id="genderDiv" hidden>
                    <b>1. Пол (не спрашивать, определять по голосу)</b><br>
                    <form:radiobutton path="form[gender]" value="Мужской" label="Мужской"/><br>
                    <form:radiobutton path="form[gender]" value="Женский" label="Женский"/><br>
                    <br>
                </div>

                <div id="ageDiv" class="form-group" hidden>
                    <b>2. Возраст (должен быть в диапазоне 12-65 лет)</b><br>
                    <form:input path="form[age]" type="text" class="form-control" style="width: 50%" title="Введите возраст" placeholder="Введите возраст"/>
                    <div id="formageDivError" hidden>
                        <b style="color: red" class="h6">
                            Опрашиваем от 12 лет и старше
                        </b>
                    </div><br>
                </div>

                <button id="submitButton" class="btn btn-success btn-lg" disabled>Отправить</button>

                <br><br><br><br>

            </form:form>
        </div>

    </div> <!-- /row -->

</div> <!-- /container-full -->