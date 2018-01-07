# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  monthNames = [
    'January'
    'February'
    'March'
    'April'
    'May'
    'June'
    'July'
    'August'
    'September'
    'October'
    'November'
    'December'
  ]
  currentDate = new Date
  day = currentDate.getDate()
  month = currentDate.getMonth()
  year = currentDate.getFullYear()
  hour = currentDate.getHours()
  minute = currentDate.getMinutes()
  second = currentDate.getSeconds()
  d = day + '-' + monthNames[month] + '-' + year + '_' + hour + '-' + minute + '-' + second
  table = $('#reports').DataTable(
    'buttons': [
      {
        extend: 'print'
        exportOptions: columns: ':visible'
      }
      {
        extend: 'excel'
        title: d + '-violation-report'
        exportOptions: columns: ':visible'
      }
      {
        extend: 'pdf'
        title: d + '-violation-report'
        exportOptions: columns: ':visible'
      }
      'colvis'
    ]
    'order': [ [
      1
      'asc'
    ] ]
    'lengthMenu': [
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
    ])
  table.buttons().container().appendTo $('div.eight.column:eq(0)', table.table().container())
  return