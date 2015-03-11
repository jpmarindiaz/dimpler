HTMLWidgets.widget({

  name: 'dimplePie-cn',
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
    
    // var y = myChart.addCategoryAxis("y",colNames[0]);
    var x = myChart.addMeasureAxis("p", colNames[1]);
    myChart.addSeries(colNames[0], dimple.plot.pie);
    myChart.addLegend(20, 20, 500, 30, "left");
    // myChart.addLegend(500, 20, 90, 300, "left");
    myChart.draw();

  },

  resize: function(el, width, height, instance) {

    d3.select(el).select("svg")
      .attr("width", width)
      .attr("height", height);

    instance.draw(0, true);
  }

});
