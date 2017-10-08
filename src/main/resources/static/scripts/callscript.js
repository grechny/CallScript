$(document).ready(function () {

  $('#getNumber').click(function () {
    $.get("getNumber", function (data) {
      $("#numberInput").val(data);
    });
  });
  $("[name='form[gender]']").change(function () {
    $("#ageDiv").removeAttr("hidden");
  });
  $("#ageDiv")
  .keypress(function () {
    $("#watchingTVDiv").removeAttr("hidden");
  })
  .focusout(function () {
    var age = Number($("#formage").val());
    if (age > 11 && age < 120) {
      $("#ageDiv").removeClass("has-error").addClass("has-success");
      $("#formageDivError").attr("hidden", "hidden");
    } else {
      $("#ageDiv").removeClass("has-success").addClass("has-error");
      $("#formageDivError").removeAttr("hidden");
    }
  });
  $("[name='form[watchingTV]']").change(function () {
    if ($("#formwatchingTV1").is(':checked')) {
      $("#watchingTVTimeDiv").removeAttr("hidden");
      $("#whatTVType1Div").attr("hidden", "hidden");
      $("#howManyPeopleAtHomeDiv").attr("hidden", "hidden");
    } else if ($("#formwatchingTV2").is(':checked')) {
      $("#watchingTVTimeDiv").attr("hidden", "hidden");
      $("#whatTVType1Div").removeAttr("hidden");
      $("#howManyPeopleAtHomeDiv").attr("hidden", "hidden");
    } else if ($("#formwatchingTV3").is(':checked')) {
      $("#watchingTVTimeDiv").attr("hidden", "hidden");
      $("#whatTVType1Div").attr("hidden", "hidden");
      $("#howManyPeopleAtHomeDiv").removeAttr("hidden");
    }
  });
  $("#watchingTVTimeDiv")
  .keypress(function () {
    $("#whatChannelsWatchDiv").removeAttr("hidden");
  })
  .focusout(function () {
    var hours = Number($("#formwatchingTVTime").val());
    if (hours > 0) {
      $("#watchingTVTimeDiv").removeClass("has-error").addClass("has-success");
    } else {
      $("#watchingTVTimeDiv").removeClass("has-success").addClass("has-error");
    }
  });
  $("#whatChannelsWatchDiv").keypress(function () {
    $("#whatTVType1Div").removeAttr("hidden");
  });
  $("[name='form[whatChannelsWatchDiv]']").keypress(function () {
    $("#whatTVType1Div").removeAttr("hidden");
  });
  $("[name='form[whatTVType1]']").change(function () {
    if ($("#formwhatTVType11").is(':checked')
     || $("#formwhatTVType16").is(':checked')) {
      $("#containsBelarus51Div").removeAttr("hidden");
      $("#quantityOfChannels1Div").attr("hidden", "hidden");
      $("#hasSmartTV1Div").attr("hidden", "hidden");
    } else if ($("#formwhatTVType12").is(':checked')
            || $("#formwhatTVType13").is(':checked')
            || $("#formwhatTVType14").is(':checked')
            || $("#formwhatTVType15").is(':checked')
            || $("#formwhatTVType18").is(':checked')
            || $("#formwhatTVType110").is(':checked')) {
      $("#containsBelarus51Div").attr("hidden", "hidden");
      $("#quantityOfChannels1Div").removeAttr("hidden");
      $("#hasSmartTV1Div").attr("hidden", "hidden");
    } else {
      $("#containsBelarus51Div").attr("hidden", "hidden");
      $("#quantityOfChannels1Div").attr("hidden", "hidden");
      $("#hasSmartTV1Div").removeAttr("hidden");
    }
  });
  $("[name='form[containsBelarus51]']").change(function () {
    if ($("#formwhatTVType12").is(':checked')
        || $("#formwhatTVType13").is(':checked')
        || $("#formwhatTVType14").is(':checked')
        || $("#formwhatTVType15").is(':checked')
        || $("#formwhatTVType18").is(':checked')
        || $("#formwhatTVType110").is(':checked')) {
      $("#quantityOfChannels1Div").removeAttr("hidden");
    } else if ($("#formwhatTVType16").is(':checked')) {
      $("#tvProvider1Div").removeAttr("hidden");
    } else {
      $("#hasSmartTV1Div").removeAttr("hidden");
    }
  });
  $("#quantityOfChannels1Div")
  .keypress(function () {
    $("#tvProvider1Div").removeAttr("hidden");
  })
  .focusout(function () {
    var num = Number($("#formquantityOfChannels1").val());
    if (num > 0) {
      $("#quantityOfChannels1Div").removeClass("has-error").addClass("has-success");
    } else {
      $("#quantityOfChannels1Div").removeClass("has-success").addClass("has-error");
    }
  });
  $("[name='form[tvProvider1]']").keypress(function () {
    if ($("#formwhatTVType12").is(':checked')
        || $("#formwhatTVType14").is(':checked')
        || $("#formwhatTVType18").is(':checked')
        || $("#formwhatTVType110").is(':checked')) {
      $("#containsTNT1Div").removeAttr("hidden");
    } else {
      $("#hasSmartTV1Div").removeAttr("hidden");
    }
  });
  $("[name='form[containsTNT1]']").change(function () {
    $("#containsVTV1Div").removeAttr("hidden");
  });
  $("[name='form[containsVTV1]']").change(function () {
    $("#containsTV31Div").removeAttr("hidden");
  });
  $("[name='form[containsTV31]']").change(function () {
    $("#containsMuzTV1Div").removeAttr("hidden");
  });
  $("[name='form[containsMuzTV1]']").change(function () {
    $("#containsDomashniy1Div").removeAttr("hidden");
  });
  $("[name='form[containsDomashniy1]']").change(function () {
    $("#containsEuropaPlus1Div").removeAttr("hidden");
  });
  $("[name='form[containsEuropaPlus1]']").change(function () {
    $("#containsPeretc1Div").removeAttr("hidden");
  });
  $("[name='form[containsPeretc1]']").change(function () {
    $("#hasSmartTV1Div").removeAttr("hidden");
  });
  $("[name='form[hasSmartTV1]']").change(function () {
    if ($("#formhasSmartTV11").is(':checked')) {
      $("#usesSmartTV1Div").removeAttr("hidden");
      $("#hasOneMoreTV1Div").attr("hidden", "hidden");
    } else {
      $("#usesSmartTV1Div").attr("hidden", "hidden");
      $("#hasOneMoreTV1Div").removeAttr("hidden");
    }
  });
  $("[name='form[usesSmartTV1]']").change(function () {
    $("#hasOneMoreTV1Div").removeAttr("hidden");
  });
  $("[name='hasOneMoreTV1']").change(function () {
    if ($("#hasOneMoreTV11").is(':checked')) {
      $("#whatTVType2Div").removeAttr("hidden");
      $("#howManyPeopleAtHomeDiv").attr("hidden", "hidden");
    } else {
      $("#whatTVType2Div").attr("hidden", "hidden");
      $("#howManyPeopleAtHomeDiv").removeAttr("hidden");
    }
  });






  $("#howManyPeopleAtHomeDiv")
  .keypress(function () {
    $("#childrenUnder4yearsDiv").removeAttr("hidden");
  })
  .focusout(function () {
    var num = Number($("#formhowManyPeopleAtHome").val());
    if (num > 0) {
      $("#howManyPeopleAtHomeDiv").removeClass("has-error").addClass("has-success");
    } else {
      $("#howManyPeopleAtHomeDiv").removeClass("has-success").addClass("has-error");
    }
  });
  $("#childrenUnder4yearsDiv")
  .keypress(function () {
    $("#subscribeDiv").removeAttr("hidden");
  })
  .focusout(function () {
    var num = Number($("#formchildrenUnder4years").val());
    if (num >= 0) {
      $("#childrenUnder4yearsDiv").removeClass("has-error").addClass("has-success");
    } else {
      $("#childrenUnder4yearsDiv").removeClass("has-success").addClass("has-error");
    }
  });
  $("[name='subscribe']").change(function () {
    if ($("#subscribe1").is(':checked')) {
      $("#formsubscribe").removeAttr("disabled");
      $("#submitButton").removeAttr("disabled");
    } else {
      $("#formsubscribe").attr("disabled", "disabled");
      $("#submitButton").removeAttr("disabled");
    }
  });
  $("#submitButton").click(function (event) {
    if ($(".has-error:first").length) {
      $('html, body').animate({
        scrollTop: $(".has-error:first").offset().top
      });
      event.preventDefault();
    }
  });
});