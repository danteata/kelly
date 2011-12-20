//= require application
//= require active_admin/base

$(function() {
  jQuery.noConflict();
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
  $("#activity_equipment_token").tokenInput("/equipment.json", {
      prePopulate: $("#activity_equipment_token").data("pre"),
      tokenLimit: 1,
      theme: "facebook"
    });
  $("#activity_employee_token").tokenInput("/drivers.json", {
      prePopulate: $("#activity_employee_token").data("pre"),
      tokenLimit: 1,
      theme: "facebook"
    });
  $("#activity_supervisor_token").tokenInput("/drivers.json", {
      prePopulate: $("#activity_employee_token").data("pre"),
      tokenLimit: 1,
      theme: "facebook"
    });
});
