# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# Get GeoLocation
$ ->
  location = ->
    if (navigator.geolocation)
      navigator.geolocation.getCurrentPosition(successFunction, errorFunction)
    else
      # Error, geolocation not possible

  successFunction = (position) ->
    lat = position.coords.latitude
    lot = position.coords.longitude
    $('input#transaction_lat').val(lat)
    $('input#transaction_long').val(lot)

  errorFunction = (position) ->
    # Error, location not possible
  location()

# HighCharts
$ ->
  new Highcharts.Chart
    chart:
      renderTo: "transactions_chart"
    title:
      text: "Orders by Day"
    xAxis:
      type: "datetime"
    yAxis:
      title:
        text: "Dollars"
    series: [
      data: [1,2,5,7,3]
    ]
