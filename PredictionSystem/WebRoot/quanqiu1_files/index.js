$(function () {


    get_events_product("");
    get_category();
    get_ProgramVideo();//议程视频


    //近期展会
    get_events_upcoming();
});

//加载新闻
function get_News() {
    $.ajax({
        dataType: 'json',
        type: "post",
        data: {
            pagesize: 10,
            categoryid: '200413184'
        },
        url: "/PageAJAX/Common.ashx?action=getnewsartical",
        beforeSend: function () {
            $("#newsList").html(loading_sk);
        },
        success: function (data) {
            //console.log(data);
            $("#newsList").html("");
            if (data.status == 1) {
                var htmlContent = template("template_news_list", data.data);
                $("#newsList").html(htmlContent);

                //
                $(".news-box a").css("color", "#808080");
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $("#newsList").html("");
        }
    });
}


function get_category() {
    $.getJSON("/JSON/industry.json?ver=" + jsonver + "", function (data) {
        var htmlContent = template("template_category", data.data);
        $("#list_Category").html(htmlContent);
        $('.c_l_item').hover(
            function () {
                if ($(this).hasClass('last_c_l_item')) {
                    return false;
                }
                $(this).addClass('c_l_item_on');
                $(this).next('.c_l_item').addClass('bta');
                $(this).find('.first_cate i').hide();
                $(this).find('.sub_cate').show();
            },
            function () {
                $(this).removeClass('c_l_item_on');
                $(this).next('.c_l_item').removeClass('bta');
                $(this).find('.first_cate i').show();
                $(this).find('.sub_cate').hide();
            }
        );
    });
}

function get_country() {
    $.ajax({
        dataType: 'json',
        type: "post",
        data: {

        },
        url: "/PageAJAX/Common.ashx?action=index_country_list",
        beforeSend: function () {
            $("#country_Container").html(loading_sk);
        },
        success: function (data) {

            $("#events_Container").html("");
            if (data.status == 1) {
                var htmlContent = template("template_country_list", data);
                $("#country_Container").html(htmlContent);

            } else {
                App.alert({
                    container: "#country_Container", // alerts parent container(by default placed after the page breadcrumbs)
                    place: "prepent", // append or prepent in container 
                    type: "danger",  // alert's type
                    message: data.message,  // alert's message
                    close: true, // make alert closable
                    reset: true, // close all previouse alerts first
                    focus: false, // auto scroll to the alert after shown
                    closeInSeconds: 0, // auto close after defined seconds
                    icon: ""// put icon before the message
                });
            }




        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $("#country_Container").html("");
            App.alert({
                container: "#country_Container", // alerts parent container(by default placed after the page breadcrumbs)
                place: "prepent", // append or prepent in container 
                type: "danger",  // alert's type
                message: "js error",  // alert's message
                close: true, // make alert closable
                reset: true, // close all previouse alerts first
                focus: false, // auto scroll to the alert after shown
                closeInSeconds: 0, // auto close after defined seconds
                icon: ""// put icon before the message
            });
        }
    });
}


//获取展会 - del
function get_events_category() {

    $.ajax({
        dataType: 'json',
        type: "post",
        data: {

        },
        url: "/PageAJAX/Common.ashx?action=index_events_list",
        beforeSend: function () {
            $("#events_Container").html(loading_sk);
        },
        success: function (data) {
            //console.log(data.data);

            $("#events_Container").html("");
            if (data.status == 1) {
                var htmlContent = template("template_events_list", data);
                $("#events_Container").html(htmlContent);




                $("#events_Container .thumbnail").each(function (i, item) {
                    $(this).removeClass("selected");
                });
                //随机数
                var randSelect = parseInt((data.data.length - 1) * Math.random());
                //设置随机选中
                $("#events_Container .thumbnail:eq(" + randSelect + ")").addClass("selected");





                var eventsid = "";
                if ($("#events_Container .selected").length > 0) {
                    eventsid = $("#events_Container .selected").attr("data-autoid");
                }
                get_events_product(eventsid);



                //tab change
                $("#events_Container .thumbnail").click(function () {
                    $("#events_Container .thumbnail").each(function (i, item) {
                        $(this).removeClass("selected");
                    });
                    $(this).addClass("selected");

                    get_events_product($(this).attr("data-autoid"));
                });





            } else {
                App.alert({
                    container: "#events_Container", // alerts parent container(by default placed after the page breadcrumbs)
                    place: "prepent", // append or prepent in container 
                    type: "danger",  // alert's type
                    message: data.message,  // alert's message
                    close: true, // make alert closable
                    reset: true, // close all previouse alerts first
                    focus: false, // auto scroll to the alert after shown
                    closeInSeconds: 0, // auto close after defined seconds
                    icon: ""// put icon before the message
                });
            }




        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $("#events_Container").html("");
            App.alert({
                container: "#events_Container", // alerts parent container(by default placed after the page breadcrumbs)
                place: "prepent", // append or prepent in container 
                type: "danger",  // alert's type
                message: "js error",  // alert's message
                close: true, // make alert closable
                reset: true, // close all previouse alerts first
                focus: false, // auto scroll to the alert after shown
                closeInSeconds: 0, // auto close after defined seconds
                icon: ""// put icon before the message
            });
        }
    });


}

//加载推荐产品
function get_events_product(eventsid) {
    $.ajax({
        dataType: 'json',
        type: "post",
        data: {
            eventsid: eventsid
        },
        url: "/PageAJAX/Common.ashx?action=index_product_list",
        beforeSend: function () {
            $("#product_Container").html(loading_sk);
        },
        success: function (data) {
            //console.log(data);
            $("#product_Container").html("");
            if (data.status == 1) {
                var htmlContent = template("template_product_list", data);
                $("#product_Container").html(htmlContent);

                //添加到我的收藏
                $(".btn_product_addfavorite").click(function () {
                    var productid = $(this).data("autoid");
                    $.ajax({
                        dataType: 'json',
                        type: "post",
                        url: "/PageAJAX/Product.ashx?action=addproductfavorite",
                        beforeSend: function () {

                        },
                        data: {
                            productid: productid,
                            linkurl: window.location.href,//链接
                        },
                        success: function (data) {       //完成
                            //成功
                            if (data.status == "1") {
                                toastr.success(data.message);

                            } else if (data.status == "2") {
                                toastr.warning(data.message);

                            } else {
                                toastr.error(data.message);
                            }

                            return false;
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            toastr.error(errorThrown);
                            return false;
                        }
                    });
                });
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $("#product_Container").html("");
        }
    });
}
//议程视频
function get_ProgramVideo() {

    $.ajax({
        dataType: 'json',
        type: "post",
        data: {
           // eventsid: eventsid
        },
        url: "/PageAJAX/Common.ashx?action=index_program_video",
        beforeSend: function () {

            $("#video_Container").html(loading_sk);
        },
        success: function (data) {
            if (data.status == 1) {
                //  console.log(data.data);
                if (data.data.length > 0) {
                    var htmlContent = template("template_video", data);
                    $("#video_Container").html(htmlContent);


                    //倒计时
                    //$(".showtime").each(function () {
                    //    var time = $(this).data("date");
                    //    var autoid = $(this).data("autoid");
                    //    showtime(autoid, time);
                    //});

                }
                else {
                    $("#video_Container").html(nodata);
                }
            } else {
                $("#video_Container").html("<div class=\"alert alert-danger\">" + data.message + "</div>");
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $("#video_Container").html("<div class=\"alert alert-danger\">" + errorThrown + "</div>");
        }
    });
}
function showtime(autoid,begintime) {
    var b = new Date;
    var b = -b.getTimezoneOffset() / 60;
    var i = moment(begintime).format("YYYY/MM/DD HH:mm:ss");

    var config = {
        timeText: i, //倒计时时间
        style: "flip", //显示的样式，可选值有flip,slide,metal,crystal
        timeZone: b, //时区
        color: "black", //显示的颜色，可选值white,black
        width: $("#video_" + autoid).width() - 20, //倒计时宽度
        textGroupSpace: 15, //天、时、分、秒之间间距
        textSpace: 0, //数字之间间距
        reflection: 0, //是否显示倒影
        reflectionOpacity: 10, //倒影透明度
        reflectionBlur: 0, //倒影模糊程度
        dayTextNumber: 3, //倒计时天数数字个数
        displayDay: !0, //是否显示天数
        displayHour: !0, //是否显示小时数
        displayMinute: !0, //是否显示分钟数
        displaySecond: !0, //是否显示秒数
        displayLabel: 1, //是否显示倒计时底部label
        onFinish: function () { }
    };
    $("#countdown_" + autoid).jCountdown(config);

}




//近期推荐展会
function get_events_upcoming() {
    $.ajax({
        dataType: 'json',
        type: "post",
        data: {
           limit:8
        },
        url: "/PageAJAX/Common.ashx?action=index_events_upcoming",
        beforeSend: function () {
            $("#list_Upcoming").html(loading_sk);
        },
        success: function (data) {
     
            if (data.status == 1) {
                var htmlContent = template("template_upcoming", data);
                $("#list_Upcoming").html(htmlContent);

                for (var i = 0; i < data.data.length; i++) {

                    var events_id=data.data[i].CE_AUTOID;
                    get_events_upcoming_exhibitor(events_id, $("#list_upcoming_exhibitor_" + events_id));

                    $("#btn_refresh_events_" + events_id).click(function () {
                        var autoid = $(this).attr("data-autoid");
                        get_events_upcoming_exhibitor(autoid, $("#list_upcoming_exhibitor_" + autoid));
                    });
                }

               


            } else {
                $("#list_Upcoming").html("");
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $("#list_Upcoming").html("<div class=\"alert alert-danger\">" + errorThrown + "</div>");
        }
    });
}


//展会右侧  推荐展商
function get_events_upcoming_exhibitor(eventsid,listContainer) {

    $.ajax({
        dataType: 'json',
        type: "post",
        data: {
            eventsid: eventsid
        },
        url: "/PageAJAX/Common.ashx?action=index_events_recommendexhibitor",
        beforeSend: function () {

            listContainer.html(loading_sk);
        },
        success: function (data) {
         
            if (data.status == 1) {
                if (data.data.list.length > 0) {
                    var htmlContent = template("template_upcoming_exhibitor", data.data);
                    listContainer.html(htmlContent);    
          

                    //加载产品
                    for (var i = 0; i < data.data.list.length; i++) {
                        get_events_upcoming_exhibitor_product(eventsid,data.data.list[i].CEE_AUTOID, $("#exhibitor_product_" + data.data.list[i].CEE_AUTOID));
                    }




          

                }
                else {
                    listContainer.html(nodata);
                }
            } else {
                listContainer.html("<div class=\"alert alert-danger\">" + data.message + "</div>");
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
           
            listContainer.html("<div class=\"alert alert-danger\">" + errorThrown + "</div>");
        }
    });
}

//加载展商产品列表
function get_events_upcoming_exhibitor_product(eventsid,exhibitorid,listContainer) {
   
    $.ajax({
        type: "post",
        url: "/PageAJAX/Exhibitor.ashx?action=getexhibitorproductlist",
        dataType: 'json',
        data: {
            exhibitorid: exhibitorid,
            shownum: 2,
        },
        beforeSend: function () {
            listContainer.html(loading_sk);
        },
        success: function (data) {
            if (data.status == 1) {
                var dataItem = data.data;
                // console.log(data.data);
                if (dataItem.length > 0) {
                    //使用模板
                    var productBox = template("template_upcoming_exhibitor_product", data);
                    listContainer.html(productBox);


                    var swiper = new Swiper('#swiper_exhibitor_' + eventsid, {
                        loop: true, // 循环模式选项
                        autoplay: {
                            delay: 10000
                        },//可选选项，自动滑动
                        cssWidthAndHeight: true,
                        roundLengths: true,
                        freeMode: true,
                        slidesPerView: 2,
                        spaceBetween: 20,
                        observer: true,//修改swiper自己或子元素时，自动初始化swiper
                        observeParents: true,//修改swiper的父元素时，自动初始化swiper
                        navigation: {
                            nextEl: '.swiper-button-next',
                            prevEl: '.swiper-button-prev',
                        },
                        pagination: {
                            el: '.swiper-pagination',
                        },
                    });



                } else {
                  
                    //暂无数据
                    listContainer.html('');
                }

            } else {
              
                listContainer.html("<div class=\"alert alert-danger\">" + data.message + "</div>");
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {          
            listContainer.html("<div class=\"alert alert-danger\">" + errorThrown + "</div>").show();
        }
    });
}
