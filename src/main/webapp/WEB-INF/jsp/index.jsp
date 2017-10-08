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
<script type="text/javascript" src="<c:url value="/scripts/callscript.js"/>"></script>

<div class="container-full">
    <div class="row">
        <div class="col-lg-12">
            <h1>Опрос ТВ</h1>
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

                <div id="cityDiv">
                    <b>Город</b><b style="color: red"> *</b><br>
                    <form:input path="form[city]" type="text" class="form-control" style="width: 50%" title="Введите город" placeholder="Введите город" required="true"/>
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

                <div id="genderDiv">
                    <b>1. Пол (не спрашивать, определять по голосу)</b><br>
                    <form:radiobutton path="form[gender]" value="Мужской" label="Мужской" required="true"/><br>
                    <form:radiobutton path="form[gender]" value="Женский" label="Женский" required="true"/><br>
                    <br>
                </div>

                <div id="ageDiv" class="form-group" hidden>
                    <b>2. Возраст (должен быть более 12 лет)</b><br>
                    <form:input path="form[age]" type="text" class="form-control" style="width: 50%" title="Введите возраст" placeholder="Введите возраст"/>
                    <div id="formageDivError" hidden>
                        <b style="color: red" class="h6">
                            Опрашиваем от 12 лет и старше
                        </b>
                    </div>
                </div>

                <div id="watchingTVDiv" hidden>
                    <b>3. Смотрите ли Вы телевизор?</b><br>
                    <form:radiobutton path="form[watchingTV]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[watchingTV]" value="Нет" label="Нет"/><br>
                    <form:radiobutton path="form[watchingTV]" value="Нет телевизора" label="Нет телевизора"/><br>
                    <br>
                </div>

                <div id="watchingTVTimeDiv" hidden>
                    <b>4. Сколько в среднем часов в день Вы смотрите телевизор?</b><br>
                    <form:input path="form[watchingTVTime]" type="text" maxlength="2" class="form-control" style="width: 50%" title="Введите количество часов" placeholder="Введите количество часов"/>
                    <br>
                </div>

                <div id="whatChannelsWatchDiv" hidden>
                    <b>5. Какие телеканалы Вы чаще других смотрите по телевизору? (вносим все, которые называет)</b><br>
                    <form:input path="form[whatChannelsWatch]" type="text" class="form-control" style="width: 100%" title="Введите названия телеканалов" placeholder="Введите названия телеканалов"/>
                    <br>
                </div>

                <div id="whatTVType1Div" hidden>
                    <b>6. Подскажите, а у вас дома эфирное, кабельное, спутниковое или может быть IP телевидение, например, Zala?</b><br>
                    <form:checkbox path="form[whatTVType1]" value="1" label="1. Эфирное бесплатное телевидение (8-9 каналов)."/><br>
                    <form:checkbox path="form[whatTVType1]" value="2" label="2. Эфирное платное телевидение."/><br>
                    <form:checkbox path="form[whatTVType1]" value="3" label="3. Кабельное телевидение социальный пакет (до 13 каналов)."/><br>
                    <form:checkbox path="form[whatTVType1]" value="4" label="4. Кабельное телевидение коммерческий пакет (13 каналов и более)."/><br>
                    <form:checkbox path="form[whatTVType1]" value="5" label="5. Спутниковое телевидение БЕЗ возможности приема 8-9 каналов социального пакета."/><br>
                    <form:checkbox path="form[whatTVType1]" value="6" label="6. Спутниковое телевидение С возможностью приема 8-9 каналов социального пакета."/><br>
                    <form:checkbox path="form[whatTVType1]" value="7" label="7. IP телевидение с использованием приставки, которая непосредственно подключается к телевизору, от компании Белтелеком (интерактивная Zala)."/><br>
                    <form:checkbox path="form[whatTVType1]" value="8" label="8. IP телевидение с использованием приставки, которая непосредственно подключается к телевизору, НЕ от компании Белтелеком."/><br>
                    <form:checkbox path="form[whatTVType1]" value="9" label="9. IP телевидение БЕЗ использования приставки, которая непосредственно подключается к телевизору, от компании Белтелеком (Смарт Zala)."/><br>
                    <form:checkbox path="form[whatTVType1]" value="10" label="10. IP телевидение БЕЗ использованием приставки, которая непосредственно подключается к телевизору, НЕ от компании Белтелеком. Уточняем оператора и количество каналов."/><br>
                    <form:checkbox path="form[whatTVType1]" value="11" label="11. ТВ не подключено."/><br>
                    <br>
                </div>

                <div id="containsBelarus51Div" hidden>
                    <b>Идет ли Беларусь-5?</b><br>
                    <form:radiobutton path="form[containsBelarus51]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsBelarus51]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="quantityOfChannels1Div" hidden>
                    <b>Какое у вас количество каналов?</b><br>
                    <form:input path="form[quantityOfChannels1]" type="text" class="form-control" style="width: 50%" title="Введите количество каналов" placeholder="Введите количество каналов"/>
                    <br>
                </div>

                <div id="tvProvider1Div" hidden>
                    <b>Какой у вас оператор телевидения?</b><br>
                    <form:input path="form[tvProvider1]" type="text" class="form-control" style="width: 50%" title="Введите оператора телевидения" placeholder="Введите оператора телевидения"/>
                    <br>
                </div>

                <div id="containsTNT1Div" hidden>
                    <b>Сейчас я назову 7 каналов, а вы скажете, идут ли у вас такие?</b><br>
                    <br>
                    <b>ТНТ</b><br>
                    <form:radiobutton path="form[containsTNT1]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsTNT1]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsVTV1Div" hidden>
                    <b>ВТВ</b><br>
                    <form:radiobutton path="form[containsVTV1]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsVTV1]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsTV31Div" hidden>
                    <b>ТВ3-Беларусь</b><br>
                    <form:radiobutton path="form[containsTV31]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsTV31]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsMuzTV1Div" hidden>
                    <b>МузТВ</b><br>
                    <form:radiobutton path="form[containsMuzTV1]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsMuzTV1]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsDomashniy1Div" hidden>
                    <b>Домашний</b><br>
                    <form:radiobutton path="form[containsDomashniy1]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsDomashniy1]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsEuropaPlus1Div" hidden>
                    <b>Европаплюс</b><br>
                    <form:radiobutton path="form[containsEuropaPlus1]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsEuropaPlus1]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsPeretc1Div" hidden>
                    <b>Перец</b><br>
                    <form:radiobutton path="form[containsPeretc1]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsPeretc1]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="hasSmartTV1Div" hidden>
                    <b>Подскажите, а у телевизора, про который мы сейчас говорили, есть функция СмартТВ, которая позволяет получать доступ в интернет на телевизоре?</b><br>
                    <form:radiobutton path="form[hasSmartTV1]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[hasSmartTV1]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="usesSmartTV1Div" hidden>
                    <b>Пользуетесь ли Вы ей?</b><br>
                    <form:radiobutton path="form[usesSmartTV1]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[usesSmartTV1]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="hasOneMoreTV1Div" hidden>
                    <b>Есть еще один телевизор?</b><br>
                    <input id="hasOneMoreTV11" name="hasOneMoreTV1" type="radio" value="Да"><label for="hasOneMoreTV11">Да</label><br>
                    <input id="hasOneMoreTV12" name="hasOneMoreTV1" type="radio" value="Нет"><label for="hasOneMoreTV12">Нет</label><br>
                    <br>
                </div>



                <div id="howManyPeopleAtHomeDiv" hidden>
                    <b>9. Подскажите, сколько всего человек, включая Вас, проживает вместе с Вами?</b><br>
                    <form:input path="form[howManyPeopleAtHome]" type="text" class="form-control" style="width: 50%" title="Введите количество людей" placeholder="Введите количество людей"/>
                    <br>
                </div>

                <div id="childrenUnder4yearsDiv" hidden>
                    <b>10. Есть ли среди них дети до 4 лет?</b><br>
                    <form:input path="form[childrenUnder4years]" type="text" class="form-control" style="width: 50%" title="Введите количество детей" placeholder="Введите количество детей"/>
                    <br>
                </div>

                <div id="subscribeDiv" hidden>
                    <b>Наша компания также постоянно проводит исследование популярности телеканалов в Беларуси,
                        где все участники поощряются подарками в виде бытовой техники. Хотите ли узнать об этом подробнее?
                        Если ДА – Оставьте, пожалуйста, свой контактный (мобильный) телефон и имя,
                        с Вами свяжется специалист и расскажет об исследовании и участии в нем.
                        Если НЕТ – Еще раз спасибо за участие.</b><br>
                    <input id="subscribe1" type="radio" name="subscribe" value="">Да <form:input path="form[subscribe]" type="text" class="form-control" style="width: 50%" title="Введите номер телефона" placeholder="Введите номер телефона" required="true" disabled="true"/>​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
                    <input id="subscribe2" type="radio" name="subscribe" value="Нет">Нет<br>
                    <br>
                </div>

                <button id="submitButton" class="btn btn-success btn-lg" disabled>Отправить</button>

                <br><br><br><br>

            </form:form>
        </div>

    </div> <!-- /row -->

</div> <!-- /container-full -->