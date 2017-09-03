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
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek9\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"9\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek9\">9. Пилот FM</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek10\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"10\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek10\">10. Радио ОНТ 101,7</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek11\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"11\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek11\">11. Радио РОКС 102,1</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek12\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"12\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek12\">12. Народное радио 102,5</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek13\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"13\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek13\">13. Культура 102,9</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek14\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"14\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek14\">14. Радиус FM 103,7</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek15\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"15\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek15\">15. Радио Би-Эй 104,6</label><br></div>");
        $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek16\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"16. Столица\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek16\">16. Столица 105,1</label><br></div>");
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

      $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek99\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"99\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek99\">99. Радиостанция через интернет</label><br></div>");
      $whatRadioListenLastWeek.append("<div><input id=\"formwhatRadioListenLastWeek0\" name=\"form[whatRadioListenLastWeek]\" type=\"checkbox\" value=\"\"><input type=\"hidden\" name=\"_form[whatRadioListenLastWeek]\" value=\"on\"><label for=\"formwhatRadioListenLastWeek0\">Ни одна из перечисленных</label><br></div>");

      $("[name='form[whatRadioListenLastWeek]']").change(function () {
        $("#formwhatRadioListenLastWeek0").prop('checked', false);
        $("#yesterdayListenDiv").removeAttr("hidden");
      });
      $("#formwhatRadioListenLastWeek0").change(function () {
        $("[name='form[whatRadioListenLastWeek]']").prop('checked', false);
        $("#formwhatRadioListenLastWeek0").prop('checked', true);
        $("#yesterdayListenDiv").attr("hidden", "hidden");
      });
    });
    $("[name='form[gender]']").change(function () {
      $("#ageDiv").removeAttr("hidden");
    });
    $("#ageDiv").keypress(function () {
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

                <button id="submitButton" class="btn btn-success btn-lg" disabled>Отправить</button>

                <br><br><br><br>

            </form:form>
        </div>

    </div> <!-- /row -->

</div> <!-- /container-full -->