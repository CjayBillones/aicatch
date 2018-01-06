// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.purr
//= require best_in_place
//= require semantic-ui
//= require moment
//= require jquery.dataTables.min
//= require dataTables.semanticui.min
//= require dataTables.buttons.min
//= require buttons.semanticui.min
//= require jszip.min
//= require pdfmake.min
//= require vfs_fonts
//= require buttons.html5.min
//= require buttons.print.min
//= require buttons.colVis.min
//= require_tree .

var datetime = null,
        date = null;

var update = function () {
    date = moment(new Date())
    datetime.html(date.format('dddd, MMMM D YYYY, h:mm:ss a'));
};

$(document).ready(function(){
    datetime = $('#datetime')
    update();
    setInterval(update, 1000);
});
