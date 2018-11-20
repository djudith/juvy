$(document).ready(function () {
    $('.modal').modal();
    $('.home-tabs').tabs({
        // 'swipeable': true,
        'onShow': function(f){
            $('.brand-logo').html($(f).data('page'))
        },
    });
    $('.sidenav').sidenav();
});