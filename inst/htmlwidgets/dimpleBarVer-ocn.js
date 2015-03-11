HTMLWidgets.widget({

  name: 'dimpleBarVer-ocn',
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
    //myChart.setBounds(60, 30, 510, 305)
    myChart.setMargins("15%", "15%", "15%", "15%");
    var x = myChart.addCategoryAxis("x", colNames[1]);
    x.addOrderRule(colNames[0]);
    var y = myChart.addMeasureAxis("y", colNames[2]);
    myChart.addSeries(null, dimple.plot.bar);
    myChart.draw();
  },

  resize: function(el, width, height, instance) {

    d3.select(el).select("svg")
      .attr("width", width)
      .attr("height", height);

    instance.draw(0, true);
  }

});
