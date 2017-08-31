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

      if (city === "Минск") {
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek1\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Минск\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek1\">Радио Минск</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek2\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Юмор FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek2\">Юмор FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek3\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Мелодии Века\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek3\">Мелодии Века</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek4\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Минская Волна\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek4\">Минская Волна</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek5\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Новое Радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek5\">Новое Радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek6\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Русское Радио Минск\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek6\">Русское Радио Минск</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek7\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио UNISTAR\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek7\">Радио UNISTAR</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek8\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Хит-Радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek8\">Хит-Радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek9\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Пилот FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek9\">Пилот FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek10\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио ОНТ\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek10\">Радио ОНТ</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek11\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио РОКС\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek11\">Радио РОКС</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek12\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Народное радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek12\">Народное радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek13\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Культура\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek13\">Культура</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek14\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радиус FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek14\">Радиус FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek15\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Би-Эй\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek15\">Радио Би-Эй</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek16\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Столица\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek16\">Столица</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek17\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Душевное радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek17\">Душевное радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek18\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"1-й Национальный канал белорусского радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek18\">1-й Национальный канал белорусского радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek19\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Легенды FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek19\">Легенды FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek20\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Мир\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek20\">Радио Мир</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek21\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Альфа радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek21\">Альфа радио</label><br>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Брест") {
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek1\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Минск\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek1\">Радио Минск</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek2\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Юмор FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek2\">Юмор FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek5\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Новое Радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek5\">Новое Радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek7\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио UNISTAR\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek7\">Радио UNISTAR</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek9\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Пилот FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek9\">Пилот FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek11\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио РОКС\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek11\">Радио РОКС</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek13\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Культура\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek13\">Культура</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek14\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радиус FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek14\">Радиус FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek15\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Би-Эй\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek15\">Радио Би-Эй</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek18\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"1-й Национальный канал белорусского радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek18\">1-й Национальный канал белорусского радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek20\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Мир\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek20\">Радио Мир</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek21\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Альфа радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek21\">Альфа радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek22\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Город FM (Брест)\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek22\">Город FM (Брест)</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek23\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Брест\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek23\">Радио Брест</label><br>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Витебск") {
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek1\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Минск\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek1\">Радио Минск</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek2\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Юмор FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek2\">Юмор FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek5\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Новое Радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek5\">Новое Радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek9\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Пилот FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek9\">Пилот FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek11\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио РОКС\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek11\">Радио РОКС</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek13\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Культура\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek13\">Культура</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek14\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радиус FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek14\">Радиус FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek15\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Би-Эй\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek15\">Радио Би-Эй</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek18\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"1-й Национальный канал белорусского радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek18\">1-й Национальный канал белорусского радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek20\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Мир\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek20\">Радио Мир</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek21\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Альфа радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek21\">Альфа радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek24\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Русское Радио Витебск\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek24\">Русское Радио Витебск</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek25\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Витебск\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek25\">Радио Витебск</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek26\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Европа Плюс (Витебск)\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek26\">Европа Плюс (Витебск)</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek27\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Ретро Люкс FM (Витебск)\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek27\">Ретро Люкс FM (Витебск)</label><br>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Гомель") {
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek1\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Минск\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek1\">Радио Минск</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek2\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Юмор FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek2\">Юмор FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek5\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Новое Радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek5\">Новое Радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek7\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио UNISTAR\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek7\">Радио UNISTAR</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek9\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Пилот FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek9\">Пилот FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek11\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио РОКС\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek11\">Радио РОКС</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek13\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Культура\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek13\">Культура</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek14\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радиус FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek14\">Радиус FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek15\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Би-Эй\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek15\">Радио Би-Эй</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek17\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Душевное радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek17\">Душевное радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek18\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"1-й Национальный канал белорусского радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek18\">1-й Национальный канал белорусского радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek20\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Мир\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek20\">Радио Мир</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek28\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Гомель FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek28\">Гомель FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek29\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Гомель Плюс\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek29\">Гомель Плюс</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek30\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Гомельское городское радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek30\">Гомельское городское радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek31\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Правда (Гомель)\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek31\">Радио Правда (Гомель)</label><br>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Гродно") {
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek2\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Юмор FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek2\">Юмор FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek5\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Новое Радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek5\">Новое Радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek9\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Пилот FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek9\">Пилот FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek11\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио РОКС\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek11\">Радио РОКС</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek12\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Народное радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek12\">Народное радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek13\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Культура\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek13\">Культура</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek14\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радиус FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek14\">Радиус FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek15\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Би-Эй\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek15\">Радио Би-Эй</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek17\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Душевное радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek17\">Душевное радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek18\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"1-й Национальный канал белорусского радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek18\">1-й Национальный канал белорусского радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek20\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Мир\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek20\">Радио Мир</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek21\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Альфа радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek21\">Альфа радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek32\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Гродно\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek32\">Радио Гродно</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek33\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио MFM (Гродно)\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek33\">Радио MFM (Гродно)</label><br>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Могилев") {
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek1\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Минск\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek1\">Радио Минск</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek2\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Юмор FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek2\">Юмор FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek5\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Новое Радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek5\">Новое Радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek7\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио UNISTAR\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek7\">Радио UNISTAR</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek9\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Пилот FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek9\">Пилот FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek11\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио РОКС\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek11\">Радио РОКС</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek13\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Культура\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek13\">Культура</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek14\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радиус FM\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek14\">Радиус FM</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek15\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Би-Эй\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek15\">Радио Би-Эй</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek18\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"1-й Национальный канал белорусского радио\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek18\">1-й Национальный канал белорусского радио</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek20\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Мир\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek20\">Радио Мир</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek34\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Радио Могилев\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek34\">Радио Могилев</label><br>");
        $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek35\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Русское Радио Могилев\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek35\">Русское Радио Могилев</label><br>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Другой") {
        $("#causeRefusedDiv").removeAttr("hidden");
      };

      $whatRadioListenLastWeek.append("<input id=\"formwhatRadioListenLastWeek0\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"Ни одна из перечисленных\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek0\">Ни одна из перечисленных</label><br>");

      $("[name='form[whatRadioListenLastWeek]']").change(function () {
        $("#formwhatRadioListenLastWeek0").prop('checked', false);
        $("#causeRefusedDiv").attr("hidden", "hidden");
        $("#yesterdayListenDiv").removeAttr("hidden");
      });
      $("#formwhatRadioListenLastWeek0").change(function () {
        $("[name='form[whatRadioListenLastWeek]']").prop('checked', false);
        $("#formwhatRadioListenLastWeek0").prop('checked', true);
        $("#yesterdayListenDiv").attr("hidden", "hidden");
        $("#causeRefusedDiv").removeAttr("hidden");
      });
    });
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
    $("#formyesterdayListen1").change(function () {
      $("#educationDiv").attr("hidden", "hidden");
      $("#yesterdayListen1Div").removeAttr("hidden");
    });
    $("#formyesterdayListen2").change(function () {
      $("#yesterdayListen1Div").attr("hidden", "hidden");
      $("#educationDiv").removeAttr("hidden");
    });
    $("[name='form[whichDevice1]']").change(function () {
      $("#educationDiv").removeAttr("hidden");
      $("#yesterdayListen2Div").removeAttr("hidden");
    });
    $("[name='form[whichDevice2]']").change(function () {
      $("#yesterdayListen3Div").removeAttr("hidden");
    });
    $("[name='form[whichDevice3]']").change(function () {
      $("#yesterdayListen4Div").removeAttr("hidden");
    });
    $("[name='form[whichDevice4]']").change(function () {
      $("#yesterdayListen5Div").removeAttr("hidden");
    });
    $("[name='form[whichDevice5]']").change(function () {
      $("#yesterdayListen6Div").removeAttr("hidden");
    });
    $("#educationDiv").change(function () {
      $("#professionDiv").removeAttr("hidden");
    });
    $("#professionDiv").change(function () {
      $("#submitButton").removeAttr("disabled");
    });
    $("#causeRefusedDiv").change(function () {
      $("#submitButton").removeAttr("disabled");
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
                    <div id="whatRadioListenLastWeek">
                    </div>
                    <br>
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

                <button id="submitButton" class="btn btn-success btn-lg" disabled>Отправить</button>

                <br><br><br><br>

            </form:form>
        </div>

    </div> <!-- /row -->

</div> <!-- /container-full -->