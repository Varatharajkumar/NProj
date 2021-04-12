function ValidateUser() {
    var userName = $.trim($('#txtUsername').val()).toUpperCase();
    var pswd = $.trim($('#txtPassword').val()).toLowerCase();

    if ((userName == '' || pswd == '') || (userName == 'NISHOK' || userName == 'KAVIN') && pswd == 'pswd')
        return true;
    else {
        alert('Enter Valid User Name and Password');
        return false;
    }
}

function GetData() {

    $.ajax({
        type: 'POST',
        contentType:'application/json; charset=utf-8;',
        url: "../Handler.ashx?action=GetData",
        dataType:'JSON',
        success: function (data) {
            var output = JSON.parse(data);

            alert(output);
        },
        error: function (data) {

            alert('error');
        },
    });


}

function fnShowMessage(msg) {
    alert(msg)
}

function UpdateThresholdDetails(totalWeight, needleCount) {
    var threshold = 1000;

    $('#TopBarDetails1_Label1').text(totalWeight);
    if (needleCount != undefined) {
        $('#TopBarDetails1_Label2').text(needleCount);     
    }
    else {
        needleCount = $('#TopBarDetails1_Label2').text();  
    }
    var cnt = (totalWeight / needleCount) - threshold


    if (cnt < 0) {
        $('#TopBarDetails1_Label3').text('Needle is good to use');
        $('#TopBarDetails1_Label4').text('Threshold is under control');
        $("#TopBarDetails1_Label3, #TopBarDetails1_Label4").removeClass("clsTopMenuElmt2").addClass("clsTopMenuElmt3");
    }
    else {
        $("#TopBarDetails1_Label3").text("It's time to replace the Needle!!!");
        $('#TopBarDetails1_Label4').text('Threshold Reached');
        $("#TopBarDetails1_Label3, #TopBarDetails1_Label4").removeClass("clsTopMenuElmt3").addClass("clsTopMenuElmt2");
    }
}