function _lo() {
    $('body').append('<div id="overlay">&nbsp;</div>');
}
function _ho() {
    $('#overlay').remove();
}

$(window).scroll(function () {
    var sticky = $('#cartarea');
    if (sticky) {
        var scroll = $(window).scrollTop();

        if (scroll >= 45) { sticky.css({ position: 'fixed', top: ($(window).height() / 2) - 50, right: 0, 'z-index': 1, 'background-color': 'white' }); }
        else { sticky.removeAttr('style'); }
    }
});
$(document).ready(function () {
    $('.chkdelete').click(function (e) {
        $('.chk_del').attr({ 'checked': 'checked' });
    });
});