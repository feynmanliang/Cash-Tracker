// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready(function() {
  $(function location()
    {
      //alert("here in loc1233");
      if (navigator.geolocation){navigator.geolocation.getCurrentPosition(successFunction, errorFunction);
      } 
      else {
        // Error, geolocation not possible
      }
    });    //showmap
  function successFunction(position) {
    var lat = position.coords.latitude;
    var lot = position.coords.longitude;
    //alert('Your location coordinates are: Latitude:'+lat+' Longitude: '+lot);
    $('input#transaction_lat').val(lat);
    $('input#transaction_long').val(lot);
  }
  function errorFunction(position){
    // Error, location not possible
  }
});

