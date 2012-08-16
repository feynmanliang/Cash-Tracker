# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# Get GeoLocation
$(document).ready ->
  location() ->
    if navigator.geolocation
      navigator.geolocation.getCurrentPosition(successFunction, errorFunction)
    else
      # Error, geolocation not possible

  successFunction(position) ->
    lat = position.coords.latitude
    lot = position.coords.longitude
    $('input#transaction_lat').val(lat)
    $('input#transaction_long').val(lot)

  errorFunction(position) ->
      # Error, location not possible


