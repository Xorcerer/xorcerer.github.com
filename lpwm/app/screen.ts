interface IBillBottomOffset {
    top: number;
    left: number;
}

(function () {
    const resize = (event: UIEvent) => {
        var w = window,
            d = document,
            e = d.documentElement,
            g = d.getElementsByTagName('body')[0],
            x = w.innerWidth || e.clientWidth || g.clientWidth,
            y = w.innerHeight || e.clientHeight || g.clientHeight;

        var updateSize = (className: string) => {
            const divs = document.getElementsByClassName(className);

            for (let i = 0; i < divs.length; i++) {
                const div = divs.item(i) as HTMLElement;
                div.style.width = x.toString() + "px";
                div.style.height = y.toString() + "px";
            }

        }
        updateSize("pic-bg");

        const containers = document.getElementsByClassName("billboard-container");

        for (let i = 0; i < containers.length; i++) {
            const container = containers[i] as HTMLElement;

            const boards = container.getElementsByClassName('billboard');

            for (let j = 0; j < boards.length; j++) {
                const board = boards[j] as HTMLElement;
                const offsetValue = board.getAttribute('data-offset');
                const properties = eval(`({${offsetValue}})`) as IBillBottomOffset;
                board.style.setProperty('top', (y * properties.top).toString() + "px");
                board.style.setProperty('left', (x * properties.left).toString() + "px");
            }
        }

    };
    resize(null);
    window.addEventListener("resize", resize);
})();