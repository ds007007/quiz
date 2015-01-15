// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(
	function(){
		$("#ask_form").on("ajax:success", function(e, data, status, xhr){
			alert(data['right'] + " правильных ответов из " + data['count'] + " (" + 
				(data['right'] * 100 / data['count']).toFixed(0) + "%)")
		});
		$("#ask_form").on("ajax:error", function(e, xhr, status, error){
			alert("Ошибка: " + error);
		});
	}
);