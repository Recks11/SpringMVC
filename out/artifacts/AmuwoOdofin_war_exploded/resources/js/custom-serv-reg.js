/**
 * Created by Ijiekhuamen Rex on 2/11/2017.
 */
var features = "status=yes,toolbar=no,scrollbars=yes,titlebar=no,menubar=no,resizable=yes,width=640,height=480,directories=no,location=no";

(function ($) {

    // Add smooth scrolling to all links in navbar
 /*   $(".navbar a,a.btn-appoint, .quick-info li a, .overlay-detail a").on('click', function(event) {
        event.preventDefault();
        var hash = this.hash;
        $('html, body').animate({
            scrollTop: $(hash).offset().top
        }, 900, function(){
            window.location.hash = hash;
        });
    });
*/
    $(window).scroll(function() {
        if ($(".off-nav").offset().top > 500) {
            $(".navbar-fixed-top").addClass("top-nav-collapse");
        } else {
            $(".navbar-fixed-top").removeClass("top-nav-collapse");
        }
    });

})(jQuery);



function clickop(a){
    window.open(a,"_blank",features);
}
