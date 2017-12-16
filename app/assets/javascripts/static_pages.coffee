# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#reports').DataTable 'lengthMenu': [
    [
      20
      50
      100
      -1
    ]
    [
      20
      50
      100
      'All'
    ]
  ]
  return