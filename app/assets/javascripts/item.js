$(function () {
    $('.links').click(function () {
        blueimp.Gallery($(this).find('.gallery-item'), {event: event || window.event, index: event.target.src});
    })
});