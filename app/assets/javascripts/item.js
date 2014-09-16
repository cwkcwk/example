$(function () {
    $('.gallery-item').click(function () {
        blueimp.Gallery($(this), {event: event || window.event, index: event.target.src});
    })
});