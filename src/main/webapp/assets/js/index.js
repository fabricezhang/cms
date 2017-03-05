$(window).scroll(function () {
    pageInitModule.setScrollToTop();
});

/*
* init page when page load
*/
var pageInitModule = (function (mod) {
    mod.setScrollToTop = function () {
        var top = $(window).scrollTop();
        if (top < 60) {
            $('#goTop').hide();
        } else {
            $('#goTop').show();
        }
    };
    return mod;
})(window.pageInitModule || {});

$(function () {
    $("#owl-demo").owlCarousel({
        autoPlay: true,
        items: 1,
        singleItem: true,
        itemsScaleUp: true,
    });
    qrcodeID = document.getElementById("qrcode");
    qrcode = new QRCode(qrcodeID, {
        text: document.URL,
        colorDark : "cornflowerblue",
        height:qrcodeID.offsetWidth,
        width: qrcodeID.offsetWidth,
        colorLight : "#ffffff",
        correctLevel : QRCode.CorrectLevel.H
    });
});


window.onresize = function(){
    $('#qrcode').empty();
    new QRCode(qrcodeID, {
        text: document.URL,
        colorDark : "cornflowerblue",
        height: qrcodeID.offsetWidth,
        width: qrcodeID.offsetWidth,
        colorLight : "#ffffff",
        correctLevel : QRCode.CorrectLevel.H
    });
}
