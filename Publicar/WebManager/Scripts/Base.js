var arry = [];
function fn_message(type, message, typeOrder) {
    var result = '';
    switch (type) {
        case "s":
            result = '<div class="myForm1_alert"><span class="icon_acceptcheckconfirmedgogreenokpositiveyes"></span><p class="alert alert-success">' + ((message == undefined) ? "Saved successfully!" : message) + '</p></div>'
            break;
        case "e":
            result = '<div class="myForm1_alert"><span class="icon_alert_blockcanceldeleteapprove"></span><p class="alert alert-danger">' + ((message == undefined) ? "An error occurred while saving" : message) + '</p></div>';
            break;
        case "i":
            result = '<p class="alert alert-warning">' + ((message == undefined) ? "Warning!" : message) + '</p>';
            break;
        case "c":
            result = '<div class="myForm1_alert"><span class="icon_alert_blockcanceldeleteapprove"></span><p class="style_alert">' + ((message == undefined) ? "An error occurred while sending Email, Please Re-Send Email" : message) + '</p><div><input type="button" value="Send Email" onclick="fn_resend(\'' + typeOrder + '\');"/></div></div>';
            break;
        case "b":
            result = '<div class="myForm1_alert"><span class="icon_acceptcheckconfirmedgogreenokpositiveyes"></span><p class="alert alert-info">' + ((message == undefined) ? "Saved successfully!" : message) + '</p></div>'
            break;
        default:
            result = '<div class="myForm1_alert"><span class="icon__alert_information"></span><p class="alert ">Warning!</p></div>';
            break;
    }



    
    //alert($('div[id$=message_row]').length);
    //if ($('div[id$=message_row]').length <= 0) {
    //$('html, body').animate({ scrollTop: $('div[id$=message_row]').offset().top }, 'fast');
    $('div[id$=message_row]').empty().fadeIn().append(result);
    $('div[id$=message_row]').delay("6000").fadeOut();
    $('html, body').animate({ scrollTop: 1 }, 'slow');
    //$('div[id$=message_row]').delay("6000").fadeOut();
    //$('html, body').animate({ scrollTop: $('div[id$=message_row]').offset().top }, 'fast');
        //alert($('div[id$=message_row]').length);
    //}
    //else {
        //arry.push(result);
        //setTimeout(fn_queuemessage, 6000);
    //}

    //$('div[id$=message_row]').empty().fadeIn().append(result);
    //setTimeout(function () { $('div[id$=message_row]').fadeOut(); }, 6000)
}



function fn_resend(val) {
    
    success = function (response) {
        if (response != null || response.d != "F") {
            window.location.href('Complete' + val + '.aspx');
        } else { fn_message('c', 'Error while sending email.', val); }
    }
    error = function (xhr, ajaxOptions, thrownError) {
        fn_message('c', 'Error while sending email.',val);
    }
    fn_callmethod("ReviewSubmit" + val + ".aspx/SendEmail", "{val:" + val + "}", success, error);
}
function fn_custommessage(type, message, place) {
    var result = '';
    switch (type) {
        case "s":
            result = '<div class="myForm1_alert"><span class="icon_acceptcheckconfirmedgogreenokpositiveyes"></span><p class="alert alert-success">' + ((message == undefined) ? "Saved successfully!" : message) + '</p></div>'
            break;
        case "e":
            result = '<div class="myForm1_alert"><span class="icon_alert_blockcanceldeleteapprove"></span><p class="alert alert-danger">' + ((message == undefined) ? "An error occurred while saving" : message) + '</p></div>';
            break;
        case "i":
            result = '<div class="myForm1_alert"><span class="icon__alert_information"></span><p class="alert alert-warning">' + ((message == undefined) ? "Warning!" : message) + '</p></div>';
            break;
        default:
            result = '<div class="myForm1_alert"><span class="icon__alert_information"></span><p class="alert">Warning!</p></div>';
            break;
    }

    $('div[id$='+place+']').empty().fadeIn().append(result);
    //$('html, body').animate({ scrollTop: $('div[id$=' + place + ']').offset().top }, 'fast');
    $('div[id$=' + place + ']').delay("6000").fadeOut();
}

function fn_message_hide() {
    $('div[id$=message_row]').empty();
}
function fn_message_hide_customize(id) {
    $('div[id$='+id+']').empty();
}

function fn_queuemessage() {
    if (arry.length > 0) {
        $('div[id$=message_row]').empty().fadeIn().append(arry.pop()).delay("6000").fadeOut();
        setTimeout(fn_queuemessage, 6000);
    }
}

function fn_QueryString(name) {
    return unescape((RegExp(name + '=' + '(.+?)(&|$)').exec(location.search) || [, null])[1]);
}

function Fn_Only_Decimal(e, field) {
    key = e.keyCode ? e.keyCode : e.which
    // backspace
    if (key == 8) return true
    // 0-9
    if (key > 47 && key < 58) {
        if (field.value == "") return true
        regexp = /.[0-9]{20}$/
        return !(regexp.test(field.value))
    }
    // .
    if (key == 46) {
        if (field.value == "") return false
        regexp = /^[0-9]+$/
        return regexp.test(field.value)
    }
    // other key
    return false

}

function Fn_ValidateNumbers(e,field) {
    key = e.keyCode ? e.keyCode : e.which
    // backspace
    if (key == 8) return true
    if (key > 47 && key < 58) {
        if (field.value == "") return true
        regexp = /[0-9]{20}$/
        return !(regexp.test(field.value))
    }
    return false
}

function fn_message_custom(type, message, divid) {
    var result = '';
    switch (type) {
        case "s":
            result = '<div class="alert alert-dismissable alert-success"><strong>Éxito!</strong> ' + ((message == undefined) ? "Saved successfully!" : message) + '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>';
            break;
        case "e":
            result = '<div class="alert alert-dismissable alert-danger"><strong>Error!</strong> ' + ((message == undefined) ? "An error occurred while saving" : message) + '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>';
            break;
        case "i":
            result = '<div class="alert alert-dismissable alert-info"> ' + ((message == undefined) ? "Advertencia!" : message) + '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>';
            break;
        default:
            result = '<div class="alert alert-dismissable alert-warning"><strong>Advertencia!</strong> ' + message + '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>';
            break;
    }
    $('div[id$=' + divid + ']').stop(false, true).empty().fadeIn().append(result).delay("6000").fadeOut();
    $('html, body').animate({ scrollTop: $('div[id$=' + divid + ']').offset().top - 170 }, 'fast');
}

function fn_callmethodComplete(url, data, success, error, complete) {
    $.ajax({
        type: "POST",
        url: url,
        data: data,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: success,
        error: error,
        complete: complete
    });
}

function fn_callmethod(url, data, success, error) {
    $.ajax({
        type: "POST",
        url: url,
        data: data,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: success,
        error: error
    });
}

function fn_callmethodasync(url, data, success, error, async) {
    $.ajax({
        async: async,
        type: "POST",
        url: url,
        data: data,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: success,
        error: error
    });
}

function fn_callusercontrol(url, success, error) {
    $.ajax({
        type: "POST",
        url: url,
        success: success,
        error: error
    });
}

//function fn_validateform(control)
//{
//    if ($("#" + control).validationEngine({ returnIsValid: true }) == false)
//        return false;
//    return true;
//}

function fn_jsonreplace(data) {

    var temp = "";
    for (var i = 0; i < data.length; i++) {
        if (data[i] == '"')
            temp = temp + "'";
        else
            temp = temp + data[i];

    }
    return temp;
}


/*ADD BY EDER. BUILDING DINAMIC JQGRID. EXCHANGERATESSAVE.ASPX
*************************************************************/

function BuildColNameArray(obj) {
    var array = new Array();
    var i = 0;
    for (property in obj[0]) {
        if (property == "Id") {
            array[i] = '#';
            i = i + 1;
            array[i] = '';
        } else if (property == "LegacyNumber") {
            array[i] = 'Legacy Number'
        } else {
            array[i] = property;
        }
        i++;
    }
    array[i] = '';
    return array;
}

function BuildColModelArray(obj) {
    var array = new Array();
    var i = 0;
    for (property in obj[0]) {
        if (property == "Id") {
            array[i] = { name: 'num', index: 'num', width: 30, align: 'center' };
            i = i + 1;
            array[i] = { name: 'hiddeid', index: 'hiddeid', width: 10, align: 'center', hidden: true };
        }
        else if (property == "LegacyNumber") {
            array[i] = { name: property, index: property, width: 40, align: 'center'};
        }
        else
            array[i] = { name: property, index: property, width: 100, align: 'center' };
        i++;
    }
    array[i] = { name: 'action', index: 'action', width: '35%', align: 'center' }
    return array;
}

function GenerateTable(tbname, pagname, captionString, object, width) {
    try {
        $("#" + tbname).jqGrid({
            datatype: "local",
            height: 'auto',
            width: width,
            rowNum: 20,
            rowList: [20, 40, 60],
            pager: "#" + pagname,
            sortname: 'id',
            colNames: BuildColNameArray(object),
            colModel: BuildColModelArray(object),
            caption: captionString
        });
    }
    catch (e) { }
}
function FillTable(tableID, obj) {
    try {
        var len = obj.length;
        for (var i = 0; i < len; i++) {
            var arrayRow = {};
            for (property in obj[i]) {
                arrayRow[property] = obj[i][property];
            }
            jQuery("#" + tableID).jqGrid('addRowData', i + 1, arrayRow);
        }
    }
    catch (e) { }
}


function CallSearch(webmethod, txtid, txtname, txtvalue, txtlegacy) {
    success = function (response) {

        var data = response.d.text;
        var obj = $.parseJSON(data);
        if (obj != null) {
            if (obj.length > 0) {
                $("#tbGrid").jqGrid({

                    colNames: BuildColNameArray(obj),
                    colModel: BuildColModelArray(obj),

                    /*
                    colNames: ['ID', 'name'],
                    colModel: [
                    { name: 'Id', index: 'hidden', width: 50, align: 'left' },
                    { name: 'name', index: 'name', width: 40, align: 'center' }

                    ],*/
                    datatype: 'local',
                    width: 700,
                    pager: "#tbGridPager",
                    viewrecords: true,
                    height: 'auto',
                    sortorder: "desc",
                    rowNum: 20,
                    rowList: [20, 40, 60],
                    caption: "Search"
                });
                $("#tbGrid").jqGrid('filterToolbar', { stringResult: true, searchOnEnter: false });
                $('#DivSearch table[id$=tbGrid] tbody ').unbind("dblclick");
                $('#DivSearch table[id$=tbGrid] tbody ').bind("dblclick", (function () {

                    var id = $('#DivSearch table[id$=tbGrid] tbody tr.ui-state-hover').attr('id');
                    var row = $('#tbGrid').getRowData(id);
                    if (typeof fn_callIdMarket == 'function') {
                        fn_loadshow("MainForm");
                        fn_callIdMarket(row.Id);
                    }
                    if ($("#" + txtid)[0].tagName.toLowerCase() == 'span')
                        $("#" + txtid).html(row.Id);
                    else
                        $("#" + txtid).val(row.Id);

                    if ($("#" + txtname)[0].tagName.toLowerCase() == 'span')
                        $("#" + txtname).html(row.Name);
                    else
                        $("#" + txtname).val(row.Name);

                    if (txtlegacy != undefined) {
                        if ($("#" + txtlegacy)[0].tagName.toLowerCase() == 'span')
                            $("#" + txtlegacy).html(row.LegacyNumber);
                        else
                            $("#" + txtlegacy).val(row.LegacyNumber);
                    }

                    if (txtvalue != undefined) {
                        if (txtvalue == 'tr1gg3rF1r3') {
                            $('#' + txtid).change();
                        }
                        else {
                            if ($("#" + txtvalue)[0].tagName.toLowerCase() == 'span')
                                $("#" + txtvalue).html(row.Value);
                            else
                                $("#" + txtvalue).val(row.Value);
                        }
                    }
                    $("#DivSearch").dialog("destroy");
                    $("#" + txtid).focus();
                }));

                var len = obj.length;
                for (var i = 0; i < len; i++) {
                    var arrayRow = {};
                    for (property in obj[i]) {
                        arrayRow[property] = obj[i][property];
                    }
                    jQuery("#tbGrid").jqGrid('addRowData', i + 1, arrayRow);
                }

                /*
                var len = obj.length;

                for (var i = 0; i < len; i++) {
                var id = obj[i].Id;
                var name = obj[i].Name;
                var index = i + 1;

                var row = {
                Id: id,
                name: name
                }

                jQuery("#tbSearch").jqGrid('addRowData', i + 1, row);
                }*/

                $("#tbGrid").trigger("reloadGrid");
            }
        }
        else {
        }
        $("#DivSearch").dialog({
            resizable: false,
            width: 750,
            height: 'auto',
            title: 'Search',
            modal: true
        });
    };
    error = function (xhr, ajaxOptions, thrownError) {
        
        fn_message("i", "Error Search.");
    };
    var grid = $("#tbGrid");

    grid.clearGridData();
    var datacall = '{ }';
    fn_callmethod(webmethod, datacall, success, error);
}


/*Array.prototype.remByVal = function (val) {
    for (var i = 0; i < this.length; i++) {
        if (this[i] === val) {
            this.splice(i, 1);
            i--;
        }
    }
    return this;
}*/

function fn_loadshow(id) {
    $("#loader-box").css("left", $("#" + id).offset().left);
    $("#loader-box").css("top", $("#" + id).offset().top);
    $("#loader-box").height($("#" + id).height());
    $("#loader-box").width($("#" + id).width());
    $("#loader-box").removeClass("hide");
}

function fn_loadhide() {
    $("#loader-box").addClass("hide");
}

//add rmera fn
function fn_removeValidation() {
    $(".formError").each(function (index) {
        $(this).stop();
        $(this).remove();
    });

}
function fn_getURLParameter(name) {
    return unescape((RegExp(name + '=' + '(.+?)(&|$)').exec(location.search) || [, null])[1]);
}


function fn_getquerystring(query) {
    return unescape((RegExp(query + '=' + '(.+?)(&|$)').exec(location.search) || [, null])[1]);
}


function fn_JsonReplace(data) {

    var temp = "";
    for (var i = 0; i < data.length; i++) {
        if (data[i] == '"')
            temp = temp + "'";
        else
            temp = temp + data[i];

    }
    return temp;
}

function fn_LoadTemplates(templateID, JsonObject) {
    Handlebars.registerHelper('ifCond', function (v1, v2, options) {
        if (v1 > v2) {
            return options.fn(this);
        }
        return options.inverse(this);
    });

    Handlebars.registerHelper('ifEquals', function (v1, v2, options) {
        if (v1 == v2) {
            return options.fn(this);
        }
        return options.inverse(this);
    });

    var stemplate = $("#" + templateID).html();
    var tmpl = Handlebars.compile(stemplate);
    var html = tmpl(JsonObject);
    return html;
}
function fn_messagePromp(text) {
    var html = '<div class="formError" style="top: inherit; left: inherit; margin-top: -70px; opacity: 0.87;"><div class="formErrorContent">' + text + '<br></div><div class="formErrorArrow"><div class="line10"><!-- --></div><div class="line9"><!-- --></div><div class="line8"><!-- --></div><div class="line7"><!-- --></div><div class="line6"><!-- --></div><div class="line5"><!-- --></div><div class="line4"><!-- --></div><div class="line3"><!-- --></div><div class="line2"><!-- --></div><div class="line1"><!-- --></div></div></div>'
    return html;
}

function fn_modalConfirm() {
    $('#modalAlertConfirmAction').modal('show');
    /*$('#btnMasterAlertConfirm').click(function (e) {
        e.preventDefault();
        return 1;
    });*/
}




/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var xCoreBaseUtilitiesJS = {
    modalPopup: true,
    data: {
        modalPopup: undefined
    },
    timer: {
        handler: undefined,
        milisec: 0,
        ele: "#wrap-policesprocedures"
    },
    loader: {
        show: function ($wrapper, loaderHtml) {
            if ($wrapper == undefined) return;
            $wrapper.append(loaderHtml)
        },
        hide: function ($wrapper, loaderSel) {
            if ($wrapper == undefined || $wrapper.find(loaderSel) == undefined) return;
            $wrapper.find(loaderSel).remove();
        }
    },
    showMessage: function ($wrapper, messageType, message, timeout, goTo) {
        var html = '';

        switch (messageType) {
            case "s":
                html = '<div class="myForm1_alert">' +
                            '<span class="icon_acceptcheckconfirmedgogreenokpositiveyes"></span>' +
                            '<p class="alert alert-success">' +
                                message +
                            '</p>' +
                        '</div>';
                break;
            case "e":
                html = '<div class="myForm1_alert">' +
                            '<span class="icon_acceptcheckconfirmedgogreenokpositiveyes"></span>' +
                            '<p class="alert alert-er">' +
                                message +
                            '</p>' +
                        '</div>';

                break;
            case "w":
                html = '<div class="myForm1_alert">' +
                            '<span class="icon_acceptcheckconfirmedgogreenokpositiveyes"></span>' +
                            '<p class="alert alert-warning">' +
                                message +
                            '</p>' +
                        '</div>';

                break;
            case "i":
                html = '<div class="myForm1_alert">' +
                            '<span class="icon_acceptcheckconfirmedgogreenokpositiveyes"></span>' +
                            '<p class="alert alert-info">' +
                                message +
                            '</p>' +
                        '</div>';

                break;
            default:
                html = '<div class="myForm1_alert">' +
                            '<span class="icon_acceptcheckconfirmedgogreenokpositiveyes"></span>' +
                            '<p class="alert alert-info">' +
                                message +
                            '</p>' +
                        '</div>';
                break;
        };

        $wrapper.append(html).show();

        setTimeout(function () { $wrapper.find("div.myForm1_alert:first").remove(); }, (timeout == undefined ? 5000 : timeout));

        if (goTo != undefined && goTo.available) { this.scrollTo(goTo.time, goTo.position); }
    },
    scrollTo: function (time, position) {
        $("html, body").animate({ scrollTop: position }, time);
    },
    ajaxCall: function (url, data, success, error, complete, beforeSend) {
        $.ajax({
            type: "POST",
            url: url,
            data: data,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            beforeSend: beforeSend,
            success: success,
            error: error,
            complete: complete
        });
    },
    doPostback: function (eventTarget, eventArgument) {
        document.forms[0].__EVENTTARGET.value = eventTarget;
        document.forms[0].__EVENTARGUMENT.value = eventArgument;
        document.forms[0].submit();
    },
    isMobile: {
        Android: function () {
            return navigator.userAgent.toLowerCase().indexOf("android") > -1;
        },
        /*BlackBerry: function() {
            return navigator.userAgent.toLowerCase().indexOf("blackberry");
        },*/
        iOS: function () {
            return (
                        (navigator.userAgent.toLowerCase().indexOf("ipad") > -1) ||
                        (navigator.userAgent.toLowerCase().indexOf("iphone") > -1) ||
                        (navigator.userAgent.toLowerCase().indexOf("ipod") > -1)
                    );
        },
        /*Opera: function() {
            return navigator.userAgent.match(/Opera Mini/i);
        },
        Windows: function() {
            return navigator.userAgent.match(/IEMobile/i);
        },*/
        Both: function () {
            return (xCoreBaseUtilitiesJS.isMobile.Android() || xCoreBaseUtilitiesJS.isMobile.iOS());
        }
    }
};

String.format = function () {
    var s = arguments[0];
    for (var i = 0; i < arguments.length - 1; i++) {
        var reg = new RegExp("\\{" + i + "\\}", "gm");
        s = s.replace(reg, arguments[i + 1]);
    }

    return s;
}
