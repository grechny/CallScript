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
    $('#formCity').change(function () {
      $("#causeRefusedDiv").attr("hidden", "true");
      $("#genderDiv").attr("hidden", "true");

      var city = $("#formCity").val();
      var $whatRadioListenLastWeek = $("#whatRadioListenLastWeek");
      $whatRadioListenLastWeek.html("");
      $whatRadioListenLastWeek.append("<option value>Выберите радиостанции</option>");

      if (city === "Минск") {
        $whatRadioListenLastWeek.append("<option value=\"Радио Минск\">Радио Минск</option>");
        $whatRadioListenLastWeek.append("<option value=\"Юмор FM\">Юмор FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Мелодии Века\">Мелодии Века</option>");
        $whatRadioListenLastWeek.append("<option value=\"Минская Волна\">Минская Волна</option>");
        $whatRadioListenLastWeek.append("<option value=\"Новое Радио\">Новое Радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Русское Радио Минск\">Русское Радио Минск</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио UNISTAR\">Радио UNISTAR</option>");
        $whatRadioListenLastWeek.append("<option value=\"Хит-Радио\">Хит-Радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Пилот FM\">Пилот FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио ОНТ\">Радио ОНТ</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио РОКС\">Радио РОКС</option>");
        $whatRadioListenLastWeek.append("<option value=\"Народное радио\">Народное радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Культура\">Культура</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радиус FM\">Радиус FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Би-Эй\">Радио Би-Эй</option>");
        $whatRadioListenLastWeek.append("<option value=\"Столица\">Столица</option>");
        $whatRadioListenLastWeek.append("<option value=\"Душевное радио\">Душевное радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"1-й Национальный канал белорусского радио\">1-й Национальный канал белорусского радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Легенды FM\">Легенды FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Мир\">Радио Мир</option>");
        $whatRadioListenLastWeek.append("<option value=\"Альфа радио\">Альфа радио</option>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Брест") {
        $whatRadioListenLastWeek.append("<option value=\"Радио Минск\">Радио Минск</option>");
        $whatRadioListenLastWeek.append("<option value=\"Юмор FM\">Юмор FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Новое Радио\">Новое Радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио UNISTAR\">Радио UNISTAR</option>");
        $whatRadioListenLastWeek.append("<option value=\"Пилот FM\">Пилот FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио РОКС\">Радио РОКС</option>");
        $whatRadioListenLastWeek.append("<option value=\"Культура\">Культура</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радиус FM\">Радиус FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Би-Эй\">Радио Би-Эй</option>");
        $whatRadioListenLastWeek.append("<option value=\"1-й Национальный канал белорусского радио\">1-й Национальный канал белорусского радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Мир\">Радио Мир</option>");
        $whatRadioListenLastWeek.append("<option value=\"Альфа радио\">Альфа радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Город FM (Брест)\">Город FM (Брест)</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Брест\">Радио Брест</option>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Витебск") {
        $whatRadioListenLastWeek.append("<option value=\"Радио Минск\">Радио Минск</option>");
        $whatRadioListenLastWeek.append("<option value=\"Юмор FM\">Юмор FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Новое Радио\">Новое Радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Пилот FM\">Пилот FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио РОКС\">Радио РОКС</option>");
        $whatRadioListenLastWeek.append("<option value=\"Культура\">Культура</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радиус FM\">Радиус FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Би-Эй\">Радио Би-Эй</option>");
        $whatRadioListenLastWeek.append("<option value=\"1-й Национальный канал белорусского радио\">1-й Национальный канал белорусского радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Мир\">Радио Мир</option>");
        $whatRadioListenLastWeek.append("<option value=\"Альфа радио\">Альфа радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Русское Радио Витебск\">Русское Радио Витебск</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Витебск\">Радио Витебск</option>");
        $whatRadioListenLastWeek.append("<option value=\"Европа Плюс (Витебск)\">Европа Плюс (Витебск)</option>");
        $whatRadioListenLastWeek.append("<option value=\"Ретро Люкс FM (Витебск)\">Ретро Люкс FM (Витебск)</option>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Гомель") {
        $whatRadioListenLastWeek.append("<option value=\"Радио Минск\">Радио Минск</option>");
        $whatRadioListenLastWeek.append("<option value=\"Юмор FM\">Юмор FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Новое Радио\">Новое Радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио UNISTAR\">Радио UNISTAR</option>");
        $whatRadioListenLastWeek.append("<option value=\"Пилот FM\">Пилот FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио РОКС\">Радио РОКС</option>");
        $whatRadioListenLastWeek.append("<option value=\"Культура\">Культура</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радиус FM\">Радиус FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Би-Эй\">Радио Би-Эй</option>");
        $whatRadioListenLastWeek.append("<option value=\"Душевное радио\">Душевное радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"1-й Национальный канал белорусского радио\">1-й Национальный канал белорусского радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Мир\">Радио Мир</option>");
        $whatRadioListenLastWeek.append("<option value=\"Гомель FM\">Гомель FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Гомель Плюс\">Гомель Плюс</option>");
        $whatRadioListenLastWeek.append("<option value=\"Гомельское городское радио\">Гомельское городское радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Правда (Гомель)\">Радио Правда (Гомель)</option>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Гродно") {
        $whatRadioListenLastWeek.append("<option value=\"Юмор FM\">Юмор FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Новое Радио\">Новое Радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Пилот FM\">Пилот FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио РОКС\">Радио РОКС</option>");
        $whatRadioListenLastWeek.append("<option value=\"Народное радио\">Народное радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Культура\">Культура</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радиус FM\">Радиус FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Би-Эй\">Радио Би-Эй</option>");
        $whatRadioListenLastWeek.append("<option value=\"Душевное радио\">Душевное радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"1-й Национальный канал белорусского радио\">1-й Национальный канал белорусского радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Мир\">Радио Мир</option>");
        $whatRadioListenLastWeek.append("<option value=\"Альфа радио\">Альфа радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Гродно\">Радио Гродно</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио MFM (Гродно)\">Радио MFM (Гродно)</option>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Могилев") {
        $whatRadioListenLastWeek.append("<option value=\"Радио Минск\">Радио Минск</option>");
        $whatRadioListenLastWeek.append("<option value=\"Юмор FM\">Юмор FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Новое Радио\">Новое Радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио UNISTAR\">Радио UNISTAR</option>");
        $whatRadioListenLastWeek.append("<option value=\"Пилот FM\">Пилот FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио РОКС\">Радио РОКС</option>");
        $whatRadioListenLastWeek.append("<option value=\"Культура\">Культура</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радиус FM\">Радиус FM</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Би-Эй\">Радио Би-Эй</option>");
        $whatRadioListenLastWeek.append("<option value=\"1-й Национальный канал белорусского радио\">1-й Национальный канал белорусского радио</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Мир\">Радио Мир</option>");
        $whatRadioListenLastWeek.append("<option value=\"Радио Могилев\">Радио Могилев</option>");
        $whatRadioListenLastWeek.append("<option value=\"Русское Радио Могилев\">Русское Радио Могилев</option>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Другой") {
        $("#causeRefusedDiv").removeAttr("hidden");
      }});
    $("[name='form[gender]']").change(function () {
      $("#ageDiv").removeAttr("hidden");
    });
    $("#ageDiv").change(function () {
      $("#lastMonthListenDiv").removeAttr("hidden");
    });
    $("#formlastMonthListen1").change(function () {
      $("#educationDiv").attr("hidden", "hidden");
      $("#lastWeekListenDiv").removeAttr("hidden");
    });
    $("#formlastMonthListen2").change(function () {
      $("#lastWeekListenDiv").attr("hidden", "hidden");
      $("#educationDiv").removeAttr("hidden");
    });
    $("#formlastWeekListen1").change(function () {
      $("#educationDiv").attr("hidden", "hidden");
      $("#whatRadioListenLastWeekDiv").removeAttr("hidden");
    });
    $("#formlastWeekListen2").change(function () {
      $("#whatRadioListenLastWeekDiv").attr("hidden", "hidden");
      $("#educationDiv").removeAttr("hidden");
    });
  });
</script>

<div class="container-full">
    <div class="row">
        <div class="col-lg-12">
            <h1>Опрос радио</h1>
            <br>
            <p class="muted">Добрый вечер. Мы проводим опрос для изучения популярности
                радиостанций в Минске. Пригласите, пожалуйста, к телефону того члена семьи в
                возрасте от 12 до 65 лет, у которого ближайший день рождения.</p>
            <p class="muted">Для мобильных: Добрый вечер! Мы проводим опрос для изучения популярности
                радиостанций в Минске. Ответьте, пожалуйста, на несколько вопросов, это займет всего
                пару минут. Подскажите, пожалуйста, город, в котором вы находитесь.</p>
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

                <div id="cityDiv">
                    <b>Город</b><b style="color: red"> *</b><br>
                    <form:select id="formCity" path="form[city]" required="true">
                        <form:option value="">Выберите город</form:option>
                        <c:forEach var="radioStation" items="${radioStations}">
                            <form:option value="${radioStation.key}" label="${radioStation.key}"/>
                        </c:forEach>
                    </form:select>
                    <br><br>
                </div>

                <div id="genderDiv" hidden>
                    <b>1. Пол (не спрашивать, определять по голосу)</b><br>
                    <form:radiobutton path="form[gender]" value="Мужской" label="Мужской"/><br>
                    <form:radiobutton path="form[gender]" value="Женский" label="Женский"/><br>
                    <br>
                </div>

                <div id="ageDiv" hidden>
                    <b>2. Возраст (должен быть в диапазоне 12-65 лет)</b><br>
                    <form:input path="form[age]" type="text" class="form-control" style="width: 50%" title="Введите возраст" placeholder="Введите возраст"/>
                    <br>
                </div>

                <div id="lastMonthListenDiv" hidden>
                    <b>3. Слушали ли Вы радио или, может быть, присутствовали при работающем радио за последний месяц?</b><br>
                    <form:radiobutton path="form[lastMonthListen]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[lastMonthListen]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="lastWeekListenDiv" hidden>
                    <b>4. А за последнюю неделю Вы радио слушали?</b><br>
                    <form:radiobutton path="form[lastWeekListen]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[lastWeekListen]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="whatRadioListenLastWeekDiv" hidden>
                    <b>5. Я сейчас назову радиостанции, а Вы укажите, пожалуйста, какие из них Вы слушали за последнюю неделю?</b><br>
                    <form:select id="whatRadioListenLastWeek" path="form[whatRadioListenLastWeek]" type="text" class="form-control" style="width: 50%" multiple="true"/>
                    <br><br>
                </div>

                <div id="yesterdayListenDiv" hidden>
                    <b>6. Слушали ли Вы радио вчера?</b><br>
                    <form:radiobutton path="form[yesterdayListen]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[yesterdayListen]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="yesterdayListen1Div" hidden>
                    <b>6. Нам важно узнать, какие радиостанции Вы слушали вчера, и, чтобы это было точнее, давайте вспомним Ваш вчерашний день. Слушали ли Вы радио…</b><br><br>

                    <b>6.1 Где слушали радио?</b><br>
                    <form:radiobutton path="form[whereListen1]" value="На работе/учебе" label="На работе/учебе"/><br>
                    <form:radiobutton path="form[whereListen1]" value="Дома" label="Дома"/><br>
                    <form:radiobutton path="form[whereListen1]" value="Дома" label="Дома"/><br>
                    <form:radiobutton path="form[whereListen1]" value="В машине" label="В машине"/><br>
                    <form:radiobutton path="form[whereListen1]" value="В общ. транспорте" label="В общ. транспорте"/><br>
                    <form:radiobutton path="form[whereListen1]" value="Вне помещения (по дороге,на велосипеде)" label="Вне помещения (по дороге,на велосипеде)"/><br>
                    <form:radiobutton path="form[whereListen1]" value="Другое" label="Другое"/><br>

                    <b>6.1 Промежуток Времени</b><br>
                    <form:input path="form[timeInterval1]" type="text" class="form-control" style="width: 50%"/><br>

                    <b>6.1 Какие радиостанции слушали</b><br>
                    <form:input path="form[whatRadioListen1]" type="text" class="form-control" style="width: 50%"/><br>

                    <b>6.1 С помощью чего слушали радио</b><br>
                    <form:radiobutton path="form[whichDevice1]" value="Радиоприемник (FM. AM)" label="Радиоприемник (FM. AM)"/><br>
                    <form:radiobutton path="form[whichDevice1]" value="Автомагнитола" label="Автомагнитола"/><br>
                    <form:radiobutton path="form[whichDevice1]" value="Мобильный телефон, смартфон-через встроенный FM-тюнер" label="Мобильный телефон, смартфон-через встроенный FM-тюнер"/><br>
                    <form:radiobutton path="form[whichDevice1]" value="Мобильный телефон, смартфон-через Интернет" label="Мобильный телефон, смартфон-через Интернет"/><br>
                    <form:radiobutton path="form[whichDevice1]" value="Компьютер, ноутбук, планшет-через Интернет" label="Компьютер, ноутбук, планшет-через Интернет"/><br>
                    <form:radiobutton path="form[whichDevice1]" value="Другое" label="Другое"/><br>
                    <br>
                </div>

                <div id="yesterdayListen2Div" hidden>
                    <b>6.2 Где слушали радио?</b><br>
                    <form:radiobutton path="form[whereListen2]" value="На работе/учебе" label="На работе/учебе"/><br>
                    <form:radiobutton path="form[whereListen2]" value="Дома" label="Дома"/><br>
                    <form:radiobutton path="form[whereListen2]" value="Дома" label="Дома"/><br>
                    <form:radiobutton path="form[whereListen2]" value="В машине" label="В машине"/><br>
                    <form:radiobutton path="form[whereListen2]" value="В общ. транспорте" label="В общ. транспорте"/><br>
                    <form:radiobutton path="form[whereListen2]" value="Вне помещения (по дороге,на велосипеде)" label="Вне помещения (по дороге,на велосипеде)"/><br>
                    <form:radiobutton path="form[whereListen2]" value="Другое" label="Другое"/><br>

                    <b>6.2 Промежуток Времени</b><br>
                    <form:input path="form[timeInterval2]" type="text" class="form-control" style="width: 50%"/><br>

                    <b>6.2 Какие радиостанции слушали</b><br>
                    <form:input path="form[whatRadioListen2]" type="text" class="form-control" style="width: 50%"/><br>

                    <b>6.2 С помощью чего слушали радио</b><br>
                    <form:radiobutton path="form[whichDevice2]" value="Радиоприемник (FM. AM)" label="Радиоприемник (FM. AM)"/><br>
                    <form:radiobutton path="form[whichDevice2]" value="Автомагнитола" label="Автомагнитола"/><br>
                    <form:radiobutton path="form[whichDevice2]" value="Мобильный телефон, смартфон-через встроенный FM-тюнер" label="Мобильный телефон, смартфон-через встроенный FM-тюнер"/><br>
                    <form:radiobutton path="form[whichDevice2]" value="Мобильный телефон, смартфон-через Интернет" label="Мобильный телефон, смартфон-через Интернет"/><br>
                    <form:radiobutton path="form[whichDevice2]" value="Компьютер, ноутбук, планшет-через Интернет" label="Компьютер, ноутбук, планшет-через Интернет"/><br>
                    <form:radiobutton path="form[whichDevice2]" value="Другое" label="Другое"/><br>
                    <br>
                </div>

                <div id="yesterdayListen3Div" hidden>
                    <b>6.3 Где слушали радио?</b><br>
                    <form:radiobutton path="form[whereListen3]" value="На работе/учебе" label="На работе/учебе"/><br>
                    <form:radiobutton path="form[whereListen3]" value="Дома" label="Дома"/><br>
                    <form:radiobutton path="form[whereListen3]" value="Дома" label="Дома"/><br>
                    <form:radiobutton path="form[whereListen3]" value="В машине" label="В машине"/><br>
                    <form:radiobutton path="form[whereListen3]" value="В общ. транспорте" label="В общ. транспорте"/><br>
                    <form:radiobutton path="form[whereListen3]" value="Вне помещения (по дороге,на велосипеде)" label="Вне помещения (по дороге,на велосипеде)"/><br>
                    <form:radiobutton path="form[whereListen3]" value="Другое" label="Другое"/><br>

                    <b>6.3 Промежуток Времени</b><br>
                    <form:input path="form[timeInterval3]" type="text" class="form-control" style="width: 50%"/><br>

                    <b>6.3 Какие радиостанции слушали</b><br>
                    <form:input path="form[whatRadioListen3]" type="text" class="form-control" style="width: 50%"/><br>

                    <b>6.3 С помощью чего слушали радио</b><br>
                    <form:radiobutton path="form[whichDevice3]" value="Радиоприемник (FM. AM)" label="Радиоприемник (FM. AM)"/><br>
                    <form:radiobutton path="form[whichDevice3]" value="Автомагнитола" label="Автомагнитола"/><br>
                    <form:radiobutton path="form[whichDevice3]" value="Мобильный телефон, смартфон-через встроенный FM-тюнер" label="Мобильный телефон, смартфон-через встроенный FM-тюнер"/><br>
                    <form:radiobutton path="form[whichDevice3]" value="Мобильный телефон, смартфон-через Интернет" label="Мобильный телефон, смартфон-через Интернет"/><br>
                    <form:radiobutton path="form[whichDevice3]" value="Компьютер, ноутбук, планшет-через Интернет" label="Компьютер, ноутбук, планшет-через Интернет"/><br>
                    <form:radiobutton path="form[whichDevice3]" value="Другое" label="Другое"/><br>
                    <br>
                </div>

                <div id="yesterdayListen4Div" hidden>
                    <b>6.4 Где слушали радио?</b><br>
                    <form:radiobutton path="form[whereListen4]" value="На работе/учебе" label="На работе/учебе"/><br>
                    <form:radiobutton path="form[whereListen4]" value="Дома" label="Дома"/><br>
                    <form:radiobutton path="form[whereListen4]" value="Дома" label="Дома"/><br>
                    <form:radiobutton path="form[whereListen4]" value="В машине" label="В машине"/><br>
                    <form:radiobutton path="form[whereListen4]" value="В общ. транспорте" label="В общ. транспорте"/><br>
                    <form:radiobutton path="form[whereListen4]" value="Вне помещения (по дороге,на велосипеде)" label="Вне помещения (по дороге,на велосипеде)"/><br>
                    <form:radiobutton path="form[whereListen4]" value="Другое" label="Другое"/><br>

                    <b>6.4 Промежуток Времени</b><br>
                    <form:input path="form[timeInterval4]" type="text" class="form-control" style="width: 50%"/><br>

                    <b>6.4 Какие радиостанции слушали</b><br>
                    <form:input path="form[whatRadioListen4]" type="text" class="form-control" style="width: 50%"/><br>

                    <b>6.4 С помощью чего слушали радио</b><br>
                    <form:radiobutton path="form[whichDevice4]" value="Радиоприемник (FM. AM)" label="Радиоприемник (FM. AM)"/><br>
                    <form:radiobutton path="form[whichDevice4]" value="Автомагнитола" label="Автомагнитола"/><br>
                    <form:radiobutton path="form[whichDevice4]" value="Мобильный телефон, смартфон-через встроенный FM-тюнер" label="Мобильный телефон, смартфон-через встроенный FM-тюнер"/><br>
                    <form:radiobutton path="form[whichDevice4]" value="Мобильный телефон, смартфон-через Интернет" label="Мобильный телефон, смартфон-через Интернет"/><br>
                    <form:radiobutton path="form[whichDevice4]" value="Компьютер, ноутбук, планшет-через Интернет" label="Компьютер, ноутбук, планшет-через Интернет"/><br>
                    <form:radiobutton path="form[whichDevice4]" value="Другое" label="Другое"/><br>
                    <br>
                </div>

                <div id="yesterdayListen5Div" hidden>
                    <b>6.5 Где слушали радио?</b><br>
                    <form:radiobutton path="form[whereListen5]" value="На работе/учебе" label="На работе/учебе"/><br>
                    <form:radiobutton path="form[whereListen5]" value="Дома" label="Дома"/><br>
                    <form:radiobutton path="form[whereListen5]" value="Дома" label="Дома"/><br>
                    <form:radiobutton path="form[whereListen5]" value="В машине" label="В машине"/><br>
                    <form:radiobutton path="form[whereListen5]" value="В общ. транспорте" label="В общ. транспорте"/><br>
                    <form:radiobutton path="form[whereListen5]" value="Вне помещения (по дороге,на велосипеде)" label="Вне помещения (по дороге,на велосипеде)"/><br>
                    <form:radiobutton path="form[whereListen5]" value="Другое" label="Другое"/><br>

                    <b>6.5 Промежуток Времени</b><br>
                    <form:input path="form[timeInterval5]" type="text" class="form-control" style="width: 50%"/><br>

                    <b>6.5 Какие радиостанции слушали</b><br>
                    <form:input path="form[whatRadioListen5]" type="text" class="form-control" style="width: 50%"/><br>

                    <b>6.5 С помощью чего слушали радио</b><br>
                    <form:radiobutton path="form[whichDevice5]" value="Радиоприемник (FM. AM)" label="Радиоприемник (FM. AM)"/><br>
                    <form:radiobutton path="form[whichDevice5]" value="Автомагнитола" label="Автомагнитола"/><br>
                    <form:radiobutton path="form[whichDevice5]" value="Мобильный телефон, смартфон-через встроенный FM-тюнер" label="Мобильный телефон, смартфон-через встроенный FM-тюнер"/><br>
                    <form:radiobutton path="form[whichDevice5]" value="Мобильный телефон, смартфон-через Интернет" label="Мобильный телефон, смартфон-через Интернет"/><br>
                    <form:radiobutton path="form[whichDevice5]" value="Компьютер, ноутбук, планшет-через Интернет" label="Компьютер, ноутбук, планшет-через Интернет"/><br>
                    <form:radiobutton path="form[whichDevice5]" value="Другое" label="Другое"/><br>
                    <br>
                </div>

                <div id="yesterdayListen6Div" hidden>
                    <b>6.6 Где слушали радио?</b><br>
                    <form:radiobutton path="form[whereListen6]" value="На работе/учебе" label="На работе/учебе"/><br>
                    <form:radiobutton path="form[whereListen6]" value="Дома" label="Дома"/><br>
                    <form:radiobutton path="form[whereListen6]" value="Дома" label="Дома"/><br>
                    <form:radiobutton path="form[whereListen6]" value="В машине" label="В машине"/><br>
                    <form:radiobutton path="form[whereListen6]" value="В общ. транспорте" label="В общ. транспорте"/><br>
                    <form:radiobutton path="form[whereListen6]" value="Вне помещения (по дороге,на велосипеде)" label="Вне помещения (по дороге,на велосипеде)"/><br>
                    <form:radiobutton path="form[whereListen6]" value="Другое" label="Другое"/><br>

                    <b>6.6 Промежуток Времени</b><br>
                    <form:input path="form[timeInterval6]" type="text" class="form-control" style="width: 50%"/><br>

                    <b>6.6 Какие радиостанции слушали</b><br>
                    <form:input path="form[whatRadioListen6]" type="text" class="form-control" style="width: 50%"/><br>

                    <b>6.6 С помощью чего слушали радио</b><br>
                    <form:radiobutton path="form[whichDevice6]" value="Радиоприемник (FM. AM)" label="Радиоприемник (FM. AM)"/><br>
                    <form:radiobutton path="form[whichDevice6]" value="Автомагнитола" label="Автомагнитола"/><br>
                    <form:radiobutton path="form[whichDevice6]" value="Мобильный телефон, смартфон-через встроенный FM-тюнер" label="Мобильный телефон, смартфон-через встроенный FM-тюнер"/><br>
                    <form:radiobutton path="form[whichDevice6]" value="Мобильный телефон, смартфон-через Интернет" label="Мобильный телефон, смартфон-через Интернет"/><br>
                    <form:radiobutton path="form[whichDevice6]" value="Компьютер, ноутбук, планшет-через Интернет" label="Компьютер, ноутбук, планшет-через Интернет"/><br>
                    <form:radiobutton path="form[whichDevice6]" value="Другое" label="Другое"/><br>
                    <br>
                </div>

                <div id="educationDiv" hidden>
                    <b>7. Какое у Вас образование?</b><br>
                    <form:radiobutton path="form[education]" value="Ниже среднего (менее 11 класов)" label="Ниже среднего (менее 11 класов)"/><br>
                    <form:radiobutton path="form[education]" value="Среднее общее" label="Среднее общее"/><br>
                    <form:radiobutton path="form[education]" value="Среднее специальное (ПТУ, коледж, техникум)" label="Среднее специальное (ПТУ, коледж, техникум)"/><br>
                    <form:radiobutton path="form[education]" value="Высшее (незакон не менее 3х курсов)" label="Высшее (незакон не менее 3х курсов)"/><br>
                    <br>
                </div>

                <div id="professionDiv" hidden>
                    <b>8. Ваш основной род занятий?</b><br>
                    <form:radiobutton path="form[profession]" value="Руководитель" label="Руководитель"/><br>
                    <form:radiobutton path="form[profession]" value="Предприниматель" label="Предприниматель"/><br>
                    <form:radiobutton path="form[profession]" value="Служащий, специалист производственной сферы (инжинер, технолог, программист)" label="Служащий, специалист производственной сферы (инжинер, технолог, программист)"/><br>
                    <form:radiobutton path="form[profession]" value="Служащий не производственной сферы (учитель,врач, бухгалтер.маркетолог)" label="Служащий не производственной сферы (учитель,врач, бухгалтер.маркетолог)"/><br>
                    <form:radiobutton path="form[profession]" value="Служащий без специального образования (секретарь,регистратор, лаборант)" label="Служащий без специального образования (секретарь,регистратор, лаборант)"/><br>
                    <form:radiobutton path="form[profession]" value="Военнослужащий, милиционер" label="Военнослужащий, милиционер"/><br>
                    <form:radiobutton path="form[profession]" value="Рабочий (промышленности, строительства, транспорта)" label="Рабочий (промышленности, строительства, транспорта)"/><br>
                    <form:radiobutton path="form[profession]" value="Безработный" label="Безработный"/><br>
                    <form:radiobutton path="form[profession]" value="Домохозяйка" label="Домохозяйка"/><br>
                    <form:radiobutton path="form[profession]" value="Студент, учащийся" label="Студент, учащийся"/><br>
                    <form:radiobutton path="form[profession]" value="Работающий пенсионер" label="Работающий пенсионер"/><br>
                    <form:radiobutton path="form[profession]" value="Неработающий пенсионер" label="Неработающий пенсионер"/><br>
                    <form:radiobutton path="form[profession]" value="Другое" label="Другое"/><br>
                    <br>
                </div>

                <div id="causeRefusedDiv" hidden>
                    <b>Причина отказа</b><br>
                    <form:radiobutton path="form[causeRefused]" value="Отказ от заполнения" label="Отказ от заполнения"/><br>
                    <form:radiobutton path="form[causeRefused]" value="Не подходит по возрасту" label="Не подходит по возрасту"/><br>
                    <form:radiobutton path="form[causeRefused]" value="Нет человека с ближайшим ДР" label="Нет человека с ближайшим ДР"/><br>
                    <form:radiobutton path="form[causeRefused]" value="Не тот город" label="Не тот город"/><br>
                    <form:radiobutton path="form[causeRefused]" value="Не помнит радиостанции за месяц, время прослушивания и т д" label="Не помнит радиостанции за месяц, время прослушивания и т д"/><br>
                    <form:radiobutton path="form[causeRefused]" value="Другое" label="Другое:" /> <form:input path="form[causeRefused]" type="text" class="input-small" style="width: 50%"/><br>
                    <br>
                </div>

                <button class="btn btn-success btn-lg" disabled>Отправить</button>

                <br><br><br><br>

            </form:form>
        </div>

    </div> <!-- /row -->

</div> <!-- /container-full -->