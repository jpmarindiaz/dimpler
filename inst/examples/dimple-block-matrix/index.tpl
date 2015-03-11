<!-- CCC -->
<div id="chartContainer">
  <script src="http://d3js.org/d3.v3.min.js"></script>
  <script src="http://dimplejs.org/dist/dimple.v1.1.5.min.js"></script>
  <script type="text/javascript">
    var svg = dimple.newSvg("#chartContainer", 590, 400);
    var data = {{{data}}}
    var myChart = new dimple.chart(svg, data);
    myChart.setBounds(60, 30, 510, 305)
    var x = myChart.addCategoryAxis("x", ["category2","category1"]);
    // x.addOrderRule("order");
    myChart.addCategoryAxis("y", "category3");
    myChart.addSeries("category3", dimple.plot.bar);
    myChart.addLegend(60, 10, 510, 20, "right");
    myChart.draw();

  </script>
</div>


  </script>
</div>