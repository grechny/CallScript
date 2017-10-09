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
  $("#formwhatTVType212").change(function () {
    if ($("#formwhatTVType212").is(':checked')) {
      $("[name='form[whatTVType2]']").prop('checked', false);
      $("#formwhatTVType212").prop('checked', true);
      $("#containsBelarus52Div").attr("hidden", "hidden");
      $("#quantityOfChannels2Div").attr("hidden", "hidden");
      $("#hasSmartTV2Div").removeAttr("hidden");
    }
  });
  $("[name='form[whatTVType2]']").change(function () {
    if ($("#formwhatTVType21").is(':checked')
        || $("#formwhatTVType26").is(':checked')) {
      $("#containsBelarus52Div").removeAttr("hidden");
      $("#quantityOfChannels2Div").attr("hidden", "hidden");
      $("#hasSmartTV2Div").attr("hidden", "hidden");
      $("#formwhatTVType212").prop('checked', false);
    } else if ($("#formwhatTVType22").is(':checked')
        || $("#formwhatTVType23").is(':checked')
        || $("#formwhatTVType24").is(':checked')
        || $("#formwhatTVType25").is(':checked')
        || $("#formwhatTVType28").is(':checked')
        || $("#formwhatTVType210").is(':checked')) {
      $("#containsBelarus52Div").attr("hidden", "hidden");
      $("#quantityOfChannels2Div").removeAttr("hidden");
      $("#hasSmartTV2Div").attr("hidden", "hidden");
      $("#formwhatTVType212").prop('checked', false);
    } else if ($("#formwhatTVType27").is(':checked')
        || $("#formwhatTVType29").is(':checked')
        || $("#formwhatTVType211").is(':checked')) {
      $("#containsBelarus52Div").attr("hidden", "hidden");
      $("#quantityOfChannels2Div").attr("hidden", "hidden");
      $("#hasSmartTV2Div").removeAttr("hidden");
      $("#formwhatTVType212").prop('checked', false);
    }
  });
  $("[name='form[containsBelarus52]']").change(function () {
    if ($("#formwhatTVType22").is(':checked')
        || $("#formwhatTVType23").is(':checked')
        || $("#formwhatTVType24").is(':checked')
        || $("#formwhatTVType25").is(':checked')
        || $("#formwhatTVType28").is(':checked')
        || $("#formwhatTVType210").is(':checked')) {
      $("#quantityOfChannels2Div").removeAttr("hidden");
    } else if ($("#formwhatTVType26").is(':checked')) {
      $("#tvProvider2Div").removeAttr("hidden");
    } else {
      $("#hasSmartTV2Div").removeAttr("hidden");
    }
  });
  $("#quantityOfChannels2Div")
  .keypress(function () {
    $("#tvProvider2Div").removeAttr("hidden");
  })
  .focusout(function () {
    var num = Number($("#formquantityOfChannels2").val());
    if (num > 0) {
      $("#quantityOfChannels2Div").removeClass("has-error").addClass("has-success");
    } else {
      $("#quantityOfChannels2Div").removeClass("has-success").addClass("has-error");
    }
  });
  $("[name='form[tvProvider2]']").keypress(function () {
    if ($("#formwhatTVType22").is(':checked')
        || $("#formwhatTVType24").is(':checked')
        || $("#formwhatTVType28").is(':checked')
        || $("#formwhatTVType210").is(':checked')) {
      $("#containsTNT2Div").removeAttr("hidden");
    } else {
      $("#hasSmartTV2Div").removeAttr("hidden");
    }
  });
  $("[name='form[containsTNT2]']").change(function () {
    $("#containsVTV2Div").removeAttr("hidden");
  });
  $("[name='form[containsVTV2]']").change(function () {
    $("#containsTV32Div").removeAttr("hidden");
  });
  $("[name='form[containsTV32]']").change(function () {
    $("#containsMuzTV2Div").removeAttr("hidden");
  });
  $("[name='form[containsMuzTV2]']").change(function () {
    $("#containsDomashniy2Div").removeAttr("hidden");
  });
  $("[name='form[containsDomashniy2]']").change(function () {
    $("#containsEuropaPlus2Div").removeAttr("hidden");
  });
  $("[name='form[containsEuropaPlus2]']").change(function () {
    $("#containsPeretc2Div").removeAttr("hidden");
  });
  $("[name='form[containsPeretc2]']").change(function () {
    $("#hasSmartTV2Div").removeAttr("hidden");
  });
  $("[name='form[hasSmartTV2]']").change(function () {
    if ($("#formhasSmartTV21").is(':checked')) {
      $("#usesSmartTV2Div").removeAttr("hidden");
      $("#hasOneMoreTV2Div").attr("hidden", "hidden");
    } else {
      $("#usesSmartTV2Div").attr("hidden", "hidden");
      $("#hasOneMoreTV2Div").removeAttr("hidden");
    }
  });
  $("[name='form[usesSmartTV2]']").change(function () {
    $("#hasOneMoreTV2Div").removeAttr("hidden");
  });
  $("[name='hasOneMoreTV2']").change(function () {
    if ($("#hasOneMoreTV21").is(':checked')) {
      $("#whatTVType3Div").removeAttr("hidden");
      $("#howManyPeopleAtHomeDiv").attr("hidden", "hidden");
    } else {
      $("#whatTVType3Div").attr("hidden", "hidden");
      $("#howManyPeopleAtHomeDiv").removeAttr("hidden");
    }
  });
  $("#formwhatTVType312").change(function () {
    if ($("#formwhatTVType312").is(':checked')) {
      $("[name='form[whatTVType3]']").prop('checked', false);
      $("#formwhatTVType312").prop('checked', true);
      $("#containsBelarus53Div").attr("hidden", "hidden");
      $("#quantityOfChannels3Div").attr("hidden", "hidden");
      $("#hasSmartTV3Div").removeAttr("hidden");
      $("#formwhatTVType313").prop('checked', false);
    }
  });
  $("#formwhatTVType313").change(function () {
    if ($("#formwhatTVType313").is(':checked')) {
      $("[name='form[whatTVType3]']").prop('checked', false);
      $("#formwhatTVType313").prop('checked', true);
      $("#containsBelarus53Div").attr("hidden", "hidden");
      $("#quantityOfChannels3Div").attr("hidden", "hidden");
      $("#hasSmartTV3Div").removeAttr("hidden");
      $("#formwhatTVType312").prop('checked', false);
    }
  });
    $("[name='form[whatTVType3]']").change(function () {
    if ($("#formwhatTVType31").is(':checked')
        || $("#formwhatTVType36").is(':checked')) {
      $("#containsBelarus53Div").removeAttr("hidden");
      $("#quantityOfChannels3Div").attr("hidden", "hidden");
      $("#hasSmartTV3Div").attr("hidden", "hidden");
      $("#formwhatTVType312").prop('checked', false);
      $("#formwhatTVType313").prop('checked', false);
    } else if ($("#formwhatTVType32").is(':checked')
        || $("#formwhatTVType33").is(':checked')
        || $("#formwhatTVType34").is(':checked')
        || $("#formwhatTVType35").is(':checked')
        || $("#formwhatTVType38").is(':checked')
        || $("#formwhatTVType310").is(':checked')) {
      $("#containsBelarus53Div").attr("hidden", "hidden");
      $("#quantityOfChannels3Div").removeAttr("hidden");
      $("#hasSmartTV3Div").attr("hidden", "hidden");
      $("#formwhatTVType312").prop('checked', false);
      $("#formwhatTVType313").prop('checked', false);
    } else if ($("#formwhatTVType37").is(':checked')
        || $("#formwhatTVType39").is(':checked')
        || $("#formwhatTVType311").is(':checked')) {
      $("#containsBelarus53Div").attr("hidden", "hidden");
      $("#quantityOfChannels3Div").attr("hidden", "hidden");
      $("#hasSmartTV3Div").removeAttr("hidden");
      $("#formwhatTVType312").prop('checked', false);
      $("#formwhatTVType313").prop('checked', false);
    }
  });
  $("[name='form[containsBelarus53]']").change(function () {
    if ($("#formwhatTVType32").is(':checked')
        || $("#formwhatTVType33").is(':checked')
        || $("#formwhatTVType34").is(':checked')
        || $("#formwhatTVType35").is(':checked')
        || $("#formwhatTVType38").is(':checked')
        || $("#formwhatTVType310").is(':checked')) {
      $("#quantityOfChannels3Div").removeAttr("hidden");
    } else if ($("#formwhatTVType36").is(':checked')) {
      $("#tvProvider3Div").removeAttr("hidden");
    } else {
      $("#hasSmartTV3Div").removeAttr("hidden");
    }
  });
  $("#quantityOfChannels3Div")
  .keypress(function () {
    $("#tvProvider3Div").removeAttr("hidden");
  })
  .focusout(function () {
    var num = Number($("#formquantityOfChannels3").val());
    if (num > 0) {
      $("#quantityOfChannels3Div").removeClass("has-error").addClass("has-success");
    } else {
      $("#quantityOfChannels3Div").removeClass("has-success").addClass("has-error");
    }
  });
  $("[name='form[tvProvider3]']").keypress(function () {
    if ($("#formwhatTVType32").is(':checked')
        || $("#formwhatTVType34").is(':checked')
        || $("#formwhatTVType38").is(':checked')
        || $("#formwhatTVType310").is(':checked')) {
      $("#containsTNT3Div").removeAttr("hidden");
    } else {
      $("#hasSmartTV3Div").removeAttr("hidden");
    }
  });
  $("[name='form[containsTNT3]']").change(function () {
    $("#containsVTV3Div").removeAttr("hidden");
  });
  $("[name='form[containsVTV3]']").change(function () {
    $("#containsTV33Div").removeAttr("hidden");
  });
  $("[name='form[containsTV33]']").change(function () {
    $("#containsMuzTV3Div").removeAttr("hidden");
  });
  $("[name='form[containsMuzTV3]']").change(function () {
    $("#containsDomashniy3Div").removeAttr("hidden");
  });
  $("[name='form[containsDomashniy3]']").change(function () {
    $("#containsEuropaPlus3Div").removeAttr("hidden");
  });
  $("[name='form[containsEuropaPlus3]']").change(function () {
    $("#containsPeretc3Div").removeAttr("hidden");
  });
  $("[name='form[containsPeretc3]']").change(function () {
    $("#hasSmartTV3Div").removeAttr("hidden");
  });
  $("[name='form[hasSmartTV3]']").change(function () {
    if ($("#formhasSmartTV31").is(':checked')) {
      $("#usesSmartTV3Div").removeAttr("hidden");
      $("#hasOneMoreTV3Div").attr("hidden", "hidden");
    } else {
      $("#usesSmartTV3Div").attr("hidden", "hidden");
      $("#hasOneMoreTV3Div").removeAttr("hidden");
    }
  });
  $("[name='form[usesSmartTV3]']").change(function () {
    $("#hasOneMoreTV3Div").removeAttr("hidden");
  });
  $("[name='hasOneMoreTV3']").change(function () {
    if ($("#hasOneMoreTV31").is(':checked')) {
      $("#whatTVType4Div").removeAttr("hidden");
      $("#howManyPeopleAtHomeDiv").attr("hidden", "hidden");
    } else {
      $("#whatTVType4Div").attr("hidden", "hidden");
      $("#howManyPeopleAtHomeDiv").removeAttr("hidden");
    }
  });
  $("#formwhatTVType412").change(function () {
    if ($("#formwhatTVType412").is(':checked')) {
      $("[name='form[whatTVType4]']").prop('checked', false);
      $("#formwhatTVType412").prop('checked', true);
      $("#containsBelarus54Div").attr("hidden", "hidden");
      $("#quantityOfChannels4Div").attr("hidden", "hidden");
      $("#hasSmartTV4Div").removeAttr("hidden");
      $("#formwhatTVType413").prop('checked', false);
      $("#formwhatTVType414").prop('checked', false);
    }
  });
  $("#formwhatTVType413").change(function () {
    if ($("#formwhatTVType413").is(':checked')) {
      $("[name='form[whatTVType4]']").prop('checked', false);
      $("#formwhatTVType413").prop('checked', true);
      $("#containsBelarus54Div").attr("hidden", "hidden");
      $("#quantityOfChannels4Div").attr("hidden", "hidden");
      $("#hasSmartTV4Div").removeAttr("hidden");
      $("#formwhatTVType412").prop('checked', false);
      $("#formwhatTVType414").prop('checked', false);
    }
  });
  $("#formwhatTVType414").change(function () {
    if ($("#formwhatTVType414").is(':checked')) {
      $("[name='form[whatTVType4]']").prop('checked', false);
      $("#formwhatTVType414").prop('checked', true);
      $("#containsBelarus54Div").attr("hidden", "hidden");
      $("#quantityOfChannels4Div").attr("hidden", "hidden");
      $("#hasSmartTV4Div").removeAttr("hidden");
      $("#formwhatTVType412").prop('checked', false);
      $("#formwhatTVType413").prop('checked', false);
    }
  });
  $("[name='form[whatTVType4]']").change(function () {
    if ($("#formwhatTVType41").is(':checked')
        || $("#formwhatTVType46").is(':checked')) {
      $("#containsBelarus54Div").removeAttr("hidden");
      $("#quantityOfChannels4Div").attr("hidden", "hidden");
      $("#hasSmartTV4Div").attr("hidden", "hidden");
      $("#formwhatTVType412").prop('checked', false);
      $("#formwhatTVType413").prop('checked', false);
      $("#formwhatTVType414").prop('checked', false);
    } else if ($("#formwhatTVType42").is(':checked')
        || $("#formwhatTVType43").is(':checked')
        || $("#formwhatTVType44").is(':checked')
        || $("#formwhatTVType45").is(':checked')
        || $("#formwhatTVType48").is(':checked')
        || $("#formwhatTVType410").is(':checked')) {
      $("#containsBelarus54Div").attr("hidden", "hidden");
      $("#quantityOfChannels4Div").removeAttr("hidden");
      $("#hasSmartTV4Div").attr("hidden", "hidden");
      $("#formwhatTVType412").prop('checked', false);
      $("#formwhatTVType413").prop('checked', false);
      $("#formwhatTVType414").prop('checked', false);
    } else if ($("#formwhatTVType47").is(':checked')
        || $("#formwhatTVType49").is(':checked')
        || $("#formwhatTVType411").is(':checked')) {
      $("#containsBelarus54Div").attr("hidden", "hidden");
      $("#quantityOfChannels4Div").attr("hidden", "hidden");
      $("#hasSmartTV4Div").removeAttr("hidden");
      $("#formwhatTVType412").prop('checked', false);
      $("#formwhatTVType413").prop('checked', false);
      $("#formwhatTVType414").prop('checked', false);
    }
  });
  $("[name='form[containsBelarus54]']").change(function () {
    if ($("#formwhatTVType42").is(':checked')
        || $("#formwhatTVType43").is(':checked')
        || $("#formwhatTVType44").is(':checked')
        || $("#formwhatTVType45").is(':checked')
        || $("#formwhatTVType48").is(':checked')
        || $("#formwhatTVType410").is(':checked')) {
      $("#quantityOfChannels4Div").removeAttr("hidden");
    } else if ($("#formwhatTVType46").is(':checked')) {
      $("#tvProvider4Div").removeAttr("hidden");
    } else {
      $("#hasSmartTV4Div").removeAttr("hidden");
    }
  });
  $("#quantityOfChannels4Div")
  .keypress(function () {
    $("#tvProvider4Div").removeAttr("hidden");
  })
  .focusout(function () {
    var num = Number($("#formquantityOfChannels4").val());
    if (num > 0) {
      $("#quantityOfChannels4Div").removeClass("has-error").addClass("has-success");
    } else {
      $("#quantityOfChannels4Div").removeClass("has-success").addClass("has-error");
    }
  });
  $("[name='form[tvProvider4]']").keypress(function () {
    if ($("#formwhatTVType42").is(':checked')
        || $("#formwhatTVType44").is(':checked')
        || $("#formwhatTVType48").is(':checked')
        || $("#formwhatTVType410").is(':checked')) {
      $("#containsTNT4Div").removeAttr("hidden");
    } else {
      $("#hasSmartTV4Div").removeAttr("hidden");
    }
  });
  $("[name='form[containsTNT4]']").change(function () {
    $("#containsVTV4Div").removeAttr("hidden");
  });
  $("[name='form[containsVTV4]']").change(function () {
    $("#containsTV34Div").removeAttr("hidden");
  });
  $("[name='form[containsTV34]']").change(function () {
    $("#containsMuzTV4Div").removeAttr("hidden");
  });
  $("[name='form[containsMuzTV4]']").change(function () {
    $("#containsDomashniy4Div").removeAttr("hidden");
  });
  $("[name='form[containsDomashniy4]']").change(function () {
    $("#containsEuropaPlus4Div").removeAttr("hidden");
  });
  $("[name='form[containsEuropaPlus4]']").change(function () {
    $("#containsPeretc4Div").removeAttr("hidden");
  });
  $("[name='form[containsPeretc4]']").change(function () {
    $("#hasSmartTV4Div").removeAttr("hidden");
  });
  $("[name='form[hasSmartTV4]']").change(function () {
    if ($("#formhasSmartTV41").is(':checked')) {
      $("#usesSmartTV4Div").removeAttr("hidden");
      $("#hasOneMoreTV4Div").attr("hidden", "hidden");
    } else {
      $("#usesSmartTV4Div").attr("hidden", "hidden");
      $("#hasOneMoreTV4Div").removeAttr("hidden");
    }
  });
  $("[name='form[usesSmartTV4]']").change(function () {
    $("#hasOneMoreTV4Div").removeAttr("hidden");
  });
  $("[name='hasOneMoreTV4']").change(function () {
    if ($("#hasOneMoreTV41").is(':checked')) {
      $("#whatTVType5Div").removeAttr("hidden");
      $("#howManyPeopleAtHomeDiv").attr("hidden", "hidden");
    } else {
      $("#whatTVType5Div").attr("hidden", "hidden");
      $("#howManyPeopleAtHomeDiv").removeAttr("hidden");
    }
  });
  $("#formwhatTVType512").change(function () {
    if ($("#formwhatTVType512").is(':checked')) {
      $("[name='form[whatTVType5]']").prop('checked', false);
      $("#formwhatTVType512").prop('checked', true);
      $("#containsBelarus55Div").attr("hidden", "hidden");
      $("#quantityOfChannels5Div").attr("hidden", "hidden");
      $("#hasSmartTV5Div").removeAttr("hidden");
      $("#formwhatTVType513").prop('checked', false);
      $("#formwhatTVType514").prop('checked', false);
      $("#formwhatTVType515").prop('checked', false);
    }
  });
  $("#formwhatTVType513").change(function () {
    if ($("#formwhatTVType513").is(':checked')) {
      $("[name='form[whatTVType5]']").prop('checked', false);
      $("#formwhatTVType513").prop('checked', true);
      $("#containsBelarus55Div").attr("hidden", "hidden");
      $("#quantityOfChannels5Div").attr("hidden", "hidden");
      $("#hasSmartTV5Div").removeAttr("hidden");
      $("#formwhatTVType512").prop('checked', false);
      $("#formwhatTVType514").prop('checked', false);
      $("#formwhatTVType515").prop('checked', false);
    }
  });
  $("#formwhatTVType514").change(function () {
    if ($("#formwhatTVType514").is(':checked')) {
      $("[name='form[whatTVType5]']").prop('checked', false);
      $("#formwhatTVType514").prop('checked', true);
      $("#containsBelarus55Div").attr("hidden", "hidden");
      $("#quantityOfChannels5Div").attr("hidden", "hidden");
      $("#hasSmartTV5Div").removeAttr("hidden");
      $("#formwhatTVType512").prop('checked', false);
      $("#formwhatTVType513").prop('checked', false);
      $("#formwhatTVType515").prop('checked', false);
    }
  });
  $("#formwhatTVType515").change(function () {
    if ($("#formwhatTVType515").is(':checked')) {
      $("[name='form[whatTVType5]']").prop('checked', false);
      $("#formwhatTVType515").prop('checked', true);
      $("#containsBelarus55Div").attr("hidden", "hidden");
      $("#quantityOfChannels5Div").attr("hidden", "hidden");
      $("#hasSmartTV5Div").removeAttr("hidden");
      $("#formwhatTVType512").prop('checked', false);
      $("#formwhatTVType513").prop('checked', false);
      $("#formwhatTVType514").prop('checked', false);
    }
  });
  $("[name='form[whatTVType5]']").change(function () {
    if ($("#formwhatTVType51").is(':checked')
        || $("#formwhatTVType56").is(':checked')) {
      $("#containsBelarus55Div").removeAttr("hidden");
      $("#quantityOfChannels5Div").attr("hidden", "hidden");
      $("#hasSmartTV5Div").attr("hidden", "hidden");
      $("#formwhatTVType512").prop('checked', false);
      $("#formwhatTVType513").prop('checked', false);
      $("#formwhatTVType514").prop('checked', false);
      $("#formwhatTVType515").prop('checked', false);
    } else if ($("#formwhatTVType52").is(':checked')
        || $("#formwhatTVType53").is(':checked')
        || $("#formwhatTVType54").is(':checked')
        || $("#formwhatTVType55").is(':checked')
        || $("#formwhatTVType58").is(':checked')
        || $("#formwhatTVType510").is(':checked')) {
      $("#containsBelarus55Div").attr("hidden", "hidden");
      $("#quantityOfChannels5Div").removeAttr("hidden");
      $("#hasSmartTV5Div").attr("hidden", "hidden");
      $("#formwhatTVType512").prop('checked', false);
      $("#formwhatTVType513").prop('checked', false);
      $("#formwhatTVType514").prop('checked', false);
      $("#formwhatTVType515").prop('checked', false);
    } else if ($("#formwhatTVType57").is(':checked')
        || $("#formwhatTVType59").is(':checked')
        || $("#formwhatTVType511").is(':checked')) {
      $("#containsBelarus55Div").attr("hidden", "hidden");
      $("#quantityOfChannels5Div").attr("hidden", "hidden");
      $("#hasSmartTV5Div").removeAttr("hidden");
      $("#formwhatTVType512").prop('checked', false);
      $("#formwhatTVType513").prop('checked', false);
      $("#formwhatTVType514").prop('checked', false);
      $("#formwhatTVType515").prop('checked', false);
    }
  });
  $("[name='form[containsBelarus55]']").change(function () {
    if ($("#formwhatTVType52").is(':checked')
        || $("#formwhatTVType53").is(':checked')
        || $("#formwhatTVType54").is(':checked')
        || $("#formwhatTVType55").is(':checked')
        || $("#formwhatTVType58").is(':checked')
        || $("#formwhatTVType510").is(':checked')) {
      $("#quantityOfChannels5Div").removeAttr("hidden");
    } else if ($("#formwhatTVType56").is(':checked')) {
      $("#tvProvider5Div").removeAttr("hidden");
    } else {
      $("#hasSmartTV5Div").removeAttr("hidden");
    }
  });
  $("#quantityOfChannels5Div")
  .keypress(function () {
    $("#tvProvider5Div").removeAttr("hidden");
  })
  .focusout(function () {
    var num = Number($("#formquantityOfChannels5").val());
    if (num > 0) {
      $("#quantityOfChannels5Div").removeClass("has-error").addClass("has-success");
    } else {
      $("#quantityOfChannels5Div").removeClass("has-success").addClass("has-error");
    }
  });
  $("[name='form[tvProvider5]']").keypress(function () {
    if ($("#formwhatTVType52").is(':checked')
        || $("#formwhatTVType54").is(':checked')
        || $("#formwhatTVType58").is(':checked')
        || $("#formwhatTVType510").is(':checked')) {
      $("#containsTNT5Div").removeAttr("hidden");
    } else {
      $("#hasSmartTV5Div").removeAttr("hidden");
    }
  });
  $("[name='form[containsTNT5]']").change(function () {
    $("#containsVTV5Div").removeAttr("hidden");
  });
  $("[name='form[containsVTV5]']").change(function () {
    $("#containsTV35Div").removeAttr("hidden");
  });
  $("[name='form[containsTV35]']").change(function () {
    $("#containsMuzTV5Div").removeAttr("hidden");
  });
  $("[name='form[containsMuzTV5]']").change(function () {
    $("#containsDomashniy5Div").removeAttr("hidden");
  });
  $("[name='form[containsDomashniy5]']").change(function () {
    $("#containsEuropaPlus5Div").removeAttr("hidden");
  });
  $("[name='form[containsEuropaPlus5]']").change(function () {
    $("#containsPeretc5Div").removeAttr("hidden");
  });
  $("[name='form[containsPeretc5]']").change(function () {
    $("#hasSmartTV5Div").removeAttr("hidden");
  });
  $("[name='form[hasSmartTV5]']").change(function () {
    if ($("#formhasSmartTV51").is(':checked')) {
      $("#usesSmartTV5Div").removeAttr("hidden");
      $("#hasOneMoreTV5Div").attr("hidden", "hidden");
    } else {
      $("#usesSmartTV5Div").attr("hidden", "hidden");
      $("#hasOneMoreTV5Div").removeAttr("hidden");
    }
  });
  $("[name='form[usesSmartTV5]']").change(function () {
    $("#hasOneMoreTV5Div").removeAttr("hidden");
  });
  $("[name='hasOneMoreTV5']").change(function () {
    if ($("#hasOneMoreTV51").is(':checked')) {
      $("#whatTVType6Div").removeAttr("hidden");
      $("#howManyPeopleAtHomeDiv").attr("hidden", "hidden");
    } else {
      $("#whatTVType6Div").attr("hidden", "hidden");
      $("#howManyPeopleAtHomeDiv").removeAttr("hidden");
    }
  });
  $("#formwhatTVType612").change(function () {
    if ($("#formwhatTVType612").is(':checked')) {
      $("[name='form[whatTVType5]']").prop('checked', false);
      $("#formwhatTVType612").prop('checked', true);
      $("#containsBelarus55Div").attr("hidden", "hidden");
      $("#quantityOfChannels5Div").attr("hidden", "hidden");
      $("#hasSmartTV5Div").removeAttr("hidden");
      $("#formwhatTVType613").prop('checked', false);
      $("#formwhatTVType614").prop('checked', false);
      $("#formwhatTVType615").prop('checked', false);
      $("#formwhatTVType616").prop('checked', false);
    }
  });
  $("#formwhatTVType613").change(function () {
    if ($("#formwhatTVType613").is(':checked')) {
      $("[name='form[whatTVType5]']").prop('checked', false);
      $("#formwhatTVType613").prop('checked', true);
      $("#containsBelarus55Div").attr("hidden", "hidden");
      $("#quantityOfChannels5Div").attr("hidden", "hidden");
      $("#hasSmartTV5Div").removeAttr("hidden");
      $("#formwhatTVType612").prop('checked', false);
      $("#formwhatTVType614").prop('checked', false);
      $("#formwhatTVType615").prop('checked', false);
      $("#formwhatTVType616").prop('checked', false);
    }
  });
  $("#formwhatTVType614").change(function () {
    if ($("#formwhatTVType614").is(':checked')) {
      $("[name='form[whatTVType5]']").prop('checked', false);
      $("#formwhatTVType614").prop('checked', true);
      $("#containsBelarus55Div").attr("hidden", "hidden");
      $("#quantityOfChannels5Div").attr("hidden", "hidden");
      $("#hasSmartTV5Div").removeAttr("hidden");
      $("#formwhatTVType612").prop('checked', false);
      $("#formwhatTVType613").prop('checked', false);
      $("#formwhatTVType615").prop('checked', false);
      $("#formwhatTVType616").prop('checked', false);
    }
  });
  $("#formwhatTVType615").change(function () {
    if ($("#formwhatTVType615").is(':checked')) {
      $("[name='form[whatTVType5]']").prop('checked', false);
      $("#formwhatTVType615").prop('checked', true);
      $("#containsBelarus55Div").attr("hidden", "hidden");
      $("#quantityOfChannels5Div").attr("hidden", "hidden");
      $("#hasSmartTV5Div").removeAttr("hidden");
      $("#formwhatTVType612").prop('checked', false);
      $("#formwhatTVType613").prop('checked', false);
      $("#formwhatTVType614").prop('checked', false);
      $("#formwhatTVType616").prop('checked', false);
    }
  });
  $("#formwhatTVType616").change(function () {
    if ($("#formwhatTVType616").is(':checked')) {
      $("[name='form[whatTVType5]']").prop('checked', false);
      $("#formwhatTVType616").prop('checked', true);
      $("#containsBelarus55Div").attr("hidden", "hidden");
      $("#quantityOfChannels5Div").attr("hidden", "hidden");
      $("#hasSmartTV5Div").removeAttr("hidden");
      $("#formwhatTVType612").prop('checked', false);
      $("#formwhatTVType613").prop('checked', false);
      $("#formwhatTVType614").prop('checked', false);
      $("#formwhatTVType615").prop('checked', false);
    }
  });
  $("[name='form[whatTVType6]']").change(function () {
    if ($("#formwhatTVType61").is(':checked')
        || $("#formwhatTVType66").is(':checked')) {
      $("#containsBelarus56Div").removeAttr("hidden");
      $("#quantityOfChannels6Div").attr("hidden", "hidden");
      $("#hasSmartTV6Div").attr("hidden", "hidden");
      $("#formwhatTVType612").prop('checked', false);
      $("#formwhatTVType613").prop('checked', false);
      $("#formwhatTVType614").prop('checked', false);
      $("#formwhatTVType615").prop('checked', false);
      $("#formwhatTVType616").prop('checked', false);
    } else if ($("#formwhatTVType62").is(':checked')
        || $("#formwhatTVType63").is(':checked')
        || $("#formwhatTVType64").is(':checked')
        || $("#formwhatTVType65").is(':checked')
        || $("#formwhatTVType68").is(':checked')
        || $("#formwhatTVType610").is(':checked')) {
      $("#containsBelarus56Div").attr("hidden", "hidden");
      $("#quantityOfChannels6Div").removeAttr("hidden");
      $("#hasSmartTV6Div").attr("hidden", "hidden");
      $("#formwhatTVType612").prop('checked', false);
      $("#formwhatTVType613").prop('checked', false);
      $("#formwhatTVType614").prop('checked', false);
      $("#formwhatTVType615").prop('checked', false);
      $("#formwhatTVType616").prop('checked', false);
    } else if ($("#formwhatTVType67").is(':checked')
        || $("#formwhatTVType69").is(':checked')
        || $("#formwhatTVType611").is(':checked')) {
      $("#containsBelarus56Div").attr("hidden", "hidden");
      $("#quantityOfChannels6Div").attr("hidden", "hidden");
      $("#hasSmartTV6Div").removeAttr("hidden");
      $("#formwhatTVType612").prop('checked', false);
      $("#formwhatTVType613").prop('checked', false);
      $("#formwhatTVType614").prop('checked', false);
      $("#formwhatTVType615").prop('checked', false);
      $("#formwhatTVType616").prop('checked', false);
    }
  });
  $("[name='form[containsBelarus56]']").change(function () {
    if ($("#formwhatTVType62").is(':checked')
        || $("#formwhatTVType63").is(':checked')
        || $("#formwhatTVType64").is(':checked')
        || $("#formwhatTVType65").is(':checked')
        || $("#formwhatTVType68").is(':checked')
        || $("#formwhatTVType610").is(':checked')) {
      $("#quantityOfChannels6Div").removeAttr("hidden");
    } else if ($("#formwhatTVType66").is(':checked')) {
      $("#tvProvider6Div").removeAttr("hidden");
    } else {
      $("#hasSmartTV6Div").removeAttr("hidden");
    }
  });
  $("#quantityOfChannels6Div")
  .keypress(function () {
    $("#tvProvider6Div").removeAttr("hidden");
  })
  .focusout(function () {
    var num = Number($("#formquantityOfChannels6").val());
    if (num > 0) {
      $("#quantityOfChannels6Div").removeClass("has-error").addClass("has-success");
    } else {
      $("#quantityOfChannels6Div").removeClass("has-success").addClass("has-error");
    }
  });
  $("[name='form[tvProvider6]']").keypress(function () {
    if ($("#formwhatTVType62").is(':checked')
        || $("#formwhatTVType64").is(':checked')
        || $("#formwhatTVType68").is(':checked')
        || $("#formwhatTVType610").is(':checked')) {
      $("#containsTNT6Div").removeAttr("hidden");
    } else {
      $("#hasSmartTV6Div").removeAttr("hidden");
    }
  });
  $("[name='form[containsTNT6]']").change(function () {
    $("#containsVTV6Div").removeAttr("hidden");
  });
  $("[name='form[containsVTV6]']").change(function () {
    $("#containsTV36Div").removeAttr("hidden");
  });
  $("[name='form[containsTV36]']").change(function () {
    $("#containsMuzTV6Div").removeAttr("hidden");
  });
  $("[name='form[containsMuzTV6]']").change(function () {
    $("#containsDomashniy6Div").removeAttr("hidden");
  });
  $("[name='form[containsDomashniy6]']").change(function () {
    $("#containsEuropaPlus6Div").removeAttr("hidden");
  });
  $("[name='form[containsEuropaPlus6]']").change(function () {
    $("#containsPeretc6Div").removeAttr("hidden");
  });
  $("[name='form[containsPeretc6]']").change(function () {
    $("#hasSmartTV6Div").removeAttr("hidden");
  });
  $("[name='form[hasSmartTV6]']").change(function () {
    if ($("#formhasSmartTV61").is(':checked')) {
      $("#usesSmartTV6Div").removeAttr("hidden");
      $("#howManyPeopleAtHomeDiv").attr("hidden", "hidden");
    } else {
      $("#usesSmartTV6Div").attr("hidden", "hidden");
      $("#howManyPeopleAtHomeDiv").removeAttr("hidden");
    }
  });
  $("[name='form[usesSmartTV6]']").change(function () {
    $("#howManyPeopleAtHomeDiv").removeAttr("hidden");
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
  $("[name='childrenUnder4years']").change(function () {
    if ($("#childrenUnder4years1").is(':checked')) {
      $("#formchildrenUnder4years").removeAttr("disabled");
      $("#subscribeDiv").removeAttr("hidden");
    } else {
      $("#formchildrenUnder4years").attr("disabled", "disabled");
      $("#subscribeDiv").removeAttr("hidden");
    }
  });
  $("#formchildrenUnder4years").focusout(function () {
    var num = Number($("#formchildrenUnder4years").val());
    if (num > 0) {
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