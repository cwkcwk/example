$(function(){
    initEachSlider();
});

function initEachSlider() {
    $('.links').each(function(){
        initSlider(this);
    })
}

function initSlider(collection){
    collection.onclick = function (event) {
        event = event || window.event;
        var target = event.target || event.srcElement,
            link = target.src ? target.parentNode : target,
            options = {index: link, event: event},
            links = this.getElementsByTagName('a');
        blueimp.Gallery(links, options);
    };
}