// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(function() {
  $("#fuel_intake_fuel_token").tokenInput("/fuels.json", {
      prePopulate: $("#fuel_intake_fuel_token").data("pre"),
      tokenLimit: 1,
      theme: "facebook"
    });
  $("#fuel_intake_equipment_token").tokenInput("/equipment.json", {
      prePopulate: $("#fuel_intake_equipment_token").data("pre"),
      tokenLimit: 1,
      theme: "facebook"
    });
  $("#fuel_intake_employee_token").tokenInput("/drivers.json", {
      prePopulate: $("#fuel_intake_employee_token").data("pre"),
      tokenLimit: 1,
      theme: "facebook"
    });
});
