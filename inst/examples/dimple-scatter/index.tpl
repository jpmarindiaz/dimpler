<!-- UCNN -->
<div id="chartContainer">
  <script src="http://d3js.org/d3.v3.min.js"></script>
  <script src="http://dimplejs.org/dist/dimple.v1.1.5.min.js"></script>
  <script type="text/javascript">
    var svg = dimple.newSvg("#chartContainer", 590, 400);
    var data = {{{data}}}
    var myChart = new dimple.chart(svg, data);
    myChart.setBounds(60, 30, 510, 305)
    myChart.addMeasureAxis("x", "value1");
    myChart.addMeasureAxis("y", "value2");
    myChart.addSeries(["id","category2"], dimple.plot.bubble);
    myChart.addLegend(60, 10, 510, 20, "right");
    myChart.draw();

        // myChart.addMeasureAxis("x", "Unit Sales");
        // myChart.addMeasureAxis("y", "Operating Profit");
        // myChart.addSeries(["SKU", "Channel"], dimple.plot.bubble);
        // myChart.addLegend(200, 10, 360, 20, "right");
        // myChart.draw();
  </script>
</div>