HTMLWidgets.widget({

  name: 'dimplePoints-ccc',
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
    
    var y = myChart.addCategoryAxis("y",colNames[0]);
    var x = myChart.addCategoryAxis("x", colNames[1]);
    var s = myChart.addSeries(colNames[2], dimple.plot.bubble);
    s.stacked = false;
   
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
