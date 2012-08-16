// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready(function(){function e(e){var t=e.coords.latitude,n=e.coords.longitude;$("input#transaction_lat").val(t),$("input#transaction_long").val(n)}function t(e){}$(function(){navigator.geolocation&&navigator.geolocation.getCurrentPosition(e,t)})});