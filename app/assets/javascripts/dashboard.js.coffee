# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("#pie_alumnos_por_maestria").highcharts
    chart:
      plotBackgroundColor: null
      plotBorderWidth: null
      plotShadow: false

    title:
      text: "Total alumnos por maestria registrados"

    tooltip:
      pointFormat: "{series.name}: <b>{point.percentage:.1f}%</b>"

    plotOptions:
      pie:
        allowPointSelect: true
        cursor: "pointer"
        dataLabels:
          enabled: true
          color: "#000000"
          connectorColor: "#000000"
          format: "<b>{point.name}</b>: {point.percentage:.1f} %"

    series: [
      type: "pie"
      name: "Browser share"
      data: [["Firefox", 45.0], ["IE", 26.8],
        name: "Chrome"
        y: 12.8
        sliced: true
        selected: true
      , ["Safari", 8.5], ["Opera", 6.2], ["Others", 0.7]]
    ]