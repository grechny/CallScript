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

        <div class="col-lg-12">

            <h1>Опрос радио</h1>

            <br>

            <p class="muted">Добрый вечер. Мы проводим опрос для изучения популярности
                радиостанций в Минске. Пригласите, пожалуйста, к телефону того члена семьи в
                возрасте от 12 до 65 лет, у которого ближайший день рождения.</p>

            <p class="muted">Для мобильных: Добрый вечер! Мы проводим опрос для
                изучения популярности
                радиостанций в Минске. Ответьте, пожалуйста, на несколько вопросов, это займет всего
                пару минут. Подскажите, пожалуйста, город, в котором вы находитесь.</p>

            <br>

            <form:form action="/add" method="post" modelAttribute="formEntity">

                <b>Телефон</b><br>
                <div class="input-group input-group-medium col-sm-offset-0 col-sm-6">
                    <form:input path="phoneNumber" id="numberInput" type="text" class="form-control input-medium"
                           title="Введите номер телефона" placeholder="Введите номер телефона" required="true"/>
                    <span class="input-group-btn"><button id="getNumber" class="btn btn-medium btn-primary" type="button">Получить номер</button></span>
                </div>

                <br>

                <b>Город</b><br>
                <form:input path="city" type="text" class="form-control" style="width: 50%"
                       title="Введите город" placeholder="Введите город" required="true"/>

                <br>

                <b>Причина отказа</b><br>
                <form:radiobutton path="causeRefused" value="Отказ от заполнения" label=" Отказ от заполнения"/><br>
                <form:radiobutton path="causeRefused" value="Не подходит по возрасту" label=" Не подходит по возрасту"/><br>
                <form:radiobutton path="causeRefused" value="Нет человека с ближайшим ДР" label=" Нет человека с ближайшим ДР"/><br>
                <form:radiobutton path="causeRefused" value="Не тот город" label=" Не тот город"/><br>
                <form:radiobutton path="causeRefused" value="Не помнит радиостанции за месяц, время прослушивания и т д" label=" Не помнит радиостанции за месяц, время прослушивания и т д"/><br>
                <form:radiobutton path="causeRefused" value="Другое" label=" Другое:" /> <form:input path="causeRefused" type="text" class="input-small" style="width: 50%"/><br>

                <br>

                <form:label path="gender">Пол</form:label><br>
                <form:radiobutton path="gender" value="Мужской"/> Мужской<br>
                <form:radiobutton path="gender" value="Женский"/> Женский<br>

                <br>

                <form:label path="age">Возраст</form:label>
                <form:input path="age" type="text" class="form-control" style="width: 50%"
                            title="Введите возраст" placeholder="Введите возраст"/>

                <br>

                <form:label path="lastMonthListen">Слушали ли Вы радио или, может быть, присутствовали при работающем радио за последний месяц</form:label><br>
                <form:radiobutton path="lastMonthListen" value="Да"/> Да<br>
                <form:radiobutton path="lastMonthListen" value="Нет"/> Нет<br>

                <br>

                <form:label path="whatRadioListenLastMonth">Я сейчас назову радиостанции, а Вы укажите, пожалуйста, какие из них Вы слушали за последний месяц</form:label>
                <form:input path="whatRadioListenLastMonth" type="text" class="form-control" style="width: 50%"/>

                <br>

                <form:label path="whatRadioListenLastWeek">Какие радиостанции вы слушали за прошедшую неделю</form:label>
                <form:input path="whatRadioListenLastWeek" type="text" class="form-control" style="width: 50%"/>

                <br>

                <form:label path="yesterdayListen">Слушали ли Вы радио вчера?</form:label><br>
                <p class="muted">Нам важно узнать, какие радиостанции Вы слушали вчера,и, чтобы это было точнее, давайте вспомним Ваш вчерашний день</p>
                <form:radiobutton path="yesterdayListen" value="Да"/> Да<br>
                <form:radiobutton path="yesterdayListen" value="Нет"/> Нет<br>

                <br>

                <form:label path="whereListen1">1 Где слушали радио?</form:label><br>
                <form:radiobutton path="whereListen1" value="На работе/учебе"/> На работе/учебе<br>
                <form:radiobutton path="whereListen1" value="Дома"/> Дома<br>
                <form:radiobutton path="whereListen1" value="Дома"/> Дома<br>
                <form:radiobutton path="whereListen1" value="В машине"/> В машине<br>
                <form:radiobutton path="whereListen1" value="В общ. транспорте"/> В общ. транспорте<br>
                <form:radiobutton path="whereListen1" value="Вне помещения (по дороге,на велосипеде)"/> Вне помещения (по дороге,на велосипеде)<br>
                <form:radiobutton path="whereListen1" value="Другое"/> Другое<br>

                <br>

                <form:label path="timeInterval1">1 Промежуток Времени</form:label>
                <form:input path="timeInterval1" type="text" class="form-control" style="width: 50%"/>

                <br>

                <form:label path="whatRadioListen1">1 Какие радиостанции слушали</form:label>
                <form:input path="whatRadioListen1" type="text" class="form-control" style="width: 50%"/>

                <br>

                <form:label path="whichDevice1">1 С помощью чего слушали радио</form:label><br>
                <form:radiobutton path="whichDevice1" value="Радиоприемник (FM. AM)"/> Радиоприемник (FM. AM)<br>
                <form:radiobutton path="whichDevice1" value="Автомагнитола"/> Автомагнитола<br>
                <form:radiobutton path="whichDevice1" value="Мобильный телефон, смартфон-через встроенный FM-тюнер"/> Мобильный телефон, смартфон-через встроенный FM-тюнер<br>
                <form:radiobutton path="whichDevice1" value="Мобильный телефон, смартфон-через Интернет"/> Мобильный телефон, смартфон-через Интернет<br>
                <form:radiobutton path="whichDevice1" value="Компьютер, ноутбук, планшет-через Интернет"/> Компьютер, ноутбук, планшет-через Интернет<br>
                <form:radiobutton path="whichDevice1" value="Другое"/> Другое<br>

                <br>

                <form:label path="whereListen2">2 Где слушали радио?</form:label><br>
                <form:radiobutton path="whereListen2" value="На работе/учебе"/> На работе/учебе<br>
                <form:radiobutton path="whereListen2" value="Дома"/> Дома<br>
                <form:radiobutton path="whereListen2" value="Дома"/> Дома<br>
                <form:radiobutton path="whereListen2" value="В машине"/> В машине<br>
                <form:radiobutton path="whereListen2" value="В общ. транспорте"/> В общ. транспорте<br>
                <form:radiobutton path="whereListen2" value="Вне помещения (по дороге,на велосипеде)"/> Вне помещения (по дороге,на велосипеде)<br>
                <form:radiobutton path="whereListen2" value="Другое"/> Другое<br>

                <br>

                <form:label path="timeInterval2">2 Промежуток Времени</form:label>
                <form:input path="timeInterval2" type="text" class="form-control" style="width: 50%"/>

                <br>

                <form:label path="whatRadioListen2">2 Какие радиостанции слушали</form:label>
                <form:input path="whatRadioListen2" type="text" class="form-control" style="width: 50%"/>

                <br>

                <form:label path="whichDevice2">2 С помощью чего слушали радио</form:label><br>
                <form:radiobutton path="whichDevice2" value="Радиоприемник (FM. AM)"/> Радиоприемник (FM. AM)<br>
                <form:radiobutton path="whichDevice2" value="Автомагнитола"/> Автомагнитола<br>
                <form:radiobutton path="whichDevice2" value="Мобильный телефон, смартфон-через встроенный FM-тюнер"/> Мобильный телефон, смартфон-через встроенный FM-тюнер<br>
                <form:radiobutton path="whichDevice2" value="Мобильный телефон, смартфон-через Интернет"/> Мобильный телефон, смартфон-через Интернет<br>
                <form:radiobutton path="whichDevice2" value="Компьютер, ноутбук, планшет-через Интернет"/> Компьютер, ноутбук, планшет-через Интернет<br>
                <form:radiobutton path="whichDevice2" value="Другое"/> Другое<br>

                <br>

                <form:label path="whereListen3">3 Где слушали радио?</form:label><br>
                <form:radiobutton path="whereListen3" value="На работе/учебе"/> На работе/учебе<br>
                <form:radiobutton path="whereListen3" value="Дома"/> Дома<br>
                <form:radiobutton path="whereListen3" value="Дома"/> Дома<br>
                <form:radiobutton path="whereListen3" value="В машине"/> В машине<br>
                <form:radiobutton path="whereListen3" value="В общ. транспорте"/> В общ. транспорте<br>
                <form:radiobutton path="whereListen3" value="Вне помещения (по дороге,на велосипеде)"/> Вне помещения (по дороге,на велосипеде)<br>
                <form:radiobutton path="whereListen3" value="Другое"/> Другое<br>

                <br>

                <form:label path="timeInterval3">3 Промежуток Времени</form:label>
                <form:input path="timeInterval3" type="text" class="form-control" style="width: 50%"/>

                <br>

                <form:label path="whatRadioListen3">3 Какие радиостанции слушали</form:label>
                <form:input path="whatRadioListen3" type="text" class="form-control" style="width: 50%"/>

                <br>

                <form:label path="whichDevice3">3 С помощью чего слушали радио</form:label><br>
                <form:radiobutton path="whichDevice3" value="Радиоприемник (FM. AM)"/> Радиоприемник (FM. AM)<br>
                <form:radiobutton path="whichDevice3" value="Автомагнитола"/> Автомагнитола<br>
                <form:radiobutton path="whichDevice3" value="Мобильный телефон, смартфон-через встроенный FM-тюнер"/> Мобильный телефон, смартфон-через встроенный FM-тюнер<br>
                <form:radiobutton path="whichDevice3" value="Мобильный телефон, смартфон-через Интернет"/> Мобильный телефон, смартфон-через Интернет<br>
                <form:radiobutton path="whichDevice3" value="Компьютер, ноутбук, планшет-через Интернет"/> Компьютер, ноутбук, планшет-через Интернет<br>
                <form:radiobutton path="whichDevice3" value="Другое"/> Другое<br>

                <br>

                <form:label path="whereListen4">4 Где слушали радио?</form:label><br>
                <form:radiobutton path="whereListen4" value="На работе/учебе"/> На работе/учебе<br>
                <form:radiobutton path="whereListen4" value="Дома"/> Дома<br>
                <form:radiobutton path="whereListen4" value="Дома"/> Дома<br>
                <form:radiobutton path="whereListen4" value="В машине"/> В машине<br>
                <form:radiobutton path="whereListen4" value="В общ. транспорте"/> В общ. транспорте<br>
                <form:radiobutton path="whereListen4" value="Вне помещения (по дороге,на велосипеде)"/> Вне помещения (по дороге,на велосипеде)<br>
                <form:radiobutton path="whereListen4" value="Другое"/> Другое<br>

                <br>

                <form:label path="timeInterval4">4 Промежуток Времени</form:label>
                <form:input path="timeInterval4" type="text" class="form-control" style="width: 50%"/>

                <br>

                <form:label path="whatRadioListen4">4 Какие радиостанции слушали</form:label>
                <form:input path="whatRadioListen4" type="text" class="form-control" style="width: 50%"/>

                <br>

                <form:label path="whichDevice4">4 С помощью чего слушали радио</form:label><br>
                <form:radiobutton path="whichDevice4" value="Радиоприемник (FM. AM)"/> Радиоприемник (FM. AM)<br>
                <form:radiobutton path="whichDevice4" value="Автомагнитола"/> Автомагнитола<br>
                <form:radiobutton path="whichDevice4" value="Мобильный телефон, смартфон-через встроенный FM-тюнер"/> Мобильный телефон, смартфон-через встроенный FM-тюнер<br>
                <form:radiobutton path="whichDevice4" value="Мобильный телефон, смартфон-через Интернет"/> Мобильный телефон, смартфон-через Интернет<br>
                <form:radiobutton path="whichDevice4" value="Компьютер, ноутбук, планшет-через Интернет"/> Компьютер, ноутбук, планшет-через Интернет<br>
                <form:radiobutton path="whichDevice4" value="Другое"/> Другое<br>

                <br>

                <form:label path="whereListen5">5 Где слушали радио?</form:label><br>
                <form:radiobutton path="whereListen5" value="На работе/учебе"/> На работе/учебе<br>
                <form:radiobutton path="whereListen5" value="Дома"/> Дома<br>
                <form:radiobutton path="whereListen5" value="Дома"/> Дома<br>
                <form:radiobutton path="whereListen5" value="В машине"/> В машине<br>
                <form:radiobutton path="whereListen5" value="В общ. транспорте"/> В общ. транспорте<br>
                <form:radiobutton path="whereListen5" value="Вне помещения (по дороге,на велосипеде)"/> Вне помещения (по дороге,на велосипеде)<br>
                <form:radiobutton path="whereListen5" value="Другое"/> Другое<br>

                <br>

                <form:label path="timeInterval5">5 Промежуток Времени</form:label>
                <form:input path="timeInterval5" type="text" class="form-control" style="width: 50%"/>

                <br>

                <form:label path="whatRadioListen5">5 Какие радиостанции слушали</form:label>
                <form:input path="whatRadioListen5" type="text" class="form-control" style="width: 50%"/>

                <br>

                <form:label path="whichDevice5">5 С помощью чего слушали радио</form:label><br>
                <form:radiobutton path="whichDevice5" value="Радиоприемник (FM. AM)"/> Радиоприемник (FM. AM)<br>
                <form:radiobutton path="whichDevice5" value="Автомагнитола"/> Автомагнитола<br>
                <form:radiobutton path="whichDevice5" value="Мобильный телефон, смартфон-через встроенный FM-тюнер"/> Мобильный телефон, смартфон-через встроенный FM-тюнер<br>
                <form:radiobutton path="whichDevice5" value="Мобильный телефон, смартфон-через Интернет"/> Мобильный телефон, смартфон-через Интернет<br>
                <form:radiobutton path="whichDevice5" value="Компьютер, ноутбук, планшет-через Интернет"/> Компьютер, ноутбук, планшет-через Интернет<br>
                <form:radiobutton path="whichDevice5" value="Другое"/> Другое<br>

                <br>

                <form:label path="whereListen6">6 Где слушали радио?</form:label><br>
                <form:radiobutton path="whereListen6" value="На работе/учебе"/> На работе/учебе<br>
                <form:radiobutton path="whereListen6" value="Дома"/> Дома<br>
                <form:radiobutton path="whereListen6" value="Дома"/> Дома<br>
                <form:radiobutton path="whereListen6" value="В машине"/> В машине<br>
                <form:radiobutton path="whereListen6" value="В общ. транспорте"/> В общ. транспорте<br>
                <form:radiobutton path="whereListen6" value="Вне помещения (по дороге,на велосипеде)"/> Вне помещения (по дороге,на велосипеде)<br>
                <form:radiobutton path="whereListen6" value="Другое"/> Другое<br>

                <br>

                <form:label path="timeInterval6">6 Промежуток Времени</form:label>
                <form:input path="timeInterval6" type="text" class="form-control" style="width: 50%"/>

                <br>

                <form:label path="whatRadioListen6">6 Какие радиостанции слушали</form:label>
                <form:input path="whatRadioListen6" type="text" class="form-control" style="width: 50%"/>

                <br>

                <form:label path="whichDevice6">6 С помощью чего слушали радио</form:label><br>
                <form:radiobutton path="whichDevice6" value="Радиоприемник (FM. AM)"/> Радиоприемник (FM. AM)<br>
                <form:radiobutton path="whichDevice6" value="Автомагнитола"/> Автомагнитола<br>
                <form:radiobutton path="whichDevice6" value="Мобильный телефон, смартфон-через встроенный FM-тюнер"/> Мобильный телефон, смартфон-через встроенный FM-тюнер<br>
                <form:radiobutton path="whichDevice6" value="Мобильный телефон, смартфон-через Интернет"/> Мобильный телефон, смартфон-через Интернет<br>
                <form:radiobutton path="whichDevice6" value="Компьютер, ноутбук, планшет-через Интернет"/> Компьютер, ноутбук, планшет-через Интернет<br>
                <form:radiobutton path="whichDevice6" value="Другое"/> Другое<br>

                <br>

                <form:label path="education">Какое у вас образование</form:label><br>
                <form:radiobutton path="education" value="Ниже среднего (менее 11 класов)"/> Ниже среднего (менее 11 класов)<br>
                <form:radiobutton path="education" value="Среднее общее"/> Среднее общее<br>
                <form:radiobutton path="education" value="Среднее специальное (ПТУ, коледж, техникум)"/> Среднее специальное (ПТУ, коледж, техникум)<br>
                <form:radiobutton path="education" value="Высшее (незакон не менее 3х курсов)"/> Высшее (незакон не менее 3х курсов)<br>

                <br>

                <form:label path="profession">Ваш основной род занятий</form:label><br>
                <form:radiobutton path="profession" value="Руководитель"/> Руководитель<br>
                <form:radiobutton path="profession" value="Предприниматель"/> Предприниматель<br>
                <form:radiobutton path="profession" value="Служащий, специалист производственной сферы (инжинер, технолог, программист)"/> Служащий, специалист производственной сферы (инжинер, технолог, программист)<br>
                <form:radiobutton path="profession" value="Служащий не производственной сферы (учитель,врач, бухгалтер.маркетолог)"/> Служащий не производственной сферы (учитель,врач, бухгалтер.маркетолог)<br>
                <form:radiobutton path="profession" value="Служащий без специального образования (секретарь,регистратор, лаборант)"/> Служащий без специального образования (секретарь,регистратор, лаборант)<br>
                <form:radiobutton path="profession" value="Военнослужащий, милиционер"/> Военнослужащий, милиционер<br>
                <form:radiobutton path="profession" value="Рабочий (промышленности, строительства, транспорта)"/> Рабочий (промышленности, строительства, транспорта)<br>
                <form:radiobutton path="profession" value="Безработный"/> Безработный<br>
                <form:radiobutton path="profession" value="Домохозяйка"/> Домохозяйка<br>
                <form:radiobutton path="profession" value="Студент, учащийся"/> Студент, учащийся<br>
                <form:radiobutton path="profession" value="Работающий пенсионер"/> Работающий пенсионер<br>
                <form:radiobutton path="profession" value="Неработающий пенсионер"/> Неработающий пенсионер<br>
                <form:radiobutton path="profession" value="Другое"/> Другое<br>

                <br>

                <form:label path="operator">Оператор</form:label>
                <form:input path="operator" type="text" class="form-control" style="width: 50%"
                            title="Ваше имя" placeholder="Введите свое имя" required="true"/>

                <br><br><br><br>

                <button type="submit" class="btn btn-success btn-lg ">Отправить</button>
            </form:form>
        </div>

    </div> <!-- /row -->

</div> <!-- /container full -->

</body>
</html>