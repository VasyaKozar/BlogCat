// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require tinymce-jquery
//= require rails-ujs
//= require turbolinks
//= require_tree .

var size = 20;
cutDes = $('.cutdes'),
nextCut = cutDes.text();

if(nextCut.length > size){
  cutDes.text(nextCut.slice(0,size) + '...');
  }

  var size = 20;
  chlen = $('.chlen'),
  bigdick = chlen.text();

  if(bigdick.length > size){
    chlen.text(bigdick.substring(0,size) + '...');
    }