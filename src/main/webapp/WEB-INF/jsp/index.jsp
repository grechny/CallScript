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
                    <form:input path="form[watchingTVTime]" type="text" class="form-control" style="width: 50%" title="Введите количество часов" placeholder="Введите количество часов"/>
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

                <div id="whatTVType2Div" hidden>
                    <b>6.2 На втором телевизоре у вас эфирное, кабельное, спутниковое или может быть IP телевидение, например, Zala?</b><br>
                    <form:checkbox path="form[whatTVType2]" value="1" label="1. Эфирное бесплатное телевидение (8-9 каналов)."/><br>
                    <form:checkbox path="form[whatTVType2]" value="2" label="2. Эфирное платное телевидение."/><br>
                    <form:checkbox path="form[whatTVType2]" value="3" label="3. Кабельное телевидение социальный пакет (до 13 каналов)."/><br>
                    <form:checkbox path="form[whatTVType2]" value="4" label="4. Кабельное телевидение коммерческий пакет (13 каналов и более)."/><br>
                    <form:checkbox path="form[whatTVType2]" value="5" label="5. Спутниковое телевидение БЕЗ возможности приема 8-9 каналов социального пакета."/><br>
                    <form:checkbox path="form[whatTVType2]" value="6" label="6. Спутниковое телевидение С возможностью приема 8-9 каналов социального пакета."/><br>
                    <form:checkbox path="form[whatTVType2]" value="7" label="7. IP телевидение с использованием приставки, которая непосредственно подключается к телевизору, от компании Белтелеком (интерактивная Zala)."/><br>
                    <form:checkbox path="form[whatTVType2]" value="8" label="8. IP телевидение с использованием приставки, которая непосредственно подключается к телевизору, НЕ от компании Белтелеком."/><br>
                    <form:checkbox path="form[whatTVType2]" value="9" label="9. IP телевидение БЕЗ использования приставки, которая непосредственно подключается к телевизору, от компании Белтелеком (Смарт Zala)."/><br>
                    <form:checkbox path="form[whatTVType2]" value="10" label="10. IP телевидение БЕЗ использованием приставки, которая непосредственно подключается к телевизору, НЕ от компании Белтелеком. Уточняем оператора и количество каналов."/><br>
                    <form:checkbox path="form[whatTVType2]" value="11" label="11. ТВ не подключено."/><br>
                    <form:checkbox path="form[whatTVType2]" value="12" label="12. То же самое, что и на 1-ом."/><br>
                    <br>
                </div>

                <div id="containsBelarus52Div" hidden>
                    <b>Идет ли Беларусь-5?</b><br>
                    <form:radiobutton path="form[containsBelarus52]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsBelarus52]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="quantityOfChannels2Div" hidden>
                    <b>Какое у вас количество каналов?</b><br>
                    <form:input path="form[quantityOfChannels2]" type="text" class="form-control" style="width: 50%" title="Введите количество каналов" placeholder="Введите количество каналов"/>
                    <br>
                </div>

                <div id="tvProvider2Div" hidden>
                    <b>Какой у вас оператор телевидения?</b><br>
                    <form:input path="form[tvProvider2]" type="text" class="form-control" style="width: 50%" title="Введите оператора телевидения" placeholder="Введите оператора телевидения"/>
                    <br>
                </div>

                <div id="containsTNT2Div" hidden>
                    <b>Сейчас я назову 7 каналов, а вы скажете, идут ли у вас такие?</b><br>
                    <br>
                    <b>ТНТ</b><br>
                    <form:radiobutton path="form[containsTNT2]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsTNT2]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsVTV2Div" hidden>
                    <b>ВТВ</b><br>
                    <form:radiobutton path="form[containsVTV2]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsVTV2]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsTV32Div" hidden>
                    <b>ТВ3-Беларусь</b><br>
                    <form:radiobutton path="form[containsTV32]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsTV32]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsMuzTV2Div" hidden>
                    <b>МузТВ</b><br>
                    <form:radiobutton path="form[containsMuzTV2]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsMuzTV2]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsDomashniy2Div" hidden>
                    <b>Домашний</b><br>
                    <form:radiobutton path="form[containsDomashniy2]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsDomashniy2]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsEuropaPlus2Div" hidden>
                    <b>Европаплюс</b><br>
                    <form:radiobutton path="form[containsEuropaPlus2]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsEuropaPlus2]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsPeretc2Div" hidden>
                    <b>Перец</b><br>
                    <form:radiobutton path="form[containsPeretc2]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsPeretc2]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="hasSmartTV2Div" hidden>
                    <b>Подскажите, а у телевизора, про который мы сейчас говорили, есть функция СмартТВ, которая позволяет получать доступ в интернет на телевизоре?</b><br>
                    <form:radiobutton path="form[hasSmartTV2]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[hasSmartTV2]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="usesSmartTV2Div" hidden>
                    <b>Пользуетесь ли Вы ей?</b><br>
                    <form:radiobutton path="form[usesSmartTV2]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[usesSmartTV2]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="hasOneMoreTV2Div" hidden>
                    <b>Есть еще один телевизор?</b><br>
                    <input id="hasOneMoreTV21" name="hasOneMoreTV2" type="radio" value="Да"><label for="hasOneMoreTV21">Да</label><br>
                    <input id="hasOneMoreTV22" name="hasOneMoreTV2" type="radio" value="Нет"><label for="hasOneMoreTV22">Нет</label><br>
                    <br>
                </div>

                <div id="whatTVType3Div" hidden>
                    <b>6.3 На третьем телевизоре у вас эфирное, кабельное, спутниковое или может быть IP телевидение, например, Zala?</b><br>
                    <form:checkbox path="form[whatTVType3]" value="1" label="1. Эфирное бесплатное телевидение (8-9 каналов)."/><br>
                    <form:checkbox path="form[whatTVType3]" value="2" label="2. Эфирное платное телевидение."/><br>
                    <form:checkbox path="form[whatTVType3]" value="3" label="3. Кабельное телевидение социальный пакет (до 13 каналов)."/><br>
                    <form:checkbox path="form[whatTVType3]" value="4" label="4. Кабельное телевидение коммерческий пакет (13 каналов и более)."/><br>
                    <form:checkbox path="form[whatTVType3]" value="5" label="5. Спутниковое телевидение БЕЗ возможности приема 8-9 каналов социального пакета."/><br>
                    <form:checkbox path="form[whatTVType3]" value="6" label="6. Спутниковое телевидение С возможностью приема 8-9 каналов социального пакета."/><br>
                    <form:checkbox path="form[whatTVType3]" value="7" label="7. IP телевидение с использованием приставки, которая непосредственно подключается к телевизору, от компании Белтелеком (интерактивная Zala)."/><br>
                    <form:checkbox path="form[whatTVType3]" value="8" label="8. IP телевидение с использованием приставки, которая непосредственно подключается к телевизору, НЕ от компании Белтелеком."/><br>
                    <form:checkbox path="form[whatTVType3]" value="9" label="9. IP телевидение БЕЗ использования приставки, которая непосредственно подключается к телевизору, от компании Белтелеком (Смарт Zala)."/><br>
                    <form:checkbox path="form[whatTVType3]" value="10" label="10. IP телевидение БЕЗ использованием приставки, которая непосредственно подключается к телевизору, НЕ от компании Белтелеком. Уточняем оператора и количество каналов."/><br>
                    <form:checkbox path="form[whatTVType3]" value="11" label="11. ТВ не подключено."/><br>
                    <form:checkbox path="form[whatTVType3]" value="12" label="12. То же самое, что и на 1-ом."/><br>
                    <form:checkbox path="form[whatTVType3]" value="13" label="13. То же самое, что и на 2-ом."/><br>
                    <br>
                </div>

                <div id="containsBelarus53Div" hidden>
                    <b>Идет ли Беларусь-5?</b><br>
                    <form:radiobutton path="form[containsBelarus53]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsBelarus53]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="quantityOfChannels3Div" hidden>
                    <b>Какое у вас количество каналов?</b><br>
                    <form:input path="form[quantityOfChannels3]" type="text" class="form-control" style="width: 50%" title="Введите количество каналов" placeholder="Введите количество каналов"/>
                    <br>
                </div>

                <div id="tvProvider3Div" hidden>
                    <b>Какой у вас оператор телевидения?</b><br>
                    <form:input path="form[tvProvider3]" type="text" class="form-control" style="width: 50%" title="Введите оператора телевидения" placeholder="Введите оператора телевидения"/>
                    <br>
                </div>

                <div id="containsTNT3Div" hidden>
                    <b>Сейчас я назову 7 каналов, а вы скажете, идут ли у вас такие?</b><br>
                    <br>
                    <b>ТНТ</b><br>
                    <form:radiobutton path="form[containsTNT3]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsTNT3]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsVTV3Div" hidden>
                    <b>ВТВ</b><br>
                    <form:radiobutton path="form[containsVTV3]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsVTV3]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsTV33Div" hidden>
                    <b>ТВ3-Беларусь</b><br>
                    <form:radiobutton path="form[containsTV33]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsTV33]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsMuzTV3Div" hidden>
                    <b>МузТВ</b><br>
                    <form:radiobutton path="form[containsMuzTV3]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsMuzTV3]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsDomashniy3Div" hidden>
                    <b>Домашний</b><br>
                    <form:radiobutton path="form[containsDomashniy3]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsDomashniy3]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsEuropaPlus3Div" hidden>
                    <b>Европаплюс</b><br>
                    <form:radiobutton path="form[containsEuropaPlus3]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsEuropaPlus3]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsPeretc3Div" hidden>
                    <b>Перец</b><br>
                    <form:radiobutton path="form[containsPeretc3]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsPeretc3]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="hasSmartTV3Div" hidden>
                    <b>Подскажите, а у телевизора, про который мы сейчас говорили, есть функция СмартТВ, которая позволяет получать доступ в интернет на телевизоре?</b><br>
                    <form:radiobutton path="form[hasSmartTV3]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[hasSmartTV3]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="usesSmartTV3Div" hidden>
                    <b>Пользуетесь ли Вы ей?</b><br>
                    <form:radiobutton path="form[usesSmartTV3]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[usesSmartTV3]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="hasOneMoreTV3Div" hidden>
                    <b>Есть еще один телевизор?</b><br>
                    <input id="hasOneMoreTV31" name="hasOneMoreTV3" type="radio" value="Да"><label for="hasOneMoreTV31">Да</label><br>
                    <input id="hasOneMoreTV32" name="hasOneMoreTV3" type="radio" value="Нет"><label for="hasOneMoreTV32">Нет</label><br>
                    <br>
                </div>

                <div id="whatTVType4Div" hidden>
                    <b>6.4 На четвертом телевизоре у вас эфирное, кабельное, спутниковое или может быть IP телевидение, например, Zala?</b><br>
                    <form:checkbox path="form[whatTVType4]" value="1" label="1. Эфирное бесплатное телевидение (8-9 каналов)."/><br>
                    <form:checkbox path="form[whatTVType4]" value="2" label="2. Эфирное платное телевидение."/><br>
                    <form:checkbox path="form[whatTVType4]" value="3" label="3. Кабельное телевидение социальный пакет (до 13 каналов)."/><br>
                    <form:checkbox path="form[whatTVType4]" value="4" label="4. Кабельное телевидение коммерческий пакет (13 каналов и более)."/><br>
                    <form:checkbox path="form[whatTVType4]" value="5" label="5. Спутниковое телевидение БЕЗ возможности приема 8-9 каналов социального пакета."/><br>
                    <form:checkbox path="form[whatTVType4]" value="6" label="6. Спутниковое телевидение С возможностью приема 8-9 каналов социального пакета."/><br>
                    <form:checkbox path="form[whatTVType4]" value="7" label="7. IP телевидение с использованием приставки, которая непосредственно подключается к телевизору, от компании Белтелеком (интерактивная Zala)."/><br>
                    <form:checkbox path="form[whatTVType4]" value="8" label="8. IP телевидение с использованием приставки, которая непосредственно подключается к телевизору, НЕ от компании Белтелеком."/><br>
                    <form:checkbox path="form[whatTVType4]" value="9" label="9. IP телевидение БЕЗ использования приставки, которая непосредственно подключается к телевизору, от компании Белтелеком (Смарт Zala)."/><br>
                    <form:checkbox path="form[whatTVType4]" value="10" label="10. IP телевидение БЕЗ использованием приставки, которая непосредственно подключается к телевизору, НЕ от компании Белтелеком. Уточняем оператора и количество каналов."/><br>
                    <form:checkbox path="form[whatTVType4]" value="11" label="11. ТВ не подключено."/><br>
                    <form:checkbox path="form[whatTVType4]" value="12" label="12. То же самое, что и на 1-ом."/><br>
                    <form:checkbox path="form[whatTVType4]" value="13" label="13. То же самое, что и на 2-ом."/><br>
                    <form:checkbox path="form[whatTVType4]" value="14" label="14. То же самое, что и на 3-ем."/><br>
                    <br>
                </div>

                <div id="containsBelarus54Div" hidden>
                    <b>Идет ли Беларусь-5?</b><br>
                    <form:radiobutton path="form[containsBelarus54]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsBelarus54]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="quantityOfChannels4Div" hidden>
                    <b>Какое у вас количество каналов?</b><br>
                    <form:input path="form[quantityOfChannels4]" type="text" class="form-control" style="width: 50%" title="Введите количество каналов" placeholder="Введите количество каналов"/>
                    <br>
                </div>

                <div id="tvProvider4Div" hidden>
                    <b>Какой у вас оператор телевидения?</b><br>
                    <form:input path="form[tvProvider4]" type="text" class="form-control" style="width: 50%" title="Введите оператора телевидения" placeholder="Введите оператора телевидения"/>
                    <br>
                </div>

                <div id="containsTNT4Div" hidden>
                    <b>Сейчас я назову 7 каналов, а вы скажете, идут ли у вас такие?</b><br>
                    <br>
                    <b>ТНТ</b><br>
                    <form:radiobutton path="form[containsTNT4]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsTNT4]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsVTV4Div" hidden>
                    <b>ВТВ</b><br>
                    <form:radiobutton path="form[containsVTV4]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsVTV4]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsTV34Div" hidden>
                    <b>ТВ3-Беларусь</b><br>
                    <form:radiobutton path="form[containsTV34]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsTV34]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsMuzTV4Div" hidden>
                    <b>МузТВ</b><br>
                    <form:radiobutton path="form[containsMuzTV4]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsMuzTV4]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsDomashniy4Div" hidden>
                    <b>Домашний</b><br>
                    <form:radiobutton path="form[containsDomashniy4]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsDomashniy4]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsEuropaPlus4Div" hidden>
                    <b>Европаплюс</b><br>
                    <form:radiobutton path="form[containsEuropaPlus4]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsEuropaPlus4]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsPeretc4Div" hidden>
                    <b>Перец</b><br>
                    <form:radiobutton path="form[containsPeretc4]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsPeretc4]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="hasSmartTV4Div" hidden>
                    <b>Подскажите, а у телевизора, про который мы сейчас говорили, есть функция СмартТВ, которая позволяет получать доступ в интернет на телевизоре?</b><br>
                    <form:radiobutton path="form[hasSmartTV4]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[hasSmartTV4]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="usesSmartTV4Div" hidden>
                    <b>Пользуетесь ли Вы ей?</b><br>
                    <form:radiobutton path="form[usesSmartTV4]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[usesSmartTV4]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="hasOneMoreTV4Div" hidden>
                    <b>Есть еще один телевизор?</b><br>
                    <input id="hasOneMoreTV41" name="hasOneMoreTV4" type="radio" value="Да"><label for="hasOneMoreTV41">Да</label><br>
                    <input id="hasOneMoreTV42" name="hasOneMoreTV4" type="radio" value="Нет"><label for="hasOneMoreTV42">Нет</label><br>
                    <br>
                </div>

                <div id="whatTVType5Div" hidden>
                    <b>6.5 На пятом телевизоре у вас эфирное, кабельное, спутниковое или может быть IP телевидение, например, Zala?</b><br>
                    <form:checkbox path="form[whatTVType5]" value="1" label="1. Эфирное бесплатное телевидение (8-9 каналов)."/><br>
                    <form:checkbox path="form[whatTVType5]" value="2" label="2. Эфирное платное телевидение."/><br>
                    <form:checkbox path="form[whatTVType5]" value="3" label="3. Кабельное телевидение социальный пакет (до 13 каналов)."/><br>
                    <form:checkbox path="form[whatTVType5]" value="4" label="4. Кабельное телевидение коммерческий пакет (13 каналов и более)."/><br>
                    <form:checkbox path="form[whatTVType5]" value="5" label="5. Спутниковое телевидение БЕЗ возможности приема 8-9 каналов социального пакета."/><br>
                    <form:checkbox path="form[whatTVType5]" value="6" label="6. Спутниковое телевидение С возможностью приема 8-9 каналов социального пакета."/><br>
                    <form:checkbox path="form[whatTVType5]" value="7" label="7. IP телевидение с использованием приставки, которая непосредственно подключается к телевизору, от компании Белтелеком (интерактивная Zala)."/><br>
                    <form:checkbox path="form[whatTVType5]" value="8" label="8. IP телевидение с использованием приставки, которая непосредственно подключается к телевизору, НЕ от компании Белтелеком."/><br>
                    <form:checkbox path="form[whatTVType5]" value="9" label="9. IP телевидение БЕЗ использования приставки, которая непосредственно подключается к телевизору, от компании Белтелеком (Смарт Zala)."/><br>
                    <form:checkbox path="form[whatTVType5]" value="10" label="10. IP телевидение БЕЗ использованием приставки, которая непосредственно подключается к телевизору, НЕ от компании Белтелеком. Уточняем оператора и количество каналов."/><br>
                    <form:checkbox path="form[whatTVType5]" value="11" label="11. ТВ не подключено."/><br>
                    <form:checkbox path="form[whatTVType5]" value="12" label="12. То же самое, что и на 1-ом."/><br>
                    <form:checkbox path="form[whatTVType5]" value="13" label="13. То же самое, что и на 2-ом."/><br>
                    <form:checkbox path="form[whatTVType5]" value="14" label="14. То же самое, что и на 3-ем."/><br>
                    <form:checkbox path="form[whatTVType5]" value="15" label="15. То же самое, что и на 4-ом."/><br>
                    <br>
                </div>

                <div id="containsBelarus55Div" hidden>
                    <b>Идет ли Беларусь-5?</b><br>
                    <form:radiobutton path="form[containsBelarus55]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsBelarus55]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="quantityOfChannels5Div" hidden>
                    <b>Какое у вас количество каналов?</b><br>
                    <form:input path="form[quantityOfChannels5]" type="text" class="form-control" style="width: 50%" title="Введите количество каналов" placeholder="Введите количество каналов"/>
                    <br>
                </div>

                <div id="tvProvider5Div" hidden>
                    <b>Какой у вас оператор телевидения?</b><br>
                    <form:input path="form[tvProvider5]" type="text" class="form-control" style="width: 50%" title="Введите оператора телевидения" placeholder="Введите оператора телевидения"/>
                    <br>
                </div>

                <div id="containsTNT5Div" hidden>
                    <b>Сейчас я назову 7 каналов, а вы скажете, идут ли у вас такие?</b><br>
                    <br>
                    <b>ТНТ</b><br>
                    <form:radiobutton path="form[containsTNT5]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsTNT5]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsVTV5Div" hidden>
                    <b>ВТВ</b><br>
                    <form:radiobutton path="form[containsVTV5]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsVTV5]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsTV35Div" hidden>
                    <b>ТВ3-Беларусь</b><br>
                    <form:radiobutton path="form[containsTV35]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsTV35]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsMuzTV5Div" hidden>
                    <b>МузТВ</b><br>
                    <form:radiobutton path="form[containsMuzTV5]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsMuzTV5]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsDomashniy5Div" hidden>
                    <b>Домашний</b><br>
                    <form:radiobutton path="form[containsDomashniy5]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsDomashniy5]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsEuropaPlus5Div" hidden>
                    <b>Европаплюс</b><br>
                    <form:radiobutton path="form[containsEuropaPlus5]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsEuropaPlus5]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsPeretc5Div" hidden>
                    <b>Перец</b><br>
                    <form:radiobutton path="form[containsPeretc5]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsPeretc5]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="hasSmartTV5Div" hidden>
                    <b>Подскажите, а у телевизора, про который мы сейчас говорили, есть функция СмартТВ, которая позволяет получать доступ в интернет на телевизоре?</b><br>
                    <form:radiobutton path="form[hasSmartTV5]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[hasSmartTV5]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="usesSmartTV5Div" hidden>
                    <b>Пользуетесь ли Вы ей?</b><br>
                    <form:radiobutton path="form[usesSmartTV5]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[usesSmartTV5]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="hasOneMoreTV5Div" hidden>
                    <b>Есть еще один телевизор?</b><br>
                    <input id="hasOneMoreTV51" name="hasOneMoreTV5" type="radio" value="Да"><label for="hasOneMoreTV51">Да</label><br>
                    <input id="hasOneMoreTV52" name="hasOneMoreTV5" type="radio" value="Нет"><label for="hasOneMoreTV52">Нет</label><br>
                    <br>
                </div>

                <div id="whatTVType6Div" hidden>
                    <b>6.6 На шестом телевизоре у вас эфирное, кабельное, спутниковое или может быть IP телевидение, например, Zala?</b><br>
                    <form:checkbox path="form[whatTVType6]" value="1" label="1. Эфирное бесплатное телевидение (8-9 каналов)."/><br>
                    <form:checkbox path="form[whatTVType6]" value="2" label="2. Эфирное платное телевидение."/><br>
                    <form:checkbox path="form[whatTVType6]" value="3" label="3. Кабельное телевидение социальный пакет (до 13 каналов)."/><br>
                    <form:checkbox path="form[whatTVType6]" value="4" label="4. Кабельное телевидение коммерческий пакет (13 каналов и более)."/><br>
                    <form:checkbox path="form[whatTVType6]" value="5" label="5. Спутниковое телевидение БЕЗ возможности приема 8-9 каналов социального пакета."/><br>
                    <form:checkbox path="form[whatTVType6]" value="6" label="6. Спутниковое телевидение С возможностью приема 8-9 каналов социального пакета."/><br>
                    <form:checkbox path="form[whatTVType6]" value="7" label="7. IP телевидение с использованием приставки, которая непосредственно подключается к телевизору, от компании Белтелеком (интерактивная Zala)."/><br>
                    <form:checkbox path="form[whatTVType6]" value="8" label="8. IP телевидение с использованием приставки, которая непосредственно подключается к телевизору, НЕ от компании Белтелеком."/><br>
                    <form:checkbox path="form[whatTVType6]" value="9" label="9. IP телевидение БЕЗ использования приставки, которая непосредственно подключается к телевизору, от компании Белтелеком (Смарт Zala)."/><br>
                    <form:checkbox path="form[whatTVType6]" value="10" label="10. IP телевидение БЕЗ использованием приставки, которая непосредственно подключается к телевизору, НЕ от компании Белтелеком. Уточняем оператора и количество каналов."/><br>
                    <form:checkbox path="form[whatTVType6]" value="11" label="11. ТВ не подключено."/><br>
                    <form:checkbox path="form[whatTVType6]" value="12" label="12. То же самое, что и на 1-ом."/><br>
                    <form:checkbox path="form[whatTVType6]" value="13" label="13. То же самое, что и на 2-ом."/><br>
                    <form:checkbox path="form[whatTVType6]" value="14" label="14. То же самое, что и на 3-ом."/><br>
                    <form:checkbox path="form[whatTVType6]" value="15" label="15. То же самое, что и на 4-ом."/><br>
                    <form:checkbox path="form[whatTVType6]" value="16" label="16. То же самое, что и на 5-ом."/><br>
                    <br>
                </div>

                <div id="containsBelarus56Div" hidden>
                    <b>Идет ли Беларусь-5?</b><br>
                    <form:radiobutton path="form[containsBelarus56]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsBelarus56]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="quantityOfChannels6Div" hidden>
                    <b>Какое у вас количество каналов?</b><br>
                    <form:input path="form[quantityOfChannels6]" type="text" class="form-control" style="width: 50%" title="Введите количество каналов" placeholder="Введите количество каналов"/>
                    <br>
                </div>

                <div id="tvProvider6Div" hidden>
                    <b>Какой у вас оператор телевидения?</b><br>
                    <form:input path="form[tvProvider6]" type="text" class="form-control" style="width: 50%" title="Введите оператора телевидения" placeholder="Введите оператора телевидения"/>
                    <br>
                </div>

                <div id="containsTNT6Div" hidden>
                    <b>Сейчас я назову 7 каналов, а вы скажете, идут ли у вас такие?</b><br>
                    <br>
                    <b>ТНТ</b><br>
                    <form:radiobutton path="form[containsTNT6]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsTNT6]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsVTV6Div" hidden>
                    <b>ВТВ</b><br>
                    <form:radiobutton path="form[containsVTV6]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsVTV6]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsTV36Div" hidden>
                    <b>ТВ3-Беларусь</b><br>
                    <form:radiobutton path="form[containsTV36]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsTV36]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsMuzTV6Div" hidden>
                    <b>МузТВ</b><br>
                    <form:radiobutton path="form[containsMuzTV6]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsMuzTV6]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsDomashniy6Div" hidden>
                    <b>Домашний</b><br>
                    <form:radiobutton path="form[containsDomashniy6]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsDomashniy6]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsEuropaPlus6Div" hidden>
                    <b>Европаплюс</b><br>
                    <form:radiobutton path="form[containsEuropaPlus6]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsEuropaPlus6]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="containsPeretc6Div" hidden>
                    <b>Перец</b><br>
                    <form:radiobutton path="form[containsPeretc6]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[containsPeretc6]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="hasSmartTV6Div" hidden>
                    <b>Подскажите, а у телевизора, про который мы сейчас говорили, есть функция СмартТВ, которая позволяет получать доступ в интернет на телевизоре?</b><br>
                    <form:radiobutton path="form[hasSmartTV6]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[hasSmartTV6]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="usesSmartTV6Div" hidden>
                    <b>Пользуетесь ли Вы ей?</b><br>
                    <form:radiobutton path="form[usesSmartTV6]" value="Да" label="Да"/><br>
                    <form:radiobutton path="form[usesSmartTV6]" value="Нет" label="Нет"/><br>
                    <br>
                </div>

                <div id="howManyPeopleAtHomeDiv" hidden>
                    <b>9. Подскажите, сколько всего человек, включая Вас, проживает вместе с Вами?</b><br>
                    <form:input path="form[howManyPeopleAtHome]" type="text" class="form-control" style="width: 50%" title="Введите количество людей" placeholder="Введите количество людей"/>
                    <br>
                </div>

                <div id="childrenUnder4yearsDiv" hidden>
                    <b>10. Есть ли среди них дети до 4 лет?</b><br>
                    <input id="childrenUnder4years1" type="radio" name="childrenUnder4years" value="">Да <form:input path="form[childrenUnder4years]" type="text" class="form-control" style="width: 50%" title="Введите количество детей" placeholder="Введите количество детей" required="true" disabled="true"/>​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
                    <input id="childrenUnder4years2" type="radio" name="childrenUnder4years" value="Нет">Нет<br>
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