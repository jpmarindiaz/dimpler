<!-- OCN -->
<div id="chartContainer">
  <script src="http://d3js.org/d3.v3.min.js"></script>
  <script src="http://dimplejs.org/dist/dimple.v1.1.5.min.js"></script>
  <script type="text/javascript">
    var svg = dimple.newSvg("#chartContainer", 590, 400);
    var data = {{{data}}}
    var myChart = new dimple.chart(svg, data);
    myChart.setBounds(60, 30, 510, 305)
    var x = myChart.addCategoryAxis("x", "b");
    x.addOrderRule("a");
    myChart.addMeasureAxis("y", "c");
    myChart.addSeries(null, dimple.plot.bar);
    myChart.draw();
    x.titleShape.text("X");
  </script>
</div>