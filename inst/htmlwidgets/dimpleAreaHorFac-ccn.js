HTMLWidgets.widget({

  name: 'dimpleAreaHorFac-ccn',
  type: 'output',

  initialize: function(el, width, height) {
    d3.select(el).append("div")
            .attr("id","chartContainer")
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

    var x = myChart.addCategoryAxis("x", [colNames[0],colNames[1]]);
    x.addOrderRule(colNames[1]);
    // x.addGroupOrderRule(colNames[0]);
    myChart.addMeasureAxis("y", colNames[2]);
    var s = myChart.addSeries(colNames[0], dimple.plot.area);
    s.lineWeight = 3;
    s.barGap = 0.05;
    myChart.addLegend(60, 10, 510, 20, "right");
    myChart.draw();

  },

  resize: function(el, width, height, instance) {

    d3.select(el).select("svg")
      .attr("width", width)
      .attr("height", height);

    instance.draw(0, true);
  }

});
