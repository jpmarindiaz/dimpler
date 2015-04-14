HTMLWidgets.widget({

    name: 'dimplePie-cccn',
    type: 'output',

    initialize: function(el, width, height) {
        d3.select(el).append("div")
            .attr("id", "chartContainer")
            .attr("width", width)
            .attr("height", height);
        var svg = dimple.newSvg("#chartContainer", width, height);
        var data = []
        var myChart = new dimple.chart(svg, data);
        return myChart
    },

    renderValue: function(el, x, instance) {

        var myChart = instance;
        myChart.data = x.data;
        var colNames = x.colNames
        myChart.setMargins("15%", "15%", "15%", "15%");

        var x = myChart.addCategoryAxis("x", colNames[0]);
        var y = myChart.addCategoryAxis("y", colNames[1]);
        var z = myChart.addMeasureAxis("p", colNames[3]);
        var s = myChart.addSeries(colNames[2], dimple.plot.pie);

        s.radius = 25;


        myChart.addLegend(20, 20, 500, 30, "left");
        myChart.draw();

    },

    resize: function(el, width, height, instance) {

        d3.select(el).select("svg")
            .attr("width", width)
            .attr("height", height);

        instance.draw(0, true);
    }

});
