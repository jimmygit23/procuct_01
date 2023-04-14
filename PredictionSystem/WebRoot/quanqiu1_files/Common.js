var loading_sk = "<div class=\"sk-spinner sk-spinner-three-bounce\"><div class=\"sk-bounce1\"></div><div class=\"sk-bounce2\"></div><div class=\"sk-bounce3\"></div></div>";
var nodata = "<div class=\"nodata\"><img src=\"/Styles/images/search_128.png\" /><h4>No Data Found!</h4></div>";
var loading = {
    show: function (title) {

        title = title == "" ? "Loading..." : title;
        $('#loadingModal_Title').html(title);
        $('#loadingModal').modal({ backdrop: 'static', keyboard: false });
    },
    hide: function () {
        $("#loadingModal").modal('hide');
    }
}
toastr.options = {
    "closeButton": false,
    "debug": false,
    "progressBar": false,
    "preventDuplicates": false,
    "positionClass": "toast-top-center",
    "onclick": null,
    "showDuration": "400",
    "hideDuration": "1000",
    "timeOut": "7000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
}


/*
        公共JS

*/
if (!String.prototype.trim) {
    /*---------------------------------------
     * 清除字符串两端空格，包含换行符、制表符
     *---------------------------------------*/
    String.prototype.trim = function () {
        return this.triml().trimr();
    }
    /*----------------------------------------
     * 清除字符串左侧空格，包含换行符、制表符
     * ---------------------------------------*/
    String.prototype.triml = function () {
        return this.replace(/^[\s\n\t]+/g, "");
    }
    /*----------------------------------------
     * 清除字符串右侧空格，包含换行符、制表符
     *----------------------------------------*/
    String.prototype.trimr = function () {
        return this.replace(/[\s\n\t]+$/g, "");
    }
}


//上传图片
var UploadPic = function (uppath, button, repath, form, alertDiv) {

    var btn = button.ladda();
    var submitUrl = "/PageAJAX/Common.ashx?action=picture";

    //上传
    $(form).ajaxSubmit({
        dataType: 'json',
        type: "post",
        data: {
            "UpFilePath": uppath
        },
        beforeSubmit: function (formData, jqForm, options) {
            btn.ladda('start');

        },
        success: function (data) {

            btn.ladda('stop');
            //console.log(data);
            if (data.status == 1) {
                if (alertDiv) {
                    App.alert({
                        container: alertDiv, // alerts parent container(by default placed after the page breadcrumbs)
                        place: "prepent", // append or prepent in container 
                        type: "success",  // alert's type
                        message: "Successful upload",  // alert's message
                        close: true, // make alert closable
                        reset: true, // close all previouse alerts first
                        focus: false, // auto scroll to the alert after shown
                        closeInSeconds: 2, // auto close after defined seconds
                        icon: ""// put icon before the message
                    });
                }
                repath.val(data.image).change();
            } else {
                swal("Fail", data.info, "error");

            }
            return false;
        },
        //失败
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            btn.ladda('stop');
            swal("Fail", "error js", "error");
        },
        url: submitUrl,
        type: "post",
        dataType: "json",
        timeout: 6000*10*5
    });
};
 //modal 回调状态
var modalCallbackStatus = 0;
$(function () {

    $('input:not([autocomplete]),textarea:not([autocomplete]),select:not([autocomplete])').attr('autocomplete', 'off');
  
    //点击搜索按钮
    $("#btn_SearchAll").click(function () {
        //若搜索内容为空 提示输入关键字
        if ($("#txt_SearchAll").val() == "") {
            toastr.warning("Please enter your search keywords!");
        } else {
            window.location.href = "/search?searchtype=" + $("#search_select").val() + "&keys=" + encodeURIComponent($("#txt_SearchAll").val()) + "";
        }
    });

    //底部sumbit保存email
    $("#btn_Subscribe_Email").click(function () {
        //表单提交
        var content_form = $('#subscribe_form');
        var error_form = $('.alert-danger', content_form);
        var success_form = $('.alert-success', content_form);
        content_form.validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block help-block-error', // default input error message class
            focusInvalid: true, // do not focus the last invalid input
            ignore: "",  // validate all fields including form hidden input
            rules: {
                txt_footemailaddress: {
                    required: true,
                    email:true
                }
            },
            invalidHandler: function (event, validator) { //display error alert on form submit              
                success_form.hide();
                error_form.show();
            },
            errorPlacement: function (error, element) { // render error placement for each input type
                error.insertAfter(element); // for other inputs, just perform default behavior
                var cont = $(element).parent('.input-group');
                if (cont) {
                    cont.after(error);
                } else {
                    element.after(error);
                }
            },
            highlight: function (element) { // hightlight error inputs
                $(element)
                    .closest('.form-group').addClass('has-error'); // set error class to the control group
            },
            unhighlight: function (element) { // revert the change done by hightlight
                $(element)
                    .closest('.form-group').removeClass('has-error'); // set error class to the control group
            },
            success: function (label) {
                label
                    .closest('.form-group').removeClass('has-error'); // set success class to the control group
            },
            submitHandler: function (form) {
                success_form.show();
                error_form.hide();

                try {

                    //提交保存
                    $(form).ajaxSubmit({
                        dataType: 'json',
                        type: "post",
                        url: "/PageAJAX/Common.ashx?action=email_subscribe",
                        beforeSend: function () {
                        },
                        data:{
                            url: window.location.href
                        },
                        success: function (data) {       //完成

                            //成功
                            if (data.status == "1") {
                                toastr.options.positionClass = "toast-bottom-center";//设置提示框位置
                                toastr.success(data.message);
                                $("#txt_footemailaddress").val("");
                            } else {
                                toastr.warning(data.message)
                                $("#txt_footemailaddress").val("");
                            }

                            return false;
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            toastr.error(errorThrown)
                            return false;
                        }
                    });
                    return false;

                }
                catch (err) {
                    toastr.error(err)
                }

            }
        });

    });

    //搜索
    $.typeahead({
        input: '.js-typeahead-user_v1',
        minLength:1,
        order: "asc",
        dynamic: true,
        delay: 100,
        cancelButton: false,
        template: function (query, item) {

            if ($("#search_select").val() == "Product") {
                return '<a href="/product/detail/' + item.id + '" target="_blank">' +
               '<span class="typeahead__display">{{title}}</span>' +
           "</a>";
            } else if ($("#search_select").val() == "Exhibitor") {
                return '<a href="/exhibitors/detail/' + item.id + '" target="_blank">' +
             '<span class="typeahead__display">{{title}}</span> ' +
         "</a>";
            } else {
                return '<a href="/events/' + item.id + '" target="_blank">' +
          '<span class="typeahead__display">{{title}}</span> <span style="color:#ed6b75;">{{type}}</span>' +
      "</a>";
            }

        },
        source: {
            product: {
                display: "title",
                href: function (query) {
                    if ($("#search_select").val() == "Product") {
                        return "/product/detail/" + query.id + "";
                    }
                    else if ($("#search_select").val() == "Exhibitor") {
                        return "/exhibitors/detail/" + query.id + "";
                    }
                    else {
                        return "/events/" + query.id + "";
                    }
                },
                ajax: function (query) {
                    return {
                        type: "GET",
                        url: "/PageAJAX/Common.ashx?action=searchproductorexhibitor",
                        path: "product",
                        data: {
                            searchtype: $("#search_select").val(),
                            keys: "{{query}}"
                        },
                        callback: {
                            done: function (data) {
                                //console.log(data.data);
                                return data.data
                            }
                        }
                    }
                }
            }
        },
        callback: {
            onClick: function (node, a, item, event) {

            },
            onSendRequest: function (node, query) {

            },
            onReceiveRequest: function (node, query) {
                //console.log('request is received')                
            },
            onClickAfter: function (node, a, item, event) {

            }
        },
        debug: false
    });
});

//判断搜索时输入框是否为空，为空则禁止搜索并提示
function submitCheck() {
    if ($("#txt_SearchAll").val() == "") {
        toastr.warning("Please enter your search keywords!");
        return false;
    }
    return true;
}