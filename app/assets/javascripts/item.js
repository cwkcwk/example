$(function () {
    $('.links').click(function () {
        blueimp.Gallery($(this).find('a'), {event: event || window.event, index: event.target.src});
    })
});