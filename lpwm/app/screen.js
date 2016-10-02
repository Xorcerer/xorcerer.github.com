(function () {
    var resize = function (event) {
        var w = window, d = document, e = d.documentElement, g = d.getElementsByTagName('body')[0], x = w.innerWidth || e.clientWidth || g.clientWidth, y = w.innerHeight || e.clientHeight || g.clientHeight;
        var divs = document.getElementsByClassName("pic-bg");
        for (var i = 0; i < divs.length; i++) {
            var div = divs[i];
            div.style.width = x.toString() + "px";
            div.style.height = y.toString() + "px";
        }
        var containers = document.getElementsByClassName("billboard-container");
        for (var i = 0; i < containers.length; i++) {
            var container = containers[i];
            var boards = container.getElementsByClassName('billboard');
            for (var j = 0; j < boards.length; j++) {
                var board = boards[j];
                var offsetValue = board.getAttribute('data-offset');
                var properties = eval("({" + offsetValue + "})");
                board.style.setProperty('top', (y * properties.top).toString() + "px");
                board.style.setProperty('left', (x * properties.left).toString() + "px");
            }
        }
    };
    resize(null);
    window.addEventListener("resize", resize);
})();
//# sourceMappingURL=screen.js.map