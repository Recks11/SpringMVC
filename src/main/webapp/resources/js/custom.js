/**
 * Created by Ijiekhuamen Rex on 2/11/2017.
 */
var features = "status=yes,toolbar=no,scrollbars=yes,titlebar=no,menubar=no,resizable=yes,width=640,height=480,directories=no,location=no";
(function ($) {


    $(window).scroll(function() {
        if ($(".navbar-inverse").offset().top > 650) {
            $(".navbar-fixed-top").addClass("top-nav-collapse");
        } else {
            $(".navbar-fixed-top").removeClass("top-nav-collapse");
        }
    });
})(jQuery);

function clickop(a){
    window.open(a,"_blank",features);
}
