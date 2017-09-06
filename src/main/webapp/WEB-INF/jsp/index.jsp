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
      $("#genderDiv").attr("hidden", "true");

      var city = $("#formCity").val();
      var $whatRadioListenLastWeek = $("#whatRadioListenLastWeek");
      $whatRadioListenLastWeek.html("");

      if (city === "Минск") {
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek1\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"1\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek1\">1. Радио Минск 92,4</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek2\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"2\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek2\">2. Юмор FM 93,7</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek3\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"3\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek3\">3. Мелодии Века 96,2</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek4\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"4\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek4\">4. Минская Волна 97,4</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek5\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"5\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek5\">5. Новое Радио 98,4</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek6\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"6\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek6\">6. Русское Радио Минск 98,9</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek7\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"7\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek7\">7. Радио UNISTAR 99,5</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek8\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"8\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek8\">8. Хит-Радио 100,4</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek9\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"9\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek9\">9. Пилот FM 101,2</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek10\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"10\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek10\">10. Радио ОНТ 101,7</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek11\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"11\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek11\">11. Радио РОКС 102,1</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek12\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"12\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek12\">12. Народное радио 102,5</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek13\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"13\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek13\">13. Культура 102,9</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek14\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"14\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek14\">14. Радиус FM 103,7</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek15\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"15\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek15\">15. Радио Би-Эй 104,6</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek16\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"16\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek16\">16. Столица 105,1</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek17\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"17\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek17\">17. Душевное радио 105,7</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek18\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"18\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek18\">18. 1-й Национальный канал белорусского радио 106,2</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek19\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"19\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek19\">19. Легенды FM 94,1</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek20\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"20\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek20\">20. Радио Мир 107,1</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek21\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"21\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek21\">21. Альфа радио 107,9</label><br></div>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Брест") {
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek1\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"1\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek1\">1. Радио Минск 100,4</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek2\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"2\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek2\">2. Юмор FM 87,5</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek5\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"5\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek5\">5. Новое Радио 92,8</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek7\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"7\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek7\">7. Радио UNISTAR 102,3</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek9\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"9\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek9\">9. Пилот FM 102,9</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek11\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"11\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek11\">11. Радио РОКС 101,2</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek13\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"13\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek13\">13. Культура 88,5</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek14\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"14\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek14\">14. Радиус FM 103,7</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek15\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"15\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek15\">15. Радио Би-Эй 106,2</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek18\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"18\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek18\">18. 1-й Национальный канал белорусского радио 100,1</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek20\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"20\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek20\">20. Радио Мир 106,6</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek21\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"21\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek21\">21. Альфа радио 100,8</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek22\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"23\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek22\">23. Город FM (Брест) 97,7</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek23\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"24\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek23\">24. Радио Брест 104,8</label><br></div>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Витебск") {
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek1\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"1\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek1\">1. Радио Минск 106,4</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek2\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"2\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek2\">2. Юмор FM 96,2</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek5\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"5\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek5\">5. Новое Радио 98,7</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek9\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"9\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek9\">9. Пилот FM 92,2</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek11\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"11\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek11\">11. Радио РОКС 103,0</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek13\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"13\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek13\">13. Культура 99,3</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek14\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"14\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek14\">14. Радиус FM 105,5</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek15\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"15\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek15\">15. Радио Би-Эй 91,7</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek18\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"18\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek18\">18. 1-й Национальный канал белорусского радио 100,5</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek20\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"20\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek20\">20. Радио Мир 101,8</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek21\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"21\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek21\">21. Альфа радио 107,6</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek24\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"25\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek24\">25. Русское Радио Витебск 89,5</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek25\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"26\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek25\">26. Радио Витебск 91,2</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek26\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"27\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek26\">27. Европа Плюс (Витебск) 97,8</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek27\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"28\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek27\">28. Ретро Люкс FM (Витебск) 104,6</label><br></div>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Гомель") {
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek1\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"1\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek1\">1. Радио Минск 105,6</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek2\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"2\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek2\">2. Юмор FM 92,1</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek5\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"5\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek5\">5. Новое Радио 106,7</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek7\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"7\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek7\">7. Радио UNISTAR 98,8</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek9\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"9\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek9\">9. Пилот FM 104,4</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek11\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"11\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek11\">11. Радио РОКС 102,6</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek13\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"13\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek13\">13. Культура 91,5</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek14\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"14\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek14\">14. Радиус FM 100,1</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek15\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"15\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek15\">15. Радио Би-Эй 91,0</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek17\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"17\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek17\">17. Душевное радио 106,0</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek18\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"18\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek18\">18. 1-й Национальный канал белорусского радио 105,1</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek20\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"20\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek20\">20. Радио Мир 101,7</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek28\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"29\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek28\">29. Гомель FM 101,3</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek29\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"30\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek29\">30. Гомель Плюс 103,7</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek30\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"31\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek30\">31. Гомельское городское радио 107,4</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek31\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"36\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek31\">36. Радио Правда (Гомель) 99,0</label><br></div>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Гродно") {
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek2\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"2\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek2\">2. Юмор FM 89,9</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek5\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"5\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek5\">5. Новое Радио 92,9</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek9\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"9\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek9\">9. Пилот FM 102,1</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek11\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"11\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek11\">11. Радио РОКС 106,9</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek12\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"12\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek12\">12. Народное радио 87,5</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek13\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"13\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek13\">13. Культура 95,0</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek14\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"14\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek14\">14. Радиус FM 100,5</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek15\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"15\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek15\">15. Радио Би-Эй 95,7</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek17\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"17\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek17\">17. Душевное радио 88,2</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek18\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"18\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek18\">18. 1-й Национальный канал белорусского радио 103,0</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek20\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"20\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek20\">20. Радио Мир 104,2</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek21\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"21\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek21\">21. Альфа радио 98,4</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek32\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"32\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek32\">32. Радио Гродно 101,2</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek33\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"33\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek33\">33. Радио MFM (Гродно) 105,0</label><br></div>");
        $("#genderDiv").removeAttr("hidden");
      } else if (city === "Могилев") {
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek1\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"1\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek1\">1. Радио Минск 98,1</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek2\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"2\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek2\">2. Юмор FM 91,9</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek5\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"5\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek5\">5. Новое Радио 95,7</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek7\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"7\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek7\">7. Радио UNISTAR 90,0</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek9\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"9\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek9\">9. Пилот FM 93,2</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek11\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"11\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek11\">11. Радио РОКС 103,4</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek13\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"13\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek13\">13. Культура 99,1</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek14\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"14\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek14\">14. Радиус FM 100,9</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek15\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"15\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek15\">15. Радио Би-Эй 104,5</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek18\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"18\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek18\">18. 1-й Национальный канал белорусского радио 105,9</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek20\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"20\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek20\">20. Радио Мир 107,8</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek34\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"34\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek34\">34. Радио Могилев 96,4</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek35\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"35\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek35\">35. Русское Радио Могилев 98,6</label><br></div>");
        $("#genderDiv").removeAttr("hidden");
      }

      var whatRadioListenLastWeek = document.querySelector('#whatRadioListenLastWeek');
      for (var i = whatRadioListenLastWeek.children.length; i >= 0; i--) {
        whatRadioListenLastWeek.appendChild(whatRadioListenLastWeek.children[Math.random() * i | 0]);
      }

      $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek99\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"99\"><label for=\"formwhatRadioListenLastWeek99\">99. Другая радиостанция: </label><input name=\"form[whatRadioListenLastWeek]\" style=\"width: 50%\" type=\"text\" class=\"input-small\" value=\"\"><br></div>");

      $("[name='form[whatRadioListenLastWeek]']").change(function () {
        $("#formwhatRadioListenLastWeek0").prop('checked', false);
        $("#yesterdayListenDiv").removeAttr("hidden");
      });
      $("#formwhatRadioListenLastWeek1").change(function () {
        if ($("#formwhatRadioListenLastWeek1").is(':checked')) {
          $("#formwhatRadioListen11Div").removeAttr("hidden");
          $("#formwhatRadioListen21Div").removeAttr("hidden");
          $("#formwhatRadioListen31Div").removeAttr("hidden");
          $("#formwhatRadioListen41Div").removeAttr("hidden");
          $("#formwhatRadioListen51Div").removeAttr("hidden");
          $("#formwhatRadioListen61Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen11Div").attr("hidden", "hidden");
          $("#formwhatRadioListen21Div").attr("hidden", "hidden");
          $("#formwhatRadioListen31Div").attr("hidden", "hidden");
          $("#formwhatRadioListen41Div").attr("hidden", "hidden");
          $("#formwhatRadioListen51Div").attr("hidden", "hidden");
          $("#formwhatRadioListen61Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek2").change(function () {
        if ($("#formwhatRadioListenLastWeek2").is(':checked')) {
          $("#formwhatRadioListen12Div").removeAttr("hidden");
          $("#formwhatRadioListen22Div").removeAttr("hidden");
          $("#formwhatRadioListen32Div").removeAttr("hidden");
          $("#formwhatRadioListen42Div").removeAttr("hidden");
          $("#formwhatRadioListen52Div").removeAttr("hidden");
          $("#formwhatRadioListen62Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen12Div").attr("hidden", "hidden");
          $("#formwhatRadioListen22Div").attr("hidden", "hidden");
          $("#formwhatRadioListen32Div").attr("hidden", "hidden");
          $("#formwhatRadioListen42Div").attr("hidden", "hidden");
          $("#formwhatRadioListen52Div").attr("hidden", "hidden");
          $("#formwhatRadioListen62Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek3").change(function () {
        if ($("#formwhatRadioListenLastWeek3").is(':checked')) {
          $("#formwhatRadioListen13Div").removeAttr("hidden");
          $("#formwhatRadioListen23Div").removeAttr("hidden");
          $("#formwhatRadioListen33Div").removeAttr("hidden");
          $("#formwhatRadioListen43Div").removeAttr("hidden");
          $("#formwhatRadioListen53Div").removeAttr("hidden");
          $("#formwhatRadioListen63Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen13Div").attr("hidden", "hidden");
          $("#formwhatRadioListen23Div").attr("hidden", "hidden");
          $("#formwhatRadioListen33Div").attr("hidden", "hidden");
          $("#formwhatRadioListen43Div").attr("hidden", "hidden");
          $("#formwhatRadioListen53Div").attr("hidden", "hidden");
          $("#formwhatRadioListen63Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek4").change(function () {
        if ($("#formwhatRadioListenLastWeek4").is(':checked')) {
          $("#formwhatRadioListen14Div").removeAttr("hidden");
          $("#formwhatRadioListen24Div").removeAttr("hidden");
          $("#formwhatRadioListen34Div").removeAttr("hidden");
          $("#formwhatRadioListen44Div").removeAttr("hidden");
          $("#formwhatRadioListen54Div").removeAttr("hidden");
          $("#formwhatRadioListen64Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen14Div").attr("hidden", "hidden");
          $("#formwhatRadioListen24Div").attr("hidden", "hidden");
          $("#formwhatRadioListen34Div").attr("hidden", "hidden");
          $("#formwhatRadioListen44Div").attr("hidden", "hidden");
          $("#formwhatRadioListen54Div").attr("hidden", "hidden");
          $("#formwhatRadioListen64Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek5").change(function () {
        if ($("#formwhatRadioListenLastWeek5").is(':checked')) {
          $("#formwhatRadioListen15Div").removeAttr("hidden");
          $("#formwhatRadioListen25Div").removeAttr("hidden");
          $("#formwhatRadioListen35Div").removeAttr("hidden");
          $("#formwhatRadioListen45Div").removeAttr("hidden");
          $("#formwhatRadioListen55Div").removeAttr("hidden");
          $("#formwhatRadioListen65Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen15Div").attr("hidden", "hidden");
          $("#formwhatRadioListen25Div").attr("hidden", "hidden");
          $("#formwhatRadioListen35Div").attr("hidden", "hidden");
          $("#formwhatRadioListen45Div").attr("hidden", "hidden");
          $("#formwhatRadioListen55Div").attr("hidden", "hidden");
          $("#formwhatRadioListen65Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek6").change(function () {
        if ($("#formwhatRadioListenLastWeek6").is(':checked')) {
          $("#formwhatRadioListen16Div").removeAttr("hidden");
          $("#formwhatRadioListen26Div").removeAttr("hidden");
          $("#formwhatRadioListen36Div").removeAttr("hidden");
          $("#formwhatRadioListen46Div").removeAttr("hidden");
          $("#formwhatRadioListen56Div").removeAttr("hidden");
          $("#formwhatRadioListen66Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen16Div").attr("hidden", "hidden");
          $("#formwhatRadioListen26Div").attr("hidden", "hidden");
          $("#formwhatRadioListen36Div").attr("hidden", "hidden");
          $("#formwhatRadioListen46Div").attr("hidden", "hidden");
          $("#formwhatRadioListen56Div").attr("hidden", "hidden");
          $("#formwhatRadioListen66Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek7").change(function () {
        if ($("#formwhatRadioListenLastWeek7").is(':checked')) {
          $("#formwhatRadioListen17Div").removeAttr("hidden");
          $("#formwhatRadioListen27Div").removeAttr("hidden");
          $("#formwhatRadioListen37Div").removeAttr("hidden");
          $("#formwhatRadioListen47Div").removeAttr("hidden");
          $("#formwhatRadioListen57Div").removeAttr("hidden");
          $("#formwhatRadioListen67Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen17Div").attr("hidden", "hidden");
          $("#formwhatRadioListen27Div").attr("hidden", "hidden");
          $("#formwhatRadioListen37Div").attr("hidden", "hidden");
          $("#formwhatRadioListen47Div").attr("hidden", "hidden");
          $("#formwhatRadioListen57Div").attr("hidden", "hidden");
          $("#formwhatRadioListen67Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek8").change(function () {
        if ($("#formwhatRadioListenLastWeek8").is(':checked')) {
          $("#formwhatRadioListen18Div").removeAttr("hidden");
          $("#formwhatRadioListen28Div").removeAttr("hidden");
          $("#formwhatRadioListen38Div").removeAttr("hidden");
          $("#formwhatRadioListen48Div").removeAttr("hidden");
          $("#formwhatRadioListen58Div").removeAttr("hidden");
          $("#formwhatRadioListen68Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen18Div").attr("hidden", "hidden");
          $("#formwhatRadioListen28Div").attr("hidden", "hidden");
          $("#formwhatRadioListen38Div").attr("hidden", "hidden");
          $("#formwhatRadioListen48Div").attr("hidden", "hidden");
          $("#formwhatRadioListen58Div").attr("hidden", "hidden");
          $("#formwhatRadioListen68Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek9").change(function () {
        if ($("#formwhatRadioListenLastWeek9").is(':checked')) {
          $("#formwhatRadioListen19Div").removeAttr("hidden");
          $("#formwhatRadioListen29Div").removeAttr("hidden");
          $("#formwhatRadioListen39Div").removeAttr("hidden");
          $("#formwhatRadioListen49Div").removeAttr("hidden");
          $("#formwhatRadioListen59Div").removeAttr("hidden");
          $("#formwhatRadioListen69Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen19Div").attr("hidden", "hidden");
          $("#formwhatRadioListen29Div").attr("hidden", "hidden");
          $("#formwhatRadioListen39Div").attr("hidden", "hidden");
          $("#formwhatRadioListen49Div").attr("hidden", "hidden");
          $("#formwhatRadioListen59Div").attr("hidden", "hidden");
          $("#formwhatRadioListen69Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek10").change(function () {
        if ($("#formwhatRadioListenLastWeek10").is(':checked')) {
          $("#formwhatRadioListen110Div").removeAttr("hidden");
          $("#formwhatRadioListen210Div").removeAttr("hidden");
          $("#formwhatRadioListen310Div").removeAttr("hidden");
          $("#formwhatRadioListen410Div").removeAttr("hidden");
          $("#formwhatRadioListen510Div").removeAttr("hidden");
          $("#formwhatRadioListen610Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen110Div").attr("hidden", "hidden");
          $("#formwhatRadioListen210Div").attr("hidden", "hidden");
          $("#formwhatRadioListen310Div").attr("hidden", "hidden");
          $("#formwhatRadioListen410Div").attr("hidden", "hidden");
          $("#formwhatRadioListen510Div").attr("hidden", "hidden");
          $("#formwhatRadioListen610Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek11").change(function () {
        if ($("#formwhatRadioListenLastWeek11").is(':checked')) {
          $("#formwhatRadioListen111Div").removeAttr("hidden");
          $("#formwhatRadioListen211Div").removeAttr("hidden");
          $("#formwhatRadioListen311Div").removeAttr("hidden");
          $("#formwhatRadioListen411Div").removeAttr("hidden");
          $("#formwhatRadioListen511Div").removeAttr("hidden");
          $("#formwhatRadioListen611Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen111Div").attr("hidden", "hidden");
          $("#formwhatRadioListen211Div").attr("hidden", "hidden");
          $("#formwhatRadioListen311Div").attr("hidden", "hidden");
          $("#formwhatRadioListen411Div").attr("hidden", "hidden");
          $("#formwhatRadioListen511Div").attr("hidden", "hidden");
          $("#formwhatRadioListen611Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek12").change(function () {
        if ($("#formwhatRadioListenLastWeek12").is(':checked')) {
          $("#formwhatRadioListen112Div").removeAttr("hidden");
          $("#formwhatRadioListen212Div").removeAttr("hidden");
          $("#formwhatRadioListen312Div").removeAttr("hidden");
          $("#formwhatRadioListen412Div").removeAttr("hidden");
          $("#formwhatRadioListen512Div").removeAttr("hidden");
          $("#formwhatRadioListen612Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen112Div").attr("hidden", "hidden");
          $("#formwhatRadioListen212Div").attr("hidden", "hidden");
          $("#formwhatRadioListen312Div").attr("hidden", "hidden");
          $("#formwhatRadioListen412Div").attr("hidden", "hidden");
          $("#formwhatRadioListen512Div").attr("hidden", "hidden");
          $("#formwhatRadioListen612Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek13").change(function () {
        if ($("#formwhatRadioListenLastWeek13").is(':checked')) {
          $("#formwhatRadioListen113Div").removeAttr("hidden");
          $("#formwhatRadioListen213Div").removeAttr("hidden");
          $("#formwhatRadioListen313Div").removeAttr("hidden");
          $("#formwhatRadioListen413Div").removeAttr("hidden");
          $("#formwhatRadioListen513Div").removeAttr("hidden");
          $("#formwhatRadioListen613Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen113Div").attr("hidden", "hidden");
          $("#formwhatRadioListen213Div").attr("hidden", "hidden");
          $("#formwhatRadioListen313Div").attr("hidden", "hidden");
          $("#formwhatRadioListen413Div").attr("hidden", "hidden");
          $("#formwhatRadioListen513Div").attr("hidden", "hidden");
          $("#formwhatRadioListen613Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek14").change(function () {
        if ($("#formwhatRadioListenLastWeek14").is(':checked')) {
          $("#formwhatRadioListen114Div").removeAttr("hidden");
          $("#formwhatRadioListen214Div").removeAttr("hidden");
          $("#formwhatRadioListen314Div").removeAttr("hidden");
          $("#formwhatRadioListen414Div").removeAttr("hidden");
          $("#formwhatRadioListen514Div").removeAttr("hidden");
          $("#formwhatRadioListen614Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen114Div").attr("hidden", "hidden");
          $("#formwhatRadioListen214Div").attr("hidden", "hidden");
          $("#formwhatRadioListen314Div").attr("hidden", "hidden");
          $("#formwhatRadioListen414Div").attr("hidden", "hidden");
          $("#formwhatRadioListen514Div").attr("hidden", "hidden");
          $("#formwhatRadioListen614Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek15").change(function () {
        if ($("#formwhatRadioListenLastWeek15").is(':checked')) {
          $("#formwhatRadioListen115Div").removeAttr("hidden");
          $("#formwhatRadioListen215Div").removeAttr("hidden");
          $("#formwhatRadioListen315Div").removeAttr("hidden");
          $("#formwhatRadioListen415Div").removeAttr("hidden");
          $("#formwhatRadioListen515Div").removeAttr("hidden");
          $("#formwhatRadioListen615Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen115Div").attr("hidden", "hidden");
          $("#formwhatRadioListen215Div").attr("hidden", "hidden");
          $("#formwhatRadioListen315Div").attr("hidden", "hidden");
          $("#formwhatRadioListen415Div").attr("hidden", "hidden");
          $("#formwhatRadioListen515Div").attr("hidden", "hidden");
          $("#formwhatRadioListen615Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek16").change(function () {
        if ($("#formwhatRadioListenLastWeek16").is(':checked')) {
          $("#formwhatRadioListen116Div").removeAttr("hidden");
          $("#formwhatRadioListen216Div").removeAttr("hidden");
          $("#formwhatRadioListen316Div").removeAttr("hidden");
          $("#formwhatRadioListen416Div").removeAttr("hidden");
          $("#formwhatRadioListen516Div").removeAttr("hidden");
          $("#formwhatRadioListen616Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen116Div").attr("hidden", "hidden");
          $("#formwhatRadioListen216Div").attr("hidden", "hidden");
          $("#formwhatRadioListen316Div").attr("hidden", "hidden");
          $("#formwhatRadioListen416Div").attr("hidden", "hidden");
          $("#formwhatRadioListen516Div").attr("hidden", "hidden");
          $("#formwhatRadioListen616Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek17").change(function () {
        if ($("#formwhatRadioListenLastWeek17").is(':checked')) {
          $("#formwhatRadioListen117Div").removeAttr("hidden");
          $("#formwhatRadioListen217Div").removeAttr("hidden");
          $("#formwhatRadioListen317Div").removeAttr("hidden");
          $("#formwhatRadioListen417Div").removeAttr("hidden");
          $("#formwhatRadioListen517Div").removeAttr("hidden");
          $("#formwhatRadioListen617Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen117Div").attr("hidden", "hidden");
          $("#formwhatRadioListen217Div").attr("hidden", "hidden");
          $("#formwhatRadioListen317Div").attr("hidden", "hidden");
          $("#formwhatRadioListen417Div").attr("hidden", "hidden");
          $("#formwhatRadioListen517Div").attr("hidden", "hidden");
          $("#formwhatRadioListen617Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek18").change(function () {
        if ($("#formwhatRadioListenLastWeek18").is(':checked')) {
          $("#formwhatRadioListen118Div").removeAttr("hidden");
          $("#formwhatRadioListen218Div").removeAttr("hidden");
          $("#formwhatRadioListen318Div").removeAttr("hidden");
          $("#formwhatRadioListen418Div").removeAttr("hidden");
          $("#formwhatRadioListen518Div").removeAttr("hidden");
          $("#formwhatRadioListen618Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen118Div").attr("hidden", "hidden");
          $("#formwhatRadioListen218Div").attr("hidden", "hidden");
          $("#formwhatRadioListen318Div").attr("hidden", "hidden");
          $("#formwhatRadioListen418Div").attr("hidden", "hidden");
          $("#formwhatRadioListen518Div").attr("hidden", "hidden");
          $("#formwhatRadioListen618Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek19").change(function () {
        if ($("#formwhatRadioListenLastWeek19").is(':checked')) {
          $("#formwhatRadioListen119Div").removeAttr("hidden");
          $("#formwhatRadioListen219Div").removeAttr("hidden");
          $("#formwhatRadioListen319Div").removeAttr("hidden");
          $("#formwhatRadioListen419Div").removeAttr("hidden");
          $("#formwhatRadioListen519Div").removeAttr("hidden");
          $("#formwhatRadioListen619Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen119Div").attr("hidden", "hidden");
          $("#formwhatRadioListen219Div").attr("hidden", "hidden");
          $("#formwhatRadioListen319Div").attr("hidden", "hidden");
          $("#formwhatRadioListen419Div").attr("hidden", "hidden");
          $("#formwhatRadioListen519Div").attr("hidden", "hidden");
          $("#formwhatRadioListen619Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek20").change(function () {
        if ($("#formwhatRadioListenLastWeek20").is(':checked')) {
          $("#formwhatRadioListen120Div").removeAttr("hidden");
          $("#formwhatRadioListen220Div").removeAttr("hidden");
          $("#formwhatRadioListen320Div").removeAttr("hidden");
          $("#formwhatRadioListen420Div").removeAttr("hidden");
          $("#formwhatRadioListen520Div").removeAttr("hidden");
          $("#formwhatRadioListen620Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen120Div").attr("hidden", "hidden");
          $("#formwhatRadioListen220Div").attr("hidden", "hidden");
          $("#formwhatRadioListen320Div").attr("hidden", "hidden");
          $("#formwhatRadioListen420Div").attr("hidden", "hidden");
          $("#formwhatRadioListen520Div").attr("hidden", "hidden");
          $("#formwhatRadioListen620Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek21").change(function () {
        if ($("#formwhatRadioListenLastWeek21").is(':checked')) {
          $("#formwhatRadioListen121Div").removeAttr("hidden");
          $("#formwhatRadioListen221Div").removeAttr("hidden");
          $("#formwhatRadioListen321Div").removeAttr("hidden");
          $("#formwhatRadioListen421Div").removeAttr("hidden");
          $("#formwhatRadioListen521Div").removeAttr("hidden");
          $("#formwhatRadioListen621Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen121Div").attr("hidden", "hidden");
          $("#formwhatRadioListen221Div").attr("hidden", "hidden");
          $("#formwhatRadioListen321Div").attr("hidden", "hidden");
          $("#formwhatRadioListen421Div").attr("hidden", "hidden");
          $("#formwhatRadioListen521Div").attr("hidden", "hidden");
          $("#formwhatRadioListen621Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek22").change(function () {
        if ($("#formwhatRadioListenLastWeek22").is(':checked')) {
          $("#formwhatRadioListen122Div").removeAttr("hidden");
          $("#formwhatRadioListen222Div").removeAttr("hidden");
          $("#formwhatRadioListen322Div").removeAttr("hidden");
          $("#formwhatRadioListen422Div").removeAttr("hidden");
          $("#formwhatRadioListen522Div").removeAttr("hidden");
          $("#formwhatRadioListen622Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen122Div").attr("hidden", "hidden");
          $("#formwhatRadioListen222Div").attr("hidden", "hidden");
          $("#formwhatRadioListen322Div").attr("hidden", "hidden");
          $("#formwhatRadioListen422Div").attr("hidden", "hidden");
          $("#formwhatRadioListen522Div").attr("hidden", "hidden");
          $("#formwhatRadioListen622Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek23").change(function () {
        if ($("#formwhatRadioListenLastWeek23").is(':checked')) {
          $("#formwhatRadioListen123Div").removeAttr("hidden");
          $("#formwhatRadioListen223Div").removeAttr("hidden");
          $("#formwhatRadioListen323Div").removeAttr("hidden");
          $("#formwhatRadioListen423Div").removeAttr("hidden");
          $("#formwhatRadioListen523Div").removeAttr("hidden");
          $("#formwhatRadioListen623Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen123Div").attr("hidden", "hidden");
          $("#formwhatRadioListen223Div").attr("hidden", "hidden");
          $("#formwhatRadioListen323Div").attr("hidden", "hidden");
          $("#formwhatRadioListen423Div").attr("hidden", "hidden");
          $("#formwhatRadioListen523Div").attr("hidden", "hidden");
          $("#formwhatRadioListen623Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek24").change(function () {
        if ($("#formwhatRadioListenLastWeek24").is(':checked')) {
          $("#formwhatRadioListen124Div").removeAttr("hidden");
          $("#formwhatRadioListen224Div").removeAttr("hidden");
          $("#formwhatRadioListen324Div").removeAttr("hidden");
          $("#formwhatRadioListen424Div").removeAttr("hidden");
          $("#formwhatRadioListen524Div").removeAttr("hidden");
          $("#formwhatRadioListen624Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen124Div").attr("hidden", "hidden");
          $("#formwhatRadioListen224Div").attr("hidden", "hidden");
          $("#formwhatRadioListen324Div").attr("hidden", "hidden");
          $("#formwhatRadioListen424Div").attr("hidden", "hidden");
          $("#formwhatRadioListen524Div").attr("hidden", "hidden");
          $("#formwhatRadioListen624Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek25").change(function () {
        if ($("#formwhatRadioListenLastWeek25").is(':checked')) {
          $("#formwhatRadioListen125Div").removeAttr("hidden");
          $("#formwhatRadioListen225Div").removeAttr("hidden");
          $("#formwhatRadioListen325Div").removeAttr("hidden");
          $("#formwhatRadioListen425Div").removeAttr("hidden");
          $("#formwhatRadioListen525Div").removeAttr("hidden");
          $("#formwhatRadioListen625Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen125Div").attr("hidden", "hidden");
          $("#formwhatRadioListen225Div").attr("hidden", "hidden");
          $("#formwhatRadioListen325Div").attr("hidden", "hidden");
          $("#formwhatRadioListen425Div").attr("hidden", "hidden");
          $("#formwhatRadioListen525Div").attr("hidden", "hidden");
          $("#formwhatRadioListen625Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek26").change(function () {
        if ($("#formwhatRadioListenLastWeek26").is(':checked')) {
          $("#formwhatRadioListen126Div").removeAttr("hidden");
          $("#formwhatRadioListen226Div").removeAttr("hidden");
          $("#formwhatRadioListen326Div").removeAttr("hidden");
          $("#formwhatRadioListen426Div").removeAttr("hidden");
          $("#formwhatRadioListen526Div").removeAttr("hidden");
          $("#formwhatRadioListen626Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen126Div").attr("hidden", "hidden");
          $("#formwhatRadioListen226Div").attr("hidden", "hidden");
          $("#formwhatRadioListen326Div").attr("hidden", "hidden");
          $("#formwhatRadioListen426Div").attr("hidden", "hidden");
          $("#formwhatRadioListen526Div").attr("hidden", "hidden");
          $("#formwhatRadioListen626Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek27").change(function () {
        if ($("#formwhatRadioListenLastWeek27").is(':checked')) {
          $("#formwhatRadioListen127Div").removeAttr("hidden");
          $("#formwhatRadioListen227Div").removeAttr("hidden");
          $("#formwhatRadioListen327Div").removeAttr("hidden");
          $("#formwhatRadioListen427Div").removeAttr("hidden");
          $("#formwhatRadioListen527Div").removeAttr("hidden");
          $("#formwhatRadioListen627Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen127Div").attr("hidden", "hidden");
          $("#formwhatRadioListen227Div").attr("hidden", "hidden");
          $("#formwhatRadioListen327Div").attr("hidden", "hidden");
          $("#formwhatRadioListen427Div").attr("hidden", "hidden");
          $("#formwhatRadioListen527Div").attr("hidden", "hidden");
          $("#formwhatRadioListen627Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek28").change(function () {
        if ($("#formwhatRadioListenLastWeek28").is(':checked')) {
          $("#formwhatRadioListen128Div").removeAttr("hidden");
          $("#formwhatRadioListen228Div").removeAttr("hidden");
          $("#formwhatRadioListen328Div").removeAttr("hidden");
          $("#formwhatRadioListen428Div").removeAttr("hidden");
          $("#formwhatRadioListen528Div").removeAttr("hidden");
          $("#formwhatRadioListen628Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen128Div").attr("hidden", "hidden");
          $("#formwhatRadioListen228Div").attr("hidden", "hidden");
          $("#formwhatRadioListen328Div").attr("hidden", "hidden");
          $("#formwhatRadioListen428Div").attr("hidden", "hidden");
          $("#formwhatRadioListen528Div").attr("hidden", "hidden");
          $("#formwhatRadioListen628Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek29").change(function () {
        if ($("#formwhatRadioListenLastWeek29").is(':checked')) {
          $("#formwhatRadioListen129Div").removeAttr("hidden");
          $("#formwhatRadioListen229Div").removeAttr("hidden");
          $("#formwhatRadioListen329Div").removeAttr("hidden");
          $("#formwhatRadioListen429Div").removeAttr("hidden");
          $("#formwhatRadioListen529Div").removeAttr("hidden");
          $("#formwhatRadioListen629Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen129Div").attr("hidden", "hidden");
          $("#formwhatRadioListen229Div").attr("hidden", "hidden");
          $("#formwhatRadioListen329Div").attr("hidden", "hidden");
          $("#formwhatRadioListen429Div").attr("hidden", "hidden");
          $("#formwhatRadioListen529Div").attr("hidden", "hidden");
          $("#formwhatRadioListen629Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek30").change(function () {
        if ($("#formwhatRadioListenLastWeek30").is(':checked')) {
          $("#formwhatRadioListen130Div").removeAttr("hidden");
          $("#formwhatRadioListen230Div").removeAttr("hidden");
          $("#formwhatRadioListen330Div").removeAttr("hidden");
          $("#formwhatRadioListen430Div").removeAttr("hidden");
          $("#formwhatRadioListen530Div").removeAttr("hidden");
          $("#formwhatRadioListen630Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen130Div").attr("hidden", "hidden");
          $("#formwhatRadioListen230Div").attr("hidden", "hidden");
          $("#formwhatRadioListen330Div").attr("hidden", "hidden");
          $("#formwhatRadioListen430Div").attr("hidden", "hidden");
          $("#formwhatRadioListen530Div").attr("hidden", "hidden");
          $("#formwhatRadioListen630Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek31").change(function () {
        if ($("#formwhatRadioListenLastWeek31").is(':checked')) {
          $("#formwhatRadioListen131Div").removeAttr("hidden");
          $("#formwhatRadioListen231Div").removeAttr("hidden");
          $("#formwhatRadioListen331Div").removeAttr("hidden");
          $("#formwhatRadioListen431Div").removeAttr("hidden");
          $("#formwhatRadioListen531Div").removeAttr("hidden");
          $("#formwhatRadioListen631Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen131Div").attr("hidden", "hidden");
          $("#formwhatRadioListen231Div").attr("hidden", "hidden");
          $("#formwhatRadioListen331Div").attr("hidden", "hidden");
          $("#formwhatRadioListen431Div").attr("hidden", "hidden");
          $("#formwhatRadioListen531Div").attr("hidden", "hidden");
          $("#formwhatRadioListen631Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek32").change(function () {
        if ($("#formwhatRadioListenLastWeek32").is(':checked')) {
          $("#formwhatRadioListen132Div").removeAttr("hidden");
          $("#formwhatRadioListen232Div").removeAttr("hidden");
          $("#formwhatRadioListen332Div").removeAttr("hidden");
          $("#formwhatRadioListen432Div").removeAttr("hidden");
          $("#formwhatRadioListen532Div").removeAttr("hidden");
          $("#formwhatRadioListen632Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen132Div").attr("hidden", "hidden");
          $("#formwhatRadioListen232Div").attr("hidden", "hidden");
          $("#formwhatRadioListen332Div").attr("hidden", "hidden");
          $("#formwhatRadioListen432Div").attr("hidden", "hidden");
          $("#formwhatRadioListen532Div").attr("hidden", "hidden");
          $("#formwhatRadioListen632Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek33").change(function () {
        if ($("#formwhatRadioListenLastWeek33").is(':checked')) {
          $("#formwhatRadioListen133Div").removeAttr("hidden");
          $("#formwhatRadioListen233Div").removeAttr("hidden");
          $("#formwhatRadioListen333Div").removeAttr("hidden");
          $("#formwhatRadioListen433Div").removeAttr("hidden");
          $("#formwhatRadioListen533Div").removeAttr("hidden");
          $("#formwhatRadioListen633Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen133Div").attr("hidden", "hidden");
          $("#formwhatRadioListen233Div").attr("hidden", "hidden");
          $("#formwhatRadioListen333Div").attr("hidden", "hidden");
          $("#formwhatRadioListen433Div").attr("hidden", "hidden");
          $("#formwhatRadioListen533Div").attr("hidden", "hidden");
          $("#formwhatRadioListen633Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek34").change(function () {
        if ($("#formwhatRadioListenLastWeek34").is(':checked')) {
          $("#formwhatRadioListen134Div").removeAttr("hidden");
          $("#formwhatRadioListen234Div").removeAttr("hidden");
          $("#formwhatRadioListen334Div").removeAttr("hidden");
          $("#formwhatRadioListen434Div").removeAttr("hidden");
          $("#formwhatRadioListen534Div").removeAttr("hidden");
          $("#formwhatRadioListen634Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen134Div").attr("hidden", "hidden");
          $("#formwhatRadioListen234Div").attr("hidden", "hidden");
          $("#formwhatRadioListen334Div").attr("hidden", "hidden");
          $("#formwhatRadioListen434Div").attr("hidden", "hidden");
          $("#formwhatRadioListen534Div").attr("hidden", "hidden");
          $("#formwhatRadioListen634Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek35").change(function () {
        if ($("#formwhatRadioListenLastWeek35").is(':checked')) {
          $("#formwhatRadioListen135Div").removeAttr("hidden");
          $("#formwhatRadioListen235Div").removeAttr("hidden");
          $("#formwhatRadioListen335Div").removeAttr("hidden");
          $("#formwhatRadioListen435Div").removeAttr("hidden");
          $("#formwhatRadioListen535Div").removeAttr("hidden");
          $("#formwhatRadioListen635Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen135Div").attr("hidden", "hidden");
          $("#formwhatRadioListen235Div").attr("hidden", "hidden");
          $("#formwhatRadioListen335Div").attr("hidden", "hidden");
          $("#formwhatRadioListen435Div").attr("hidden", "hidden");
          $("#formwhatRadioListen535Div").attr("hidden", "hidden");
          $("#formwhatRadioListen635Div").attr("hidden", "hidden");
        }
      });
      $("#formwhatRadioListenLastWeek99").change(function () {
        if ($("#formwhatRadioListenLastWeek99").is(':checked')) {
          $("#formwhatRadioListen199Div").removeAttr("hidden");
          $("#formwhatRadioListen299Div").removeAttr("hidden");
          $("#formwhatRadioListen399Div").removeAttr("hidden");
          $("#formwhatRadioListen499Div").removeAttr("hidden");
          $("#formwhatRadioListen599Div").removeAttr("hidden");
          $("#formwhatRadioListen699Div").removeAttr("hidden");
        } else {
          $("#formwhatRadioListen199Div").attr("hidden", "hidden");
          $("#formwhatRadioListen299Div").attr("hidden", "hidden");
          $("#formwhatRadioListen399Div").attr("hidden", "hidden");
          $("#formwhatRadioListen499Div").attr("hidden", "hidden");
          $("#formwhatRadioListen599Div").attr("hidden", "hidden");
          $("#formwhatRadioListen699Div").attr("hidden", "hidden");
        }
      });
    });
    $("[name='form[gender]']").change(function () {
      $("#ageDiv").removeAttr("hidden");
    });
    $("#ageDiv")
    .keypress(function () {
      $("#lastMonthListenDiv").removeAttr("hidden");
    })
    .focusout(function () {
      var age = Number($("#formage").val());
      if (age > 11 && age < 66) {
        $("#ageDiv").removeClass("has-error").addClass("has-success");
        $("#formageDivError").attr("hidden", "hidden");
      } else {
        $("#ageDiv").removeClass("has-success").addClass("has-error");
        $("#formageDivError").removeAttr("hidden");
      }
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
    $("#formtimeInterval1")
    .keypress(function () {
      $("#whatRadioListen1").removeAttr("hidden");
    })
    .focusout(function () {
      var timeInterval = $("#formtimeInterval1").val();
      var anotherTimeRanges = [];
      $.ajax({
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        'type': 'POST',
        'url': 'validateTimeRange',
        'data': JSON.stringify({ "timeRange": timeInterval, "anotherTimeRanges": anotherTimeRanges, "timeOffset": "05:00" }),
        'dataType': 'json',
        'success': function (data) {
          if (data.valid === true) {
            $("#formtimeInterval1Div").removeClass("has-error").addClass("has-success");
            $("#formtimeInterval1DivError").attr("hidden", "hidden");
          } else {
            $("#formtimeInterval1Div").removeClass("has-success").addClass("has-error");
            $("#formtimeInterval1DivError").removeAttr("hidden");
          }
        }
      });
    });
    $("#formtimeInterval2")
    .keypress(function () {
      $("#whatRadioListen2").removeAttr("hidden");
    })
    .focusout(function () {
      var timeInterval = $("#formtimeInterval2").val();
      var timeRange1 = $("#formtimeInterval1").val();
      var anotherTimeRanges = [timeRange1];
      $.ajax({
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        'type': 'POST',
        'url': 'validateTimeRange',
        'data': JSON.stringify({ "timeRange": timeInterval, "anotherTimeRanges": anotherTimeRanges, "timeOffset": "05:00" }),
        'dataType': 'json',
        'success': function (data) {
          if (data.valid === true) {
            $("#formtimeInterval2Div").removeClass("has-error").addClass("has-success");
            $("#formtimeInterval2DivError").attr("hidden", "hidden");
          } else {
            $("#formtimeInterval2Div").removeClass("has-success").addClass("has-error");
            $("#formtimeInterval2DivError").removeAttr("hidden");
          }
        }
      });
    });
    $("#formtimeInterval3")
    .keypress(function () {
      $("#whatRadioListen3").removeAttr("hidden");
    })
    .focusout(function () {
      var timeInterval = $("#formtimeInterval3").val();
      var timeRange1 = $("#formtimeInterval1").val();
      var timeRange2 = $("#formtimeInterval2").val();
      var anotherTimeRanges = [timeRange1, timeRange2];
      $.ajax({
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        'type': 'POST',
        'url': 'validateTimeRange',
        'data': JSON.stringify({ "timeRange": timeInterval, "anotherTimeRanges": anotherTimeRanges, "timeOffset": "05:00" }),
        'dataType': 'json',
        'success': function (data) {
          if (data.valid === true) {
            $("#formtimeInterval3Div").removeClass("has-error").addClass("has-success");
            $("#formtimeInterval3DivError").attr("hidden", "hidden");
          } else {
            $("#formtimeInterval3Div").removeClass("has-success").addClass("has-error");
            $("#formtimeInterval3DivError").removeAttr("hidden");
          }
        }
      });
    });
    $("#formtimeInterval4")
    .keypress(function () {
      $("#whatRadioListen4").removeAttr("hidden");
    })
    .focusout(function () {
      var timeInterval = $("#formtimeInterval4").val();
      var timeRange1 = $("#formtimeInterval1").val();
      var timeRange2 = $("#formtimeInterval2").val();
      var timeRange3 = $("#formtimeInterval3").val();
      var anotherTimeRanges = [timeRange1, timeRange2, timeRange3];
      $.ajax({
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        'type': 'POST',
        'url': 'validateTimeRange',
        'data': JSON.stringify({ "timeRange": timeInterval, "anotherTimeRanges": anotherTimeRanges, "timeOffset": "05:00" }),
        'dataType': 'json',
        'success': function (data) {
          if (data.valid === true) {
            $("#formtimeInterval4Div").removeClass("has-error").addClass("has-success");
            $("#formtimeInterval4DivError").attr("hidden", "hidden");
          } else {
            $("#formtimeInterval4Div").removeClass("has-success").addClass("has-error");
            $("#formtimeInterval4DivError").removeAttr("hidden");
          }
        }
      });
    });
    $("#formtimeInterval5")
    .keypress(function () {
      $("#whatRadioListen5").removeAttr("hidden");
    })
    .focusout(function () {
      var timeInterval = $("#formtimeInterval5").val();
      var timeRange1 = $("#formtimeInterval1").val();
      var timeRange2 = $("#formtimeInterval2").val();
      var timeRange3 = $("#formtimeInterval3").val();
      var timeRange4 = $("#formtimeInterval4").val();
      console.log(anotherTimeRanges);
      var anotherTimeRanges = [timeRange1, timeRange2, timeRange3, timeRange4];
      $.ajax({
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        'type': 'POST',
        'url': 'validateTimeRange',
        'data': JSON.stringify({ "timeRange": timeInterval, "anotherTimeRanges": anotherTimeRanges, "timeOffset": "05:00" }),
        'dataType': 'json',
        'success': function (data) {
          if (data.valid === true) {
            $("#formtimeInterval5Div").removeClass("has-error").addClass("has-success");
            $("#formtimeInterval5DivError").attr("hidden", "hidden");
          } else {
            $("#formtimeInterval5Div").removeClass("has-success").addClass("has-error");
            $("#formtimeInterval5DivError").removeAttr("hidden");
          }
        }
      });
    });
    $("#formtimeInterval6")
    .keypress(function () {
      $("#whatRadioListen6").removeAttr("hidden");
    })
    .focusout(function () {
      var timeInterval = $("#formtimeInterval6").val();
      var timeRange1 = $("#formtimeInterval1").val();
      var timeRange2 = $("#formtimeInterval2").val();
      var timeRange3 = $("#formtimeInterval3").val();
      var timeRange4 = $("#formtimeInterval4").val();
      var timeRange5 = $("#formtimeInterval5").val();
      var anotherTimeRanges = [timeRange1, timeRange2, timeRange3, timeRange4, timeRange5];
      $.ajax({
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        'type': 'POST',
        'url': 'validateTimeRange',
        'data': JSON.stringify({ "timeRange": timeInterval, "anotherTimeRanges": anotherTimeRanges, "timeOffset": "05:00" }),
        'dataType': 'json',
        'success': function (data) {
          if (data.valid === true) {
            $("#formtimeInterval6Div").removeClass("has-error").addClass("has-success");
            $("#formtimeInterval6DivError").attr("hidden", "hidden");
          } else {
            $("#formtimeInterval6Div").removeClass("has-success").addClass("has-error");
            $("#formtimeInterval6DivError").removeAttr("hidden");
          }
        }
      });
    });
    $("[name='form[whereListen1]']").change(function () {
      $("#formtimeInterval1Div").removeAttr("hidden");
    });
    $("[name='form[whatRadioListen1]']").change(function () {
      $("#formwhichDevice1Div").removeAttr("hidden");
    });
    $("[name='form[whichDevice1]']").change(function () {
      $("#needOneMoreInterval1Div").removeAttr("hidden");
    });
    $("#needOneMoreInterval11").change(function () {
      $("#educationDiv").attr("hidden", "hidden");
      $("#yesterdayListen2Div").removeAttr("hidden");
    });
    $("#needOneMoreInterval12").change(function () {
      $("#yesterdayListen2Div").attr("hidden", "hidden");
      $("#educationDiv").removeAttr("hidden");
    });
    $("[name='form[whereListen2]']").change(function () {
      $("#formtimeInterval2Div").removeAttr("hidden");
    });
    $("[name='form[whatRadioListen2]']").change(function () {
      $("#formwhichDevice2Div").removeAttr("hidden");
    });
    $("[name='form[whichDevice2]']").change(function () {
      $("#needOneMoreInterval2Div").removeAttr("hidden");
    });
    $("#needOneMoreInterval21").change(function () {
      $("#educationDiv").attr("hidden", "hidden");
      $("#yesterdayListen3Div").removeAttr("hidden");
    });
    $("#needOneMoreInterval22").change(function () {
      $("#yesterdayListen3Div").attr("hidden", "hidden");
      $("#educationDiv").removeAttr("hidden");
    });
    $("[name='form[whereListen3]']").change(function () {
      $("#formtimeInterval3Div").removeAttr("hidden");
    });
    $("[name='form[whatRadioListen3]']").change(function () {
      $("#formwhichDevice3Div").removeAttr("hidden");
    });
    $("[name='form[whichDevice3]']").change(function () {
      $("#needOneMoreInterval3Div").removeAttr("hidden");
    });
    $("#needOneMoreInterval31").change(function () {
      $("#educationDiv").attr("hidden", "hidden");
      $("#yesterdayListen4Div").removeAttr("hidden");
    });
    $("#needOneMoreInterval32").change(function () {
      $("#yesterdayListen4Div").attr("hidden", "hidden");
      $("#educationDiv").removeAttr("hidden");
    });
    $("[name='form[whereListen4]']").change(function () {
      $("#formtimeInterval4Div").removeAttr("hidden");
    });
    $("[name='form[whatRadioListen4]']").change(function () {
      $("#formwhichDevice4Div").removeAttr("hidden");
    });
    $("[name='form[whichDevice4]']").change(function () {
      $("#needOneMoreInterval4Div").removeAttr("hidden");
    });
    $("#needOneMoreInterval41").change(function () {
      $("#educationDiv").attr("hidden", "hidden");
      $("#yesterdayListen5Div").removeAttr("hidden");
    });
    $("#needOneMoreInterval42").change(function () {
      $("#yesterdayListen5Div").attr("hidden", "hidden");
      $("#educationDiv").removeAttr("hidden");
    });
    $("[name='form[whereListen5]']").change(function () {
      $("#formtimeInterval5Div").removeAttr("hidden");
    });
    $("[name='form[whatRadioListen5]']").change(function () {
      $("#formwhichDevice5Div").removeAttr("hidden");
    });
    $("[name='form[whichDevice5]']").change(function () {
      $("#needOneMoreInterval5Div").removeAttr("hidden");
    });
    $("#needOneMoreInterval51").change(function () {
      $("#educationDiv").attr("hidden", "hidden");
      $("#yesterdayListen6Div").removeAttr("hidden");
    });
    $("#needOneMoreInterval52").change(function () {
      $("#yesterdayListen6Div").attr("hidden", "hidden");
      $("#educationDiv").removeAttr("hidden");
    });
    $("[name='form[whereListen6]']").change(function () {
      $("#formtimeInterval6Div").removeAttr("hidden");
    });
    $("[name='form[whatRadioListen6]']").change(function () {
      $("#formwhichDevice6Div").removeAttr("hidden");
    });
    $("[name='form[whichDevice6]']").change(function () {
      $("#educationDiv").removeAttr("hidden");
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

                <div id="causeRefusedDiv">
                    <b>Причина отказа</b><br>
                    <form:radiobutton path="form[causeRefused]" value="Отказ от заполнения" label="Отказ от заполнения"/><br>
                    <form:radiobutton path="form[causeRefused]" value="Не подходит по возрасту" label="Не подходит по возрасту"/><br>
                    <form:radiobutton path="form[causeRefused]" value="Нет человека с ближайшим ДР" label="Нет человека с ближайшим ДР"/><br>
                    <form:radiobutton path="form[causeRefused]" value="Не тот город" label="Не тот город"/><br>
                    <form:radiobutton path="form[causeRefused]" value="Не помнит радиостанции за месяц, время прослушивания и т д" label="Не помнит радиостанции за месяц, время прослушивания и т д"/><br>
                    <form:radiobutton path="form[causeRefused]" value="Другое" label="Другое:" /> <form:input path="form[causeRefused]" type="text" class="input-small" style="width: 50%"/><br>
                    <br>
                </div>

                <div id="cityDiv">
                    <b>Город</b><br>
                    <form:select id="formCity" path="form[city]">
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

                <div id="ageDiv" class="form-group" hidden>
                    <b>2. Возраст (должен быть в диапазоне 12-65 лет)</b><br>
                    <form:input path="form[age]" type="text" class="form-control" style="width: 50%" title="Введите возраст" placeholder="Введите возраст"/>
                    <div id="formageDivError" hidden>
                        <b style="color: red" class="h6">
                            Возраст должен быть в диапазоне от 12 до 65 лет
                        </b>
                    </div><br>
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

                    <div id="formwhereListen1Div">
                        <b>6.1 Где слушали радио?</b><br>
                        <form:radiobutton path="form[whereListen1]" value="На работе/учебе" label="На работе/учебе"/><br>
                        <form:radiobutton path="form[whereListen1]" value="Дома" label="Дома"/><br>
                        <form:radiobutton path="form[whereListen1]" value="В машине" label="В машине"/><br>
                        <form:radiobutton path="form[whereListen1]" value="В общ. транспорте" label="В общ. транспорте"/><br>
                        <form:radiobutton path="form[whereListen1]" value="Вне помещения (по дороге,на велосипеде)" label="Вне помещения (по дороге,на велосипеде)"/><br>
                        <form:radiobutton path="form[whereListen1]" value="Другое" label="Другое"/><form:input path="form[whereListen1]" type="text" class="input-small" style="width: 50%"/><br>
                    </div>

                    <div id="formtimeInterval1Div" class="form-group" hidden>
                        <b>6.1 Промежуток Времени</b><br>
                        <form:input path="form[timeInterval1]" type="text" class="form-control" style="width: 50%"/>
                        <div id="formtimeInterval1DivError" hidden>
                            <b style="color: red" class="h6">
                                Введен неверный промежуток времени или данный промежуток уже указан выше<br>
                                Пожалуйста, введите в формате "10:00 - 11:30" (начало суток 05:00) и убедитесь,<br>
                                что данный промежуток времени нигде не пересекается с уже указанными выше
                            </b>
                        </div><br>
                    </div>

                    <div id="whatRadioListen1" hidden>
                        <b>6.1 Какие радиостанции слушали</b><br>
                        <div id="formwhatRadioListen11Div" hidden><input id="formwhatRadioListen11" name="form[whatRadioListen1]" type="checkbox" value="1"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen11">1. Радио Минск</label><br></div>
                        <div id="formwhatRadioListen12Div" hidden><input id="formwhatRadioListen12" name="form[whatRadioListen1]" type="checkbox" value="2"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen12">2. Юмор FM</label><br></div>
                        <div id="formwhatRadioListen13Div" hidden><input id="formwhatRadioListen13" name="form[whatRadioListen1]" type="checkbox" value="3"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen13">3. Мелодии Века</label><br></div>
                        <div id="formwhatRadioListen14Div" hidden><input id="formwhatRadioListen14" name="form[whatRadioListen1]" type="checkbox" value="4"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen14">4. Минская Волна</label><br></div>
                        <div id="formwhatRadioListen15Div" hidden><input id="formwhatRadioListen15" name="form[whatRadioListen1]" type="checkbox" value="5"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen15">5. Новое Радио</label><br></div>
                        <div id="formwhatRadioListen16Div" hidden><input id="formwhatRadioListen16" name="form[whatRadioListen1]" type="checkbox" value="6"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen16">6. Русское Радио Минск</label><br></div>
                        <div id="formwhatRadioListen17Div" hidden><input id="formwhatRadioListen17" name="form[whatRadioListen1]" type="checkbox" value="7"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen17">7. Радио UNISTAR</label><br></div>
                        <div id="formwhatRadioListen18Div" hidden><input id="formwhatRadioListen18" name="form[whatRadioListen1]" type="checkbox" value="8"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen18">8. Хит-Радио</label><br></div>
                        <div id="formwhatRadioListen19Div" hidden><input id="formwhatRadioListen19" name="form[whatRadioListen1]" type="checkbox" value="9"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen19">9. Пилот FM</label><br></div>
                        <div id="formwhatRadioListen110Div" hidden><input id="formwhatRadioListen110" name="form[whatRadioListen1]" type="checkbox" value="10"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen110">10. Радио ОНТ</label><br></div>
                        <div id="formwhatRadioListen111Div" hidden><input id="formwhatRadioListen111" name="form[whatRadioListen1]" type="checkbox" value="11"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen111">11. Радио РОКС</label><br></div>
                        <div id="formwhatRadioListen112Div" hidden><input id="formwhatRadioListen112" name="form[whatRadioListen1]" type="checkbox" value="12"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen112">12. Народное радио</label><br></div>
                        <div id="formwhatRadioListen113Div" hidden><input id="formwhatRadioListen113" name="form[whatRadioListen1]" type="checkbox" value="13"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen113">13. Культура</label><br></div>
                        <div id="formwhatRadioListen114Div" hidden><input id="formwhatRadioListen114" name="form[whatRadioListen1]" type="checkbox" value="14"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen114">14. Радиус FM</label><br></div>
                        <div id="formwhatRadioListen115Div" hidden><input id="formwhatRadioListen115" name="form[whatRadioListen1]" type="checkbox" value="15"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen115">15. Радио Би-Эй</label><br></div>
                        <div id="formwhatRadioListen116Div" hidden><input id="formwhatRadioListen116" name="form[whatRadioListen1]" type="checkbox" value="16"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen116">16. Столица</label><br></div>
                        <div id="formwhatRadioListen117Div" hidden><input id="formwhatRadioListen117" name="form[whatRadioListen1]" type="checkbox" value="17"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen117">17. Душевное радио</label><br></div>
                        <div id="formwhatRadioListen118Div" hidden><input id="formwhatRadioListen118" name="form[whatRadioListen1]" type="checkbox" value="18"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen118">18. 1-й Национальный канал белорусского радио</label><br></div>
                        <div id="formwhatRadioListen119Div" hidden><input id="formwhatRadioListen119" name="form[whatRadioListen1]" type="checkbox" value="19"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen119">19. Легенды FM</label><br></div>
                        <div id="formwhatRadioListen120Div" hidden><input id="formwhatRadioListen120" name="form[whatRadioListen1]" type="checkbox" value="20"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen120">20. Радио Мир</label><br></div>
                        <div id="formwhatRadioListen121Div" hidden><input id="formwhatRadioListen121" name="form[whatRadioListen1]" type="checkbox" value="21"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen121">21. Альфа радио</label><br></div>
                        <div id="formwhatRadioListen122Div" hidden><input id="formwhatRadioListen122" name="form[whatRadioListen1]" type="checkbox" value="23"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen122">23. Город FM (Брест)</label><br></div>
                        <div id="formwhatRadioListen123Div" hidden><input id="formwhatRadioListen123" name="form[whatRadioListen1]" type="checkbox" value="24"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen123">24. Радио Брест</label><br></div>
                        <div id="formwhatRadioListen124Div" hidden><input id="formwhatRadioListen124" name="form[whatRadioListen1]" type="checkbox" value="25"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen124">25. Русское Радио Витебск</label><br></div>
                        <div id="formwhatRadioListen125Div" hidden><input id="formwhatRadioListen125" name="form[whatRadioListen1]" type="checkbox" value="26"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen125">26. Радио Витебск</label><br></div>
                        <div id="formwhatRadioListen126Div" hidden><input id="formwhatRadioListen126" name="form[whatRadioListen1]" type="checkbox" value="27"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen126">27. Европа Плюс (Витебск)</label><br></div>
                        <div id="formwhatRadioListen127Div" hidden><input id="formwhatRadioListen127" name="form[whatRadioListen1]" type="checkbox" value="28"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen127">28. Ретро Люкс FM (Витебск)</label><br></div>
                        <div id="formwhatRadioListen128Div" hidden><input id="formwhatRadioListen128" name="form[whatRadioListen1]" type="checkbox" value="29"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen128">29. Гомель FM</label><br></div>
                        <div id="formwhatRadioListen139Div" hidden><input id="formwhatRadioListen129" name="form[whatRadioListen1]" type="checkbox" value="30"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen129">30. Гомель Плюс</label><br></div>
                        <div id="formwhatRadioListen130Div" hidden><input id="formwhatRadioListen130" name="form[whatRadioListen1]" type="checkbox" value="31"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen130">31. Гомельское городское радио</label><br></div>
                        <div id="formwhatRadioListen132Div" hidden><input id="formwhatRadioListen132" name="form[whatRadioListen1]" type="checkbox" value="32"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen132">32. Радио Гродно</label><br></div>
                        <div id="formwhatRadioListen133Div" hidden><input id="formwhatRadioListen133" name="form[whatRadioListen1]" type="checkbox" value="33"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen133">33. Радио MFM (Гродно)</label><br></div>
                        <div id="formwhatRadioListen134Div" hidden><input id="formwhatRadioListen134" name="form[whatRadioListen1]" type="checkbox" value="34"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen134">34. Радио Могилев</label><br></div>
                        <div id="formwhatRadioListen135Div" hidden><input id="formwhatRadioListen135" name="form[whatRadioListen1]" type="checkbox" value="35"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen135">35. Русское Радио Могилев</label><br></div>
                        <div id="formwhatRadioListen131Div" hidden><input id="formwhatRadioListen131" name="form[whatRadioListen1]" type="checkbox" value="36"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen131">36. Радио Правда (Гомель)</label><br></div>
                        <div id="formwhatRadioListen199Div" hidden><input id="formwhatRadioListen199" name="form[whatRadioListen1]" type="checkbox" value="99"><input type="hidden" name="_form[whatRadioListen1]" value="on"><label for="formwhatRadioListen199">99. Другая радиостанция</label><br></div>
                    </div><br>

                    <div id="formwhichDevice1Div" hidden>
                        <b>6.1 С помощью чего слушали радио</b><br>
                        <form:radiobutton path="form[whichDevice1]" value="Радиоприемник (FM. AM)" label="Радиоприемник (FM. AM)"/><br>
                        <form:radiobutton path="form[whichDevice1]" value="Автомагнитола" label="Автомагнитола"/><br>
                        <form:radiobutton path="form[whichDevice1]" value="Мобильный телефон, смартфон-через встроенный FM-тюнер" label="Мобильный телефон, смартфон-через встроенный FM-тюнер"/><br>
                        <form:radiobutton path="form[whichDevice1]" value="Мобильный телефон, смартфон-через Интернет" label="Мобильный телефон, смартфон-через Интернет"/><br>
                        <form:radiobutton path="form[whichDevice1]" value="Компьютер, ноутбук, планшет-через Интернет" label="Компьютер, ноутбук, планшет-через Интернет"/><br>
                        <form:radiobutton path="form[whichDevice1]" value="Другое" label="Другое"/><form:input path="form[whichDevice1]" type="text" class="input-small" style="width: 50%"/><br>
                    </div><br>
                </div>

                <div id="needOneMoreInterval1Div" hidden>
                    <b>Добавить еще один интервал?</b><br>
                    <input id="needOneMoreInterval11" name="needOneMoreInterval1" type="radio" value="Да"><label for="needOneMoreInterval11">Да</label><br>
                    <input id="needOneMoreInterval12" name="needOneMoreInterval1" type="radio" value="Нет"><label for="needOneMoreInterval12">Нет</label><br>
                    <br>
                </div>

                <div id="yesterdayListen2Div" hidden>

                    <div id="formwhereListen2Div">
                        <b>6.2 Где слушали радио?</b><br>
                        <form:radiobutton path="form[whereListen2]" value="На работе/учебе" label="На работе/учебе"/><br>
                        <form:radiobutton path="form[whereListen2]" value="Дома" label="Дома"/><br>
                        <form:radiobutton path="form[whereListen2]" value="Дома" label="Дома"/><br>
                        <form:radiobutton path="form[whereListen2]" value="В машине" label="В машине"/><br>
                        <form:radiobutton path="form[whereListen2]" value="В общ. транспорте" label="В общ. транспорте"/><br>
                        <form:radiobutton path="form[whereListen2]" value="Вне помещения (по дороге,на велосипеде)" label="Вне помещения (по дороге,на велосипеде)"/><br>
                        <form:radiobutton path="form[whereListen2]" value="Другое" label="Другое"/><form:input path="form[whereListen2]" type="text" class="input-small" style="width: 50%"/><br>
                    </div>

                    <div id="formtimeInterval2Div" class="form-group" hidden>
                        <b>6.2 Промежуток Времени</b><br>
                        <form:input path="form[timeInterval2]" type="text" class="form-control" style="width: 50%"/>
                        <div id="formtimeInterval2DivError" hidden>
                            <b style="color: red" class="h6">
                                Введен неверный промежуток времени или данный промежуток уже указан выше<br>
                                Пожалуйста, введите в формате "10:00 - 11:30" (начало суток 05:00) и убедитесь,<br>
                                что данный промежуток времени нигде не пересекается с уже указанными выше
                            </b>
                        </div><br>
                    </div>

                    <div id="whatRadioListen2" hidden>
                        <b>6.2 Какие радиостанции слушали</b><br>
                        <div id="formwhatRadioListen21Div" hidden><input id="formwhatRadioListen21" name="form[whatRadioListen2]" type="checkbox" value="1"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen21">1. Радио Минск</label><br></div>
                        <div id="formwhatRadioListen22Div" hidden><input id="formwhatRadioListen22" name="form[whatRadioListen2]" type="checkbox" value="2"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen22">2. Юмор FM</label><br></div>
                        <div id="formwhatRadioListen23Div" hidden><input id="formwhatRadioListen23" name="form[whatRadioListen2]" type="checkbox" value="3"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen23">3. Мелодии Века</label><br></div>
                        <div id="formwhatRadioListen24Div" hidden><input id="formwhatRadioListen24" name="form[whatRadioListen2]" type="checkbox" value="4"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen24">4. Минская Волна</label><br></div>
                        <div id="formwhatRadioListen25Div" hidden><input id="formwhatRadioListen25" name="form[whatRadioListen2]" type="checkbox" value="5"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen25">5. Новое Радио</label><br></div>
                        <div id="formwhatRadioListen26Div" hidden><input id="formwhatRadioListen26" name="form[whatRadioListen2]" type="checkbox" value="6"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen26">6. Русское Радио Минск</label><br></div>
                        <div id="formwhatRadioListen27Div" hidden><input id="formwhatRadioListen27" name="form[whatRadioListen2]" type="checkbox" value="7"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen27">7. Радио UNISTAR</label><br></div>
                        <div id="formwhatRadioListen28Div" hidden><input id="formwhatRadioListen28" name="form[whatRadioListen2]" type="checkbox" value="8"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen28">8. Хит-Радио</label><br></div>
                        <div id="formwhatRadioListen29Div" hidden><input id="formwhatRadioListen29" name="form[whatRadioListen2]" type="checkbox" value="9"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen29">9. Пилот FM</label><br></div>
                        <div id="formwhatRadioListen210Div" hidden><input id="formwhatRadioListen210" name="form[whatRadioListen2]" type="checkbox" value="10"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen210">10. Радио ОНТ</label><br></div>
                        <div id="formwhatRadioListen211Div" hidden><input id="formwhatRadioListen211" name="form[whatRadioListen2]" type="checkbox" value="11"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen211">11. Радио РОКС</label><br></div>
                        <div id="formwhatRadioListen212Div" hidden><input id="formwhatRadioListen212" name="form[whatRadioListen2]" type="checkbox" value="12"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen212">12. Народное радио</label><br></div>
                        <div id="formwhatRadioListen213Div" hidden><input id="formwhatRadioListen213" name="form[whatRadioListen2]" type="checkbox" value="13"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen213">13. Культура</label><br></div>
                        <div id="formwhatRadioListen214Div" hidden><input id="formwhatRadioListen214" name="form[whatRadioListen2]" type="checkbox" value="14"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen214">14. Радиус FM</label><br></div>
                        <div id="formwhatRadioListen215Div" hidden><input id="formwhatRadioListen215" name="form[whatRadioListen2]" type="checkbox" value="15"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen215">15. Радио Би-Эй</label><br></div>
                        <div id="formwhatRadioListen216Div" hidden><input id="formwhatRadioListen216" name="form[whatRadioListen2]" type="checkbox" value="16"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen216">16. Столица</label><br></div>
                        <div id="formwhatRadioListen217Div" hidden><input id="formwhatRadioListen217" name="form[whatRadioListen2]" type="checkbox" value="17"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen217">17. Душевное радио</label><br></div>
                        <div id="formwhatRadioListen218Div" hidden><input id="formwhatRadioListen218" name="form[whatRadioListen2]" type="checkbox" value="18"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen218">18. 1-й Национальный канал белорусского радио</label><br></div>
                        <div id="formwhatRadioListen219Div" hidden><input id="formwhatRadioListen219" name="form[whatRadioListen2]" type="checkbox" value="19"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen219">19. Легенды FM</label><br></div>
                        <div id="formwhatRadioListen220Div" hidden><input id="formwhatRadioListen220" name="form[whatRadioListen2]" type="checkbox" value="20"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen220">20. Радио Мир</label><br></div>
                        <div id="formwhatRadioListen221Div" hidden><input id="formwhatRadioListen221" name="form[whatRadioListen2]" type="checkbox" value="21"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen221">21. Альфа радио</label><br></div>
                        <div id="formwhatRadioListen222Div" hidden><input id="formwhatRadioListen222" name="form[whatRadioListen2]" type="checkbox" value="23"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen222">23. Город FM (Брест)</label><br></div>
                        <div id="formwhatRadioListen223Div" hidden><input id="formwhatRadioListen223" name="form[whatRadioListen2]" type="checkbox" value="24"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen223">24. Радио Брест</label><br></div>
                        <div id="formwhatRadioListen224Div" hidden><input id="formwhatRadioListen224" name="form[whatRadioListen2]" type="checkbox" value="25"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen224">25. Русское Радио Витебск</label><br></div>
                        <div id="formwhatRadioListen225Div" hidden><input id="formwhatRadioListen225" name="form[whatRadioListen2]" type="checkbox" value="26"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen225">26. Радио Витебск</label><br></div>
                        <div id="formwhatRadioListen226Div" hidden><input id="formwhatRadioListen226" name="form[whatRadioListen2]" type="checkbox" value="27"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen226">27. Европа Плюс (Витебск)</label><br></div>
                        <div id="formwhatRadioListen227Div" hidden><input id="formwhatRadioListen227" name="form[whatRadioListen2]" type="checkbox" value="28"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen227">28. Ретро Люкс FM (Витебск)</label><br></div>
                        <div id="formwhatRadioListen228Div" hidden><input id="formwhatRadioListen228" name="form[whatRadioListen2]" type="checkbox" value="29"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen228">29. Гомель FM</label><br></div>
                        <div id="formwhatRadioListen239Div" hidden><input id="formwhatRadioListen229" name="form[whatRadioListen2]" type="checkbox" value="30"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen229">30. Гомель Плюс</label><br></div>
                        <div id="formwhatRadioListen230Div" hidden><input id="formwhatRadioListen230" name="form[whatRadioListen2]" type="checkbox" value="31"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen230">31. Гомельское городское радио</label><br></div>
                        <div id="formwhatRadioListen232Div" hidden><input id="formwhatRadioListen232" name="form[whatRadioListen2]" type="checkbox" value="32"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen232">32. Радио Гродно</label><br></div>
                        <div id="formwhatRadioListen233Div" hidden><input id="formwhatRadioListen233" name="form[whatRadioListen2]" type="checkbox" value="33"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen233">33. Радио MFM (Гродно)</label><br></div>
                        <div id="formwhatRadioListen234Div" hidden><input id="formwhatRadioListen234" name="form[whatRadioListen2]" type="checkbox" value="34"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen234">34. Радио Могилев</label><br></div>
                        <div id="formwhatRadioListen235Div" hidden><input id="formwhatRadioListen235" name="form[whatRadioListen2]" type="checkbox" value="35"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen235">35. Русское Радио Могилев</label><br></div>
                        <div id="formwhatRadioListen231Div" hidden><input id="formwhatRadioListen231" name="form[whatRadioListen2]" type="checkbox" value="36"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen231">36. Радио Правда (Гомель)</label><br></div>
                        <div id="formwhatRadioListen299Div" hidden><input id="formwhatRadioListen299" name="form[whatRadioListen2]" type="checkbox" value="99"><input type="hidden" name="_form[whatRadioListen2]" value="on"><label for="formwhatRadioListen299">99. Другая радиостанция</label><br></div>
                    </div><br>

                    <div id="formwhichDevice2Div" hidden>
                        <b>6.2 С помощью чего слушали радио</b><br>
                        <form:radiobutton path="form[whichDevice2]" value="Радиоприемник (FM. AM)" label="Радиоприемник (FM. AM)"/><br>
                        <form:radiobutton path="form[whichDevice2]" value="Автомагнитола" label="Автомагнитола"/><br>
                        <form:radiobutton path="form[whichDevice2]" value="Мобильный телефон, смартфон-через встроенный FM-тюнер" label="Мобильный телефон, смартфон-через встроенный FM-тюнер"/><br>
                        <form:radiobutton path="form[whichDevice2]" value="Мобильный телефон, смартфон-через Интернет" label="Мобильный телефон, смартфон-через Интернет"/><br>
                        <form:radiobutton path="form[whichDevice2]" value="Компьютер, ноутбук, планшет-через Интернет" label="Компьютер, ноутбук, планшет-через Интернет"/><br>
                        <form:radiobutton path="form[whichDevice2]" value="Другое" label="Другое"/><form:input path="form[whichDevice2]" type="text" class="input-small" style="width: 50%"/><br>
                    </div><br>
                </div>

                <div id="needOneMoreInterval2Div" hidden>
                    <b>Добавить еще один интервал?</b><br>
                    <input id="needOneMoreInterval21" name="needOneMoreInterval2" type="radio" value="Да"><label for="needOneMoreInterval21">Да</label><br>
                    <input id="needOneMoreInterval22" name="needOneMoreInterval2" type="radio" value="Нет"><label for="needOneMoreInterval22">Нет</label><br>
                    <br>
                </div>

                <div id="yesterdayListen3Div" hidden>

                    <div id="formwhereListen3Div">
                        <b>6.3 Где слушали радио?</b><br>
                        <form:radiobutton path="form[whereListen3]" value="На работе/учебе" label="На работе/учебе"/><br>
                        <form:radiobutton path="form[whereListen3]" value="Дома" label="Дома"/><br>
                        <form:radiobutton path="form[whereListen3]" value="Дома" label="Дома"/><br>
                        <form:radiobutton path="form[whereListen3]" value="В машине" label="В машине"/><br>
                        <form:radiobutton path="form[whereListen3]" value="В общ. транспорте" label="В общ. транспорте"/><br>
                        <form:radiobutton path="form[whereListen3]" value="Вне помещения (по дороге,на велосипеде)" label="Вне помещения (по дороге,на велосипеде)"/><br>
                        <form:radiobutton path="form[whereListen3]" value="Другое" label="Другое"/><form:input path="form[whereListen3]" type="text" class="input-small" style="width: 50%"/><br>
                    </div>

                    <div id="formtimeInterval3Div" class="form-group" hidden>
                        <b>6.3 Промежуток Времени</b><br>
                        <form:input path="form[timeInterval3]" type="text" class="form-control" style="width: 50%"/><br>
                        <div id="formtimeInterval3DivError" hidden>
                            <b style="color: red" class="h6">
                                Введен неверный промежуток времени или данный промежуток уже указан выше<br>
                                Пожалуйста, введите в формате "10:00 - 11:30" (начало суток 05:00) и убедитесь,<br>
                                что данный промежуток времени нигде не пересекается с уже указанными выше
                            </b>
                        </div><br>
                    </div>

                    <div id="whatRadioListen3" hidden>
                        <b>6.3 Какие радиостанции слушали</b><br>
                        <div id="formwhatRadioListen31Div" hidden><input id="formwhatRadioListen31" name="form[whatRadioListen3]" type="checkbox" value="1"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen31">1. Радио Минск</label><br></div>
                        <div id="formwhatRadioListen32Div" hidden><input id="formwhatRadioListen32" name="form[whatRadioListen3]" type="checkbox" value="2"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen32">2. Юмор FM</label><br></div>
                        <div id="formwhatRadioListen33Div" hidden><input id="formwhatRadioListen33" name="form[whatRadioListen3]" type="checkbox" value="3"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen33">3. Мелодии Века</label><br></div>
                        <div id="formwhatRadioListen34Div" hidden><input id="formwhatRadioListen34" name="form[whatRadioListen3]" type="checkbox" value="4"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen34">4. Минская Волна</label><br></div>
                        <div id="formwhatRadioListen35Div" hidden><input id="formwhatRadioListen35" name="form[whatRadioListen3]" type="checkbox" value="5"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen35">5. Новое Радио</label><br></div>
                        <div id="formwhatRadioListen36Div" hidden><input id="formwhatRadioListen36" name="form[whatRadioListen3]" type="checkbox" value="6"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen36">6. Русское Радио Минск</label><br></div>
                        <div id="formwhatRadioListen37Div" hidden><input id="formwhatRadioListen37" name="form[whatRadioListen3]" type="checkbox" value="7"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen37">7. Радио UNISTAR</label><br></div>
                        <div id="formwhatRadioListen38Div" hidden><input id="formwhatRadioListen38" name="form[whatRadioListen3]" type="checkbox" value="8"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen38">8. Хит-Радио</label><br></div>
                        <div id="formwhatRadioListen39Div" hidden><input id="formwhatRadioListen39" name="form[whatRadioListen3]" type="checkbox" value="9"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen39">9. Пилот FM</label><br></div>
                        <div id="formwhatRadioListen310Div" hidden><input id="formwhatRadioListen310" name="form[whatRadioListen3]" type="checkbox" value="10"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen310">10. Радио ОНТ</label><br></div>
                        <div id="formwhatRadioListen311Div" hidden><input id="formwhatRadioListen311" name="form[whatRadioListen3]" type="checkbox" value="11"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen311">11. Радио РОКС</label><br></div>
                        <div id="formwhatRadioListen312Div" hidden><input id="formwhatRadioListen312" name="form[whatRadioListen3]" type="checkbox" value="12"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen312">12. Народное радио</label><br></div>
                        <div id="formwhatRadioListen313Div" hidden><input id="formwhatRadioListen313" name="form[whatRadioListen3]" type="checkbox" value="13"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen313">13. Культура</label><br></div>
                        <div id="formwhatRadioListen314Div" hidden><input id="formwhatRadioListen314" name="form[whatRadioListen3]" type="checkbox" value="14"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen314">14. Радиус FM</label><br></div>
                        <div id="formwhatRadioListen315Div" hidden><input id="formwhatRadioListen315" name="form[whatRadioListen3]" type="checkbox" value="15"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen315">15. Радио Би-Эй</label><br></div>
                        <div id="formwhatRadioListen316Div" hidden><input id="formwhatRadioListen316" name="form[whatRadioListen3]" type="checkbox" value="16"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen316">16. Столица</label><br></div>
                        <div id="formwhatRadioListen317Div" hidden><input id="formwhatRadioListen317" name="form[whatRadioListen3]" type="checkbox" value="17"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen317">17. Душевное радио</label><br></div>
                        <div id="formwhatRadioListen318Div" hidden><input id="formwhatRadioListen318" name="form[whatRadioListen3]" type="checkbox" value="18"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen318">18. 1-й Национальный канал белорусского радио</label><br></div>
                        <div id="formwhatRadioListen319Div" hidden><input id="formwhatRadioListen319" name="form[whatRadioListen3]" type="checkbox" value="19"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen319">19. Легенды FM</label><br></div>
                        <div id="formwhatRadioListen320Div" hidden><input id="formwhatRadioListen320" name="form[whatRadioListen3]" type="checkbox" value="20"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen320">20. Радио Мир</label><br></div>
                        <div id="formwhatRadioListen321Div" hidden><input id="formwhatRadioListen321" name="form[whatRadioListen3]" type="checkbox" value="21"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen321">21. Альфа радио</label><br></div>
                        <div id="formwhatRadioListen322Div" hidden><input id="formwhatRadioListen322" name="form[whatRadioListen3]" type="checkbox" value="23"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen322">23. Город FM (Брест)</label><br></div>
                        <div id="formwhatRadioListen323Div" hidden><input id="formwhatRadioListen323" name="form[whatRadioListen3]" type="checkbox" value="24"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen323">24. Радио Брест</label><br></div>
                        <div id="formwhatRadioListen324Div" hidden><input id="formwhatRadioListen324" name="form[whatRadioListen3]" type="checkbox" value="25"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen324">25. Русское Радио Витебск</label><br></div>
                        <div id="formwhatRadioListen325Div" hidden><input id="formwhatRadioListen325" name="form[whatRadioListen3]" type="checkbox" value="26"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen325">26. Радио Витебск</label><br></div>
                        <div id="formwhatRadioListen326Div" hidden><input id="formwhatRadioListen326" name="form[whatRadioListen3]" type="checkbox" value="27"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen326">27. Европа Плюс (Витебск)</label><br></div>
                        <div id="formwhatRadioListen327Div" hidden><input id="formwhatRadioListen327" name="form[whatRadioListen3]" type="checkbox" value="28"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen327">28. Ретро Люкс FM (Витебск)</label><br></div>
                        <div id="formwhatRadioListen328Div" hidden><input id="formwhatRadioListen328" name="form[whatRadioListen3]" type="checkbox" value="29"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen328">29. Гомель FM</label><br></div>
                        <div id="formwhatRadioListen339Div" hidden><input id="formwhatRadioListen329" name="form[whatRadioListen3]" type="checkbox" value="30"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen329">30. Гомель Плюс</label><br></div>
                        <div id="formwhatRadioListen330Div" hidden><input id="formwhatRadioListen330" name="form[whatRadioListen3]" type="checkbox" value="31"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen330">31. Гомельское городское радио</label><br></div>
                        <div id="formwhatRadioListen332Div" hidden><input id="formwhatRadioListen332" name="form[whatRadioListen3]" type="checkbox" value="32"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen332">32. Радио Гродно</label><br></div>
                        <div id="formwhatRadioListen333Div" hidden><input id="formwhatRadioListen333" name="form[whatRadioListen3]" type="checkbox" value="33"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen333">33. Радио MFM (Гродно)</label><br></div>
                        <div id="formwhatRadioListen334Div" hidden><input id="formwhatRadioListen334" name="form[whatRadioListen3]" type="checkbox" value="34"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen334">34. Радио Могилев</label><br></div>
                        <div id="formwhatRadioListen335Div" hidden><input id="formwhatRadioListen335" name="form[whatRadioListen3]" type="checkbox" value="35"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen335">35. Русское Радио Могилев</label><br></div>
                        <div id="formwhatRadioListen331Div" hidden><input id="formwhatRadioListen331" name="form[whatRadioListen3]" type="checkbox" value="36"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen331">36. Радио Правда (Гомель)</label><br></div>
                        <div id="formwhatRadioListen399Div" hidden><input id="formwhatRadioListen399" name="form[whatRadioListen3]" type="checkbox" value="99"><input type="hidden" name="_form[whatRadioListen3]" value="on"><label for="formwhatRadioListen399">99. Другая радиостанция</label><br></div>
                    </div><br>

                    <div id="formwhichDevice3Div" hidden>
                        <b>6.3 С помощью чего слушали радио</b><br>
                        <form:radiobutton path="form[whichDevice3]" value="Радиоприемник (FM. AM)" label="Радиоприемник (FM. AM)"/><br>
                        <form:radiobutton path="form[whichDevice3]" value="Автомагнитола" label="Автомагнитола"/><br>
                        <form:radiobutton path="form[whichDevice3]" value="Мобильный телефон, смартфон-через встроенный FM-тюнер" label="Мобильный телефон, смартфон-через встроенный FM-тюнер"/><br>
                        <form:radiobutton path="form[whichDevice3]" value="Мобильный телефон, смартфон-через Интернет" label="Мобильный телефон, смартфон-через Интернет"/><br>
                        <form:radiobutton path="form[whichDevice3]" value="Компьютер, ноутбук, планшет-через Интернет" label="Компьютер, ноутбук, планшет-через Интернет"/><br>
                        <form:radiobutton path="form[whichDevice3]" value="Другое" label="Другое"/><form:input path="form[whichDevice3]" type="text" class="input-small" style="width: 50%"/><br>
                    </div><br>
                </div>

                <div id="needOneMoreInterval3Div" hidden>
                    <b>Добавить еще один интервал?</b><br>
                    <input id="needOneMoreInterval31" name="needOneMoreInterval3" type="radio" value="Да"><label for="needOneMoreInterval31">Да</label><br>
                    <input id="needOneMoreInterval32" name="needOneMoreInterval3" type="radio" value="Нет"><label for="needOneMoreInterval32">Нет</label><br>
                    <br>
                </div>

                <div id="yesterdayListen4Div" hidden>

                    <div id="formwhereListen4Div">
                        <b>6.4 Где слушали радио?</b><br>
                        <form:radiobutton path="form[whereListen4]" value="На работе/учебе" label="На работе/учебе"/><br>
                        <form:radiobutton path="form[whereListen4]" value="Дома" label="Дома"/><br>
                        <form:radiobutton path="form[whereListen4]" value="Дома" label="Дома"/><br>
                        <form:radiobutton path="form[whereListen4]" value="В машине" label="В машине"/><br>
                        <form:radiobutton path="form[whereListen4]" value="В общ. транспорте" label="В общ. транспорте"/><br>
                        <form:radiobutton path="form[whereListen4]" value="Вне помещения (по дороге,на велосипеде)" label="Вне помещения (по дороге,на велосипеде)"/><br>
                        <form:radiobutton path="form[whereListen4]" value="Другое" label="Другое"/><form:input path="form[whereListen4]" type="text" class="input-small" style="width: 50%"/><br>
                    </div>

                    <div id="formtimeInterval4Div" class="form-group" hidden>
                        <b>6.4 Промежуток Времени</b><br>
                        <form:input path="form[timeInterval4]" type="text" class="form-control" style="width: 50%"/><br>
                        <div id="formtimeInterval4DivError" hidden>
                            <b style="color: red" class="h6">
                                Введен неверный промежуток времени или данный промежуток уже указан выше<br>
                                Пожалуйста, введите в формате "10:00 - 11:30" (начало суток 05:00) и убедитесь,<br>
                                что данный промежуток времени нигде не пересекается с уже указанными выше
                            </b>
                        </div><br>
                    </div>

                    <div id="whatRadioListen4" hidden>
                        <b>6.4 Какие радиостанции слушали</b><br>
                        <div id="formwhatRadioListen41Div" hidden><input id="formwhatRadioListen41" name="form[whatRadioListen4]" type="checkbox" value="1"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen41">1. Радио Минск</label><br></div>
                        <div id="formwhatRadioListen42Div" hidden><input id="formwhatRadioListen42" name="form[whatRadioListen4]" type="checkbox" value="2"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen42">2. Юмор FM</label><br></div>
                        <div id="formwhatRadioListen43Div" hidden><input id="formwhatRadioListen43" name="form[whatRadioListen4]" type="checkbox" value="3"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen43">3. Мелодии Века</label><br></div>
                        <div id="formwhatRadioListen44Div" hidden><input id="formwhatRadioListen44" name="form[whatRadioListen4]" type="checkbox" value="4"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen44">4. Минская Волна</label><br></div>
                        <div id="formwhatRadioListen45Div" hidden><input id="formwhatRadioListen45" name="form[whatRadioListen4]" type="checkbox" value="5"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen45">5. Новое Радио</label><br></div>
                        <div id="formwhatRadioListen46Div" hidden><input id="formwhatRadioListen46" name="form[whatRadioListen4]" type="checkbox" value="6"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen46">6. Русское Радио Минск</label><br></div>
                        <div id="formwhatRadioListen47Div" hidden><input id="formwhatRadioListen47" name="form[whatRadioListen4]" type="checkbox" value="7"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen47">7. Радио UNISTAR</label><br></div>
                        <div id="formwhatRadioListen48Div" hidden><input id="formwhatRadioListen48" name="form[whatRadioListen4]" type="checkbox" value="8"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen48">8. Хит-Радио</label><br></div>
                        <div id="formwhatRadioListen49Div" hidden><input id="formwhatRadioListen49" name="form[whatRadioListen4]" type="checkbox" value="9"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen49">9. Пилот FM</label><br></div>
                        <div id="formwhatRadioListen410Div" hidden><input id="formwhatRadioListen410" name="form[whatRadioListen4]" type="checkbox" value="10"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen410">10. Радио ОНТ</label><br></div>
                        <div id="formwhatRadioListen411Div" hidden><input id="formwhatRadioListen411" name="form[whatRadioListen4]" type="checkbox" value="11"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen411">11. Радио РОКС</label><br></div>
                        <div id="formwhatRadioListen412Div" hidden><input id="formwhatRadioListen412" name="form[whatRadioListen4]" type="checkbox" value="12"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen412">12. Народное радио</label><br></div>
                        <div id="formwhatRadioListen413Div" hidden><input id="formwhatRadioListen413" name="form[whatRadioListen4]" type="checkbox" value="13"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen413">13. Культура</label><br></div>
                        <div id="formwhatRadioListen414Div" hidden><input id="formwhatRadioListen414" name="form[whatRadioListen4]" type="checkbox" value="14"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen414">14. Радиус FM</label><br></div>
                        <div id="formwhatRadioListen415Div" hidden><input id="formwhatRadioListen415" name="form[whatRadioListen4]" type="checkbox" value="15"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen415">15. Радио Би-Эй</label><br></div>
                        <div id="formwhatRadioListen416Div" hidden><input id="formwhatRadioListen416" name="form[whatRadioListen4]" type="checkbox" value="16"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen416">16. Столица</label><br></div>
                        <div id="formwhatRadioListen417Div" hidden><input id="formwhatRadioListen417" name="form[whatRadioListen4]" type="checkbox" value="17"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen417">17. Душевное радио</label><br></div>
                        <div id="formwhatRadioListen418Div" hidden><input id="formwhatRadioListen418" name="form[whatRadioListen4]" type="checkbox" value="18"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen418">18. 1-й Национальный канал белорусского радио</label><br></div>
                        <div id="formwhatRadioListen419Div" hidden><input id="formwhatRadioListen419" name="form[whatRadioListen4]" type="checkbox" value="19"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen419">19. Легенды FM</label><br></div>
                        <div id="formwhatRadioListen420Div" hidden><input id="formwhatRadioListen420" name="form[whatRadioListen4]" type="checkbox" value="20"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen420">20. Радио Мир</label><br></div>
                        <div id="formwhatRadioListen421Div" hidden><input id="formwhatRadioListen421" name="form[whatRadioListen4]" type="checkbox" value="21"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen421">21. Альфа радио</label><br></div>
                        <div id="formwhatRadioListen422Div" hidden><input id="formwhatRadioListen422" name="form[whatRadioListen4]" type="checkbox" value="23"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen422">23. Город FM (Брест)</label><br></div>
                        <div id="formwhatRadioListen423Div" hidden><input id="formwhatRadioListen423" name="form[whatRadioListen4]" type="checkbox" value="24"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen423">24. Радио Брест</label><br></div>
                        <div id="formwhatRadioListen424Div" hidden><input id="formwhatRadioListen424" name="form[whatRadioListen4]" type="checkbox" value="25"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen424">25. Русское Радио Витебск</label><br></div>
                        <div id="formwhatRadioListen425Div" hidden><input id="formwhatRadioListen425" name="form[whatRadioListen4]" type="checkbox" value="26"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen425">26. Радио Витебск</label><br></div>
                        <div id="formwhatRadioListen426Div" hidden><input id="formwhatRadioListen426" name="form[whatRadioListen4]" type="checkbox" value="27"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen426">27. Европа Плюс (Витебск)</label><br></div>
                        <div id="formwhatRadioListen427Div" hidden><input id="formwhatRadioListen427" name="form[whatRadioListen4]" type="checkbox" value="28"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen427">28. Ретро Люкс FM (Витебск)</label><br></div>
                        <div id="formwhatRadioListen428Div" hidden><input id="formwhatRadioListen428" name="form[whatRadioListen4]" type="checkbox" value="29"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen428">29. Гомель FM</label><br></div>
                        <div id="formwhatRadioListen439Div" hidden><input id="formwhatRadioListen429" name="form[whatRadioListen4]" type="checkbox" value="30"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen429">30. Гомель Плюс</label><br></div>
                        <div id="formwhatRadioListen430Div" hidden><input id="formwhatRadioListen430" name="form[whatRadioListen4]" type="checkbox" value="31"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen430">31. Гомельское городское радио</label><br></div>
                        <div id="formwhatRadioListen432Div" hidden><input id="formwhatRadioListen432" name="form[whatRadioListen4]" type="checkbox" value="32"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen432">32. Радио Гродно</label><br></div>
                        <div id="formwhatRadioListen433Div" hidden><input id="formwhatRadioListen433" name="form[whatRadioListen4]" type="checkbox" value="33"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen433">33. Радио MFM (Гродно)</label><br></div>
                        <div id="formwhatRadioListen434Div" hidden><input id="formwhatRadioListen434" name="form[whatRadioListen4]" type="checkbox" value="34"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen434">34. Радио Могилев</label><br></div>
                        <div id="formwhatRadioListen435Div" hidden><input id="formwhatRadioListen435" name="form[whatRadioListen4]" type="checkbox" value="35"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen435">35. Русское Радио Могилев</label><br></div>
                        <div id="formwhatRadioListen431Div" hidden><input id="formwhatRadioListen431" name="form[whatRadioListen4]" type="checkbox" value="36"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen431">36. Радио Правда (Гомель)</label><br></div>
                        <div id="formwhatRadioListen499Div" hidden><input id="formwhatRadioListen499" name="form[whatRadioListen4]" type="checkbox" value="99"><input type="hidden" name="_form[whatRadioListen4]" value="on"><label for="formwhatRadioListen499">99. Другая радиостанция</label><br></div>
                    </div><br>

                    <div id="formwhichDevice4Div" hidden>
                        <b>6.4 С помощью чего слушали радио</b><br>
                        <form:radiobutton path="form[whichDevice4]" value="Радиоприемник (FM. AM)" label="Радиоприемник (FM. AM)"/><br>
                        <form:radiobutton path="form[whichDevice4]" value="Автомагнитола" label="Автомагнитола"/><br>
                        <form:radiobutton path="form[whichDevice4]" value="Мобильный телефон, смартфон-через встроенный FM-тюнер" label="Мобильный телефон, смартфон-через встроенный FM-тюнер"/><br>
                        <form:radiobutton path="form[whichDevice4]" value="Мобильный телефон, смартфон-через Интернет" label="Мобильный телефон, смартфон-через Интернет"/><br>
                        <form:radiobutton path="form[whichDevice4]" value="Компьютер, ноутбук, планшет-через Интернет" label="Компьютер, ноутбук, планшет-через Интернет"/><br>
                        <form:radiobutton path="form[whichDevice4]" value="Другое" label="Другое"/><form:input path="form[whichDevice4]" type="text" class="input-small" style="width: 50%"/><br>
                    </div><br>
                </div>

                <div id="needOneMoreInterval4Div" hidden>
                    <b>Добавить еще один интервал?</b><br>
                    <input id="needOneMoreInterval41" name="needOneMoreInterval4" type="radio" value="Да"><label for="needOneMoreInterval41">Да</label><br>
                    <input id="needOneMoreInterval42" name="needOneMoreInterval4" type="radio" value="Нет"><label for="needOneMoreInterval42">Нет</label><br>
                    <br>
                </div>

                <div id="yesterdayListen5Div" hidden>

                    <div id="formwhereListen5Div">
                        <b>6.5 Где слушали радио?</b><br>
                        <form:radiobutton path="form[whereListen5]" value="На работе/учебе" label="На работе/учебе"/><br>
                        <form:radiobutton path="form[whereListen5]" value="Дома" label="Дома"/><br>
                        <form:radiobutton path="form[whereListen5]" value="Дома" label="Дома"/><br>
                        <form:radiobutton path="form[whereListen5]" value="В машине" label="В машине"/><br>
                        <form:radiobutton path="form[whereListen5]" value="В общ. транспорте" label="В общ. транспорте"/><br>
                        <form:radiobutton path="form[whereListen5]" value="Вне помещения (по дороге,на велосипеде)" label="Вне помещения (по дороге,на велосипеде)"/><br>
                        <form:radiobutton path="form[whereListen5]" value="Другое" label="Другое"/><form:input path="form[whereListen5]" type="text" class="input-small" style="width: 50%"/><br>
                    </div>

                    <div id="formtimeInterval5Div" class="form-group" hidden>
                        <b>6.5 Промежуток Времени</b><br>
                        <form:input path="form[timeInterval5]" type="text" class="form-control" style="width: 50%"/><br>
                        <div id="formtimeInterval5DivError" hidden>
                            <b style="color: red" class="h6">
                                Введен неверный промежуток времени или данный промежуток уже указан выше<br>
                                Пожалуйста, введите в формате "10:00 - 11:30" (начало суток 05:00) и убедитесь,<br>
                                что данный промежуток времени нигде не пересекается с уже указанными выше
                            </b>
                        </div><br>
                    </div>

                    <div id="whatRadioListen5" hidden>
                        <b>6.5 Какие радиостанции слушали</b><br>
                        <div id="formwhatRadioListen51Div" hidden><input id="formwhatRadioListen51" name="form[whatRadioListen5]" type="checkbox" value="1"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen51">1. Радио Минск</label><br></div>
                        <div id="formwhatRadioListen52Div" hidden><input id="formwhatRadioListen52" name="form[whatRadioListen5]" type="checkbox" value="2"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen52">2. Юмор FM</label><br></div>
                        <div id="formwhatRadioListen53Div" hidden><input id="formwhatRadioListen53" name="form[whatRadioListen5]" type="checkbox" value="3"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen53">3. Мелодии Века</label><br></div>
                        <div id="formwhatRadioListen54Div" hidden><input id="formwhatRadioListen54" name="form[whatRadioListen5]" type="checkbox" value="4"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen54">4. Минская Волна</label><br></div>
                        <div id="formwhatRadioListen55Div" hidden><input id="formwhatRadioListen55" name="form[whatRadioListen5]" type="checkbox" value="5"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen55">5. Новое Радио</label><br></div>
                        <div id="formwhatRadioListen56Div" hidden><input id="formwhatRadioListen56" name="form[whatRadioListen5]" type="checkbox" value="6"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen56">6. Русское Радио Минск</label><br></div>
                        <div id="formwhatRadioListen57Div" hidden><input id="formwhatRadioListen57" name="form[whatRadioListen5]" type="checkbox" value="7"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen57">7. Радио UNISTAR</label><br></div>
                        <div id="formwhatRadioListen58Div" hidden><input id="formwhatRadioListen58" name="form[whatRadioListen5]" type="checkbox" value="8"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen58">8. Хит-Радио</label><br></div>
                        <div id="formwhatRadioListen59Div" hidden><input id="formwhatRadioListen59" name="form[whatRadioListen5]" type="checkbox" value="9"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen59">9. Пилот FM</label><br></div>
                        <div id="formwhatRadioListen510Div" hidden><input id="formwhatRadioListen510" name="form[whatRadioListen5]" type="checkbox" value="10"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen510">10. Радио ОНТ</label><br></div>
                        <div id="formwhatRadioListen511Div" hidden><input id="formwhatRadioListen511" name="form[whatRadioListen5]" type="checkbox" value="11"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen511">11. Радио РОКС</label><br></div>
                        <div id="formwhatRadioListen512Div" hidden><input id="formwhatRadioListen512" name="form[whatRadioListen5]" type="checkbox" value="12"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen512">12. Народное радио</label><br></div>
                        <div id="formwhatRadioListen513Div" hidden><input id="formwhatRadioListen513" name="form[whatRadioListen5]" type="checkbox" value="13"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen513">13. Культура</label><br></div>
                        <div id="formwhatRadioListen514Div" hidden><input id="formwhatRadioListen514" name="form[whatRadioListen5]" type="checkbox" value="14"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen514">14. Радиус FM</label><br></div>
                        <div id="formwhatRadioListen515Div" hidden><input id="formwhatRadioListen515" name="form[whatRadioListen5]" type="checkbox" value="15"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen515">15. Радио Би-Эй</label><br></div>
                        <div id="formwhatRadioListen516Div" hidden><input id="formwhatRadioListen516" name="form[whatRadioListen5]" type="checkbox" value="16"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen516">16. Столица</label><br></div>
                        <div id="formwhatRadioListen517Div" hidden><input id="formwhatRadioListen517" name="form[whatRadioListen5]" type="checkbox" value="17"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen517">17. Душевное радио</label><br></div>
                        <div id="formwhatRadioListen518Div" hidden><input id="formwhatRadioListen518" name="form[whatRadioListen5]" type="checkbox" value="18"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen518">18. 1-й Национальный канал белорусского радио</label><br></div>
                        <div id="formwhatRadioListen519Div" hidden><input id="formwhatRadioListen519" name="form[whatRadioListen5]" type="checkbox" value="19"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen519">19. Легенды FM</label><br></div>
                        <div id="formwhatRadioListen520Div" hidden><input id="formwhatRadioListen520" name="form[whatRadioListen5]" type="checkbox" value="20"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen520">20. Радио Мир</label><br></div>
                        <div id="formwhatRadioListen521Div" hidden><input id="formwhatRadioListen521" name="form[whatRadioListen5]" type="checkbox" value="21"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen521">21. Альфа радио</label><br></div>
                        <div id="formwhatRadioListen522Div" hidden><input id="formwhatRadioListen522" name="form[whatRadioListen5]" type="checkbox" value="23"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen522">23. Город FM (Брест)</label><br></div>
                        <div id="formwhatRadioListen523Div" hidden><input id="formwhatRadioListen523" name="form[whatRadioListen5]" type="checkbox" value="24"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen523">24. Радио Брест</label><br></div>
                        <div id="formwhatRadioListen524Div" hidden><input id="formwhatRadioListen524" name="form[whatRadioListen5]" type="checkbox" value="25"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen524">25. Русское Радио Витебск</label><br></div>
                        <div id="formwhatRadioListen525Div" hidden><input id="formwhatRadioListen525" name="form[whatRadioListen5]" type="checkbox" value="26"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen525">26. Радио Витебск</label><br></div>
                        <div id="formwhatRadioListen526Div" hidden><input id="formwhatRadioListen526" name="form[whatRadioListen5]" type="checkbox" value="27"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen526">27. Европа Плюс (Витебск)</label><br></div>
                        <div id="formwhatRadioListen527Div" hidden><input id="formwhatRadioListen527" name="form[whatRadioListen5]" type="checkbox" value="28"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen527">28. Ретро Люкс FM (Витебск)</label><br></div>
                        <div id="formwhatRadioListen528Div" hidden><input id="formwhatRadioListen528" name="form[whatRadioListen5]" type="checkbox" value="29"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen528">29. Гомель FM</label><br></div>
                        <div id="formwhatRadioListen539Div" hidden><input id="formwhatRadioListen529" name="form[whatRadioListen5]" type="checkbox" value="30"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen529">30. Гомель Плюс</label><br></div>
                        <div id="formwhatRadioListen530Div" hidden><input id="formwhatRadioListen530" name="form[whatRadioListen5]" type="checkbox" value="31"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen530">31. Гомельское городское радио</label><br></div>
                        <div id="formwhatRadioListen532Div" hidden><input id="formwhatRadioListen532" name="form[whatRadioListen5]" type="checkbox" value="32"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen532">32. Радио Гродно</label><br></div>
                        <div id="formwhatRadioListen533Div" hidden><input id="formwhatRadioListen533" name="form[whatRadioListen5]" type="checkbox" value="33"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen533">33. Радио MFM (Гродно)</label><br></div>
                        <div id="formwhatRadioListen534Div" hidden><input id="formwhatRadioListen534" name="form[whatRadioListen5]" type="checkbox" value="34"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen534">34. Радио Могилев</label><br></div>
                        <div id="formwhatRadioListen535Div" hidden><input id="formwhatRadioListen535" name="form[whatRadioListen5]" type="checkbox" value="35"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen535">35. Русское Радио Могилев</label><br></div>
                        <div id="formwhatRadioListen531Div" hidden><input id="formwhatRadioListen531" name="form[whatRadioListen5]" type="checkbox" value="36"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen531">36. Радио Правда (Гомель)</label><br></div>
                        <div id="formwhatRadioListen599Div" hidden><input id="formwhatRadioListen599" name="form[whatRadioListen5]" type="checkbox" value="99"><input type="hidden" name="_form[whatRadioListen5]" value="on"><label for="formwhatRadioListen599">99. Другая радиостанция</label><br></div>
                    </div><br>

                    <div id="formwhichDevice5Div" hidden>
                        <b>6.5 С помощью чего слушали радио</b><br>
                        <form:radiobutton path="form[whichDevice5]" value="Радиоприемник (FM. AM)" label="Радиоприемник (FM. AM)"/><br>
                        <form:radiobutton path="form[whichDevice5]" value="Автомагнитола" label="Автомагнитола"/><br>
                        <form:radiobutton path="form[whichDevice5]" value="Мобильный телефон, смартфон-через встроенный FM-тюнер" label="Мобильный телефон, смартфон-через встроенный FM-тюнер"/><br>
                        <form:radiobutton path="form[whichDevice5]" value="Мобильный телефон, смартфон-через Интернет" label="Мобильный телефон, смартфон-через Интернет"/><br>
                        <form:radiobutton path="form[whichDevice5]" value="Компьютер, ноутбук, планшет-через Интернет" label="Компьютер, ноутбук, планшет-через Интернет"/><br>
                        <form:radiobutton path="form[whichDevice5]" value="Другое" label="Другое"/><form:input path="form[whichDevice5]" type="text" class="input-small" style="width: 50%"/><br>
                    </div><br>
                </div>

                <div id="needOneMoreInterval5Div" hidden>
                    <b>Добавить еще один интервал?</b><br>
                    <input id="needOneMoreInterval51" name="needOneMoreInterval5" type="radio" value="Да"><label for="needOneMoreInterval51">Да</label><br>
                    <input id="needOneMoreInterval52" name="needOneMoreInterval5" type="radio" value="Нет"><label for="needOneMoreInterval52">Нет</label><br>
                    <br>
                </div>

                <div id="yesterdayListen6Div" hidden>

                    <div id="formwhereListen6Div">
                        <b>6.6 Где слушали радио?</b><br>
                        <form:radiobutton path="form[whereListen6]" value="На работе/учебе" label="На работе/учебе"/><br>
                        <form:radiobutton path="form[whereListen6]" value="Дома" label="Дома"/><br>
                        <form:radiobutton path="form[whereListen6]" value="Дома" label="Дома"/><br>
                        <form:radiobutton path="form[whereListen6]" value="В машине" label="В машине"/><br>
                        <form:radiobutton path="form[whereListen6]" value="В общ. транспорте" label="В общ. транспорте"/><br>
                        <form:radiobutton path="form[whereListen6]" value="Вне помещения (по дороге,на велосипеде)" label="Вне помещения (по дороге,на велосипеде)"/><br>
                        <form:radiobutton path="form[whereListen6]" value="Другое" label="Другое"/><form:input path="form[whereListen6]" type="text" class="input-small" style="width: 50%"/><br>
                    </div>

                    <div id="formtimeInterval6Div" class="form-group" hidden>
                        <b>6.6 Промежуток Времени</b><br>
                        <form:input path="form[timeInterval6]" type="text" class="form-control" style="width: 50%"/><br>
                        <div id="formtimeInterval6DivError" hidden>
                            <b style="color: red" class="h6">
                                Введен неверный промежуток времени или данный промежуток уже указан выше<br>
                                Пожалуйста, введите в формате "10:00 - 11:30" (начало суток 05:00) и убедитесь,<br>
                                что данный промежуток времени нигде не пересекается с уже указанными выше
                            </b>
                        </div><br>
                    </div>

                    <div id="whatRadioListen6" hidden>
                        <b>6.6 Какие радиостанции слушали</b><br>
                        <div id="formwhatRadioListen61Div" hidden><input id="formwhatRadioListen61" name="form[whatRadioListen6]" type="checkbox" value="1"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen61">1. Радио Минск</label><br></div>
                        <div id="formwhatRadioListen62Div" hidden><input id="formwhatRadioListen62" name="form[whatRadioListen6]" type="checkbox" value="2"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen62">2. Юмор FM</label><br></div>
                        <div id="formwhatRadioListen63Div" hidden><input id="formwhatRadioListen63" name="form[whatRadioListen6]" type="checkbox" value="3"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen63">3. Мелодии Века</label><br></div>
                        <div id="formwhatRadioListen64Div" hidden><input id="formwhatRadioListen64" name="form[whatRadioListen6]" type="checkbox" value="4"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen64">4. Минская Волна</label><br></div>
                        <div id="formwhatRadioListen65Div" hidden><input id="formwhatRadioListen65" name="form[whatRadioListen6]" type="checkbox" value="5"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen65">5. Новое Радио</label><br></div>
                        <div id="formwhatRadioListen66Div" hidden><input id="formwhatRadioListen66" name="form[whatRadioListen6]" type="checkbox" value="6"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen66">6. Русское Радио Минск</label><br></div>
                        <div id="formwhatRadioListen67Div" hidden><input id="formwhatRadioListen67" name="form[whatRadioListen6]" type="checkbox" value="7"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen67">7. Радио UNISTAR</label><br></div>
                        <div id="formwhatRadioListen68Div" hidden><input id="formwhatRadioListen68" name="form[whatRadioListen6]" type="checkbox" value="8"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen68">8. Хит-Радио</label><br></div>
                        <div id="formwhatRadioListen69Div" hidden><input id="formwhatRadioListen69" name="form[whatRadioListen6]" type="checkbox" value="9"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen69">9. Пилот FM</label><br></div>
                        <div id="formwhatRadioListen610Div" hidden><input id="formwhatRadioListen610" name="form[whatRadioListen6]" type="checkbox" value="10"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen610">10. Радио ОНТ</label><br></div>
                        <div id="formwhatRadioListen611Div" hidden><input id="formwhatRadioListen611" name="form[whatRadioListen6]" type="checkbox" value="11"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen611">11. Радио РОКС</label><br></div>
                        <div id="formwhatRadioListen612Div" hidden><input id="formwhatRadioListen612" name="form[whatRadioListen6]" type="checkbox" value="12"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen612">12. Народное радио</label><br></div>
                        <div id="formwhatRadioListen613Div" hidden><input id="formwhatRadioListen613" name="form[whatRadioListen6]" type="checkbox" value="13"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen613">13. Культура</label><br></div>
                        <div id="formwhatRadioListen614Div" hidden><input id="formwhatRadioListen614" name="form[whatRadioListen6]" type="checkbox" value="14"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen614">14. Радиус FM</label><br></div>
                        <div id="formwhatRadioListen615Div" hidden><input id="formwhatRadioListen615" name="form[whatRadioListen6]" type="checkbox" value="15"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen615">15. Радио Би-Эй</label><br></div>
                        <div id="formwhatRadioListen616Div" hidden><input id="formwhatRadioListen616" name="form[whatRadioListen6]" type="checkbox" value="16"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen616">16. Столица</label><br></div>
                        <div id="formwhatRadioListen617Div" hidden><input id="formwhatRadioListen617" name="form[whatRadioListen6]" type="checkbox" value="17"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen617">17. Душевное радио</label><br></div>
                        <div id="formwhatRadioListen618Div" hidden><input id="formwhatRadioListen618" name="form[whatRadioListen6]" type="checkbox" value="18"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen618">18. 1-й Национальный канал белорусского радио</label><br></div>
                        <div id="formwhatRadioListen619Div" hidden><input id="formwhatRadioListen619" name="form[whatRadioListen6]" type="checkbox" value="19"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen619">19. Легенды FM</label><br></div>
                        <div id="formwhatRadioListen620Div" hidden><input id="formwhatRadioListen620" name="form[whatRadioListen6]" type="checkbox" value="20"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen620">20. Радио Мир</label><br></div>
                        <div id="formwhatRadioListen621Div" hidden><input id="formwhatRadioListen621" name="form[whatRadioListen6]" type="checkbox" value="21"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen621">21. Альфа радио</label><br></div>
                        <div id="formwhatRadioListen622Div" hidden><input id="formwhatRadioListen622" name="form[whatRadioListen6]" type="checkbox" value="23"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen622">23. Город FM (Брест)</label><br></div>
                        <div id="formwhatRadioListen623Div" hidden><input id="formwhatRadioListen623" name="form[whatRadioListen6]" type="checkbox" value="24"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen623">24. Радио Брест</label><br></div>
                        <div id="formwhatRadioListen624Div" hidden><input id="formwhatRadioListen624" name="form[whatRadioListen6]" type="checkbox" value="25"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen624">25. Русское Радио Витебск</label><br></div>
                        <div id="formwhatRadioListen625Div" hidden><input id="formwhatRadioListen625" name="form[whatRadioListen6]" type="checkbox" value="26"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen625">26. Радио Витебск</label><br></div>
                        <div id="formwhatRadioListen626Div" hidden><input id="formwhatRadioListen626" name="form[whatRadioListen6]" type="checkbox" value="27"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen626">27. Европа Плюс (Витебск)</label><br></div>
                        <div id="formwhatRadioListen627Div" hidden><input id="formwhatRadioListen627" name="form[whatRadioListen6]" type="checkbox" value="28"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen627">28. Ретро Люкс FM (Витебск)</label><br></div>
                        <div id="formwhatRadioListen628Div" hidden><input id="formwhatRadioListen628" name="form[whatRadioListen6]" type="checkbox" value="29"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen628">29. Гомель FM</label><br></div>
                        <div id="formwhatRadioListen639Div" hidden><input id="formwhatRadioListen629" name="form[whatRadioListen6]" type="checkbox" value="30"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen629">30. Гомель Плюс</label><br></div>
                        <div id="formwhatRadioListen630Div" hidden><input id="formwhatRadioListen630" name="form[whatRadioListen6]" type="checkbox" value="31"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen630">31. Гомельское городское радио</label><br></div>
                        <div id="formwhatRadioListen632Div" hidden><input id="formwhatRadioListen632" name="form[whatRadioListen6]" type="checkbox" value="32"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen632">32. Радио Гродно</label><br></div>
                        <div id="formwhatRadioListen633Div" hidden><input id="formwhatRadioListen633" name="form[whatRadioListen6]" type="checkbox" value="33"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen633">33. Радио MFM (Гродно)</label><br></div>
                        <div id="formwhatRadioListen634Div" hidden><input id="formwhatRadioListen634" name="form[whatRadioListen6]" type="checkbox" value="34"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen634">34. Радио Могилев</label><br></div>
                        <div id="formwhatRadioListen635Div" hidden><input id="formwhatRadioListen635" name="form[whatRadioListen6]" type="checkbox" value="35"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen635">35. Русское Радио Могилев</label><br></div>
                        <div id="formwhatRadioListen631Div" hidden><input id="formwhatRadioListen631" name="form[whatRadioListen6]" type="checkbox" value="36"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen631">36. Радио Правда (Гомель)</label><br></div>
                        <div id="formwhatRadioListen699Div" hidden><input id="formwhatRadioListen699" name="form[whatRadioListen6]" type="checkbox" value="99"><input type="hidden" name="_form[whatRadioListen6]" value="on"><label for="formwhatRadioListen699">99. Другая радиостанция</label><br></div>
                    </div><br>

                    <div id="formwhichDevice6Div" hidden>
                        <b>6.6 С помощью чего слушали радио</b><br>
                        <form:radiobutton path="form[whichDevice6]" value="Радиоприемник (FM. AM)" label="Радиоприемник (FM. AM)"/><br>
                        <form:radiobutton path="form[whichDevice6]" value="Автомагнитола" label="Автомагнитола"/><br>
                        <form:radiobutton path="form[whichDevice6]" value="Мобильный телефон, смартфон-через встроенный FM-тюнер" label="Мобильный телефон, смартфон-через встроенный FM-тюнер"/><br>
                        <form:radiobutton path="form[whichDevice6]" value="Мобильный телефон, смартфон-через Интернет" label="Мобильный телефон, смартфон-через Интернет"/><br>
                        <form:radiobutton path="form[whichDevice6]" value="Компьютер, ноутбук, планшет-через Интернет" label="Компьютер, ноутбук, планшет-через Интернет"/><br>
                        <form:radiobutton path="form[whichDevice6]" value="Другое" label="Другое"/><form:input path="form[whichDevice6]" type="text" class="input-small" style="width: 50%"/><br>
                    </div><br>
                </div>

                <div id="educationDiv" hidden>
                    <b>7. Какое у Вас образование?</b><br>
                    <form:radiobutton path="form[education]" value="Ниже среднего (менее 11 классов)" label="Ниже среднего (менее 11 классов)"/><br>
                    <form:radiobutton path="form[education]" value="Среднее общее" label="Среднее общее"/><br>
                    <form:radiobutton path="form[education]" value="Среднее специальное (в т. ч. ПТУ, колледж, техникум)" label="Среднее специальное (в т. ч. ПТУ, колледж, техникум)"/><br>
                    <form:radiobutton path="form[education]" value="Высшее (в т.ч. незаконченное, не менее 3-х курсов)" label="Высшее (в т.ч. незаконченное, не менее 3-х курсов)"/><br>
                    <br>
                </div>

                <div id="professionDiv" hidden>
                    <b>8. Ваш основной род занятий?</b><br>
                    <form:radiobutton path="form[profession]" value="Руководитель" label="Руководитель"/><br>
                    <form:radiobutton path="form[profession]" value="Предприниматель, самозанятый (индивидуальная трудовая деятельность)" label="Предприниматель, самозанятый (индивидуальная трудовая деятельность)"/><br>
                    <form:radiobutton path="form[profession]" value="Служащий, специалист производственной сферы (инженер, технолог, программист и.т.д.)" label="Служащий, специалист производственной сферы (инженер, технолог, программист и.т.д.)"/><br>
                    <form:radiobutton path="form[profession]" value="Служащий, специалист непроизводственной сферы (учитель, врач, бухгалтер, маркетолог и т.д.)" label="Служащий, специалист непроизводственной сферы (учитель, врач, бухгалтер, маркетолог и т.д.)"/><br>
                    <form:radiobutton path="form[profession]" value="Служащий без специального образования (секретарь, регистратор, лаборант и т.д.)" label="Служащий без специального образования (секретарь, регистратор, лаборант и т.д.)"/><br>
                    <form:radiobutton path="form[profession]" value="Военнослужащий, милиционер" label="Военнослужащий, милиционер"/><br>
                    <form:radiobutton path="form[profession]" value="Рабочий (промышленности, строительства, транспорта)" label="Рабочий (промышленности, строительства, транспорта)"/><br>
                    <form:radiobutton path="form[profession]" value="Безработный" label="Безработный"/><br>
                    <form:radiobutton path="form[profession]" value="Домохозяйка" label="Домохозяйка"/><br>
                    <form:radiobutton path="form[profession]" value="Студент, учащийся" label="Студент, учащийся"/><br>
                    <form:radiobutton path="form[profession]" value="Работающий пенсионер" label="Работающий пенсионер"/><br>
                    <form:radiobutton path="form[profession]" value="Неработающий пенсионер" label="Неработающий пенсионер"/><br>
                    <form:radiobutton path="form[profession]" value="Другое" label="Другое"/><form:input path="form[profession]" type="text" class="input-small" style="width: 50%"/><br>
                    <br>
                </div>

                <button id="submitButton" class="btn btn-success btn-lg" disabled>Отправить</button>

                <br><br><br><br>

            </form:form>
        </div>

    </div> <!-- /row -->

</div> <!-- /container-full -->