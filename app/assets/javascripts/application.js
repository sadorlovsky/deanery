// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require jquery-fileupload/basic
//= require bootstrap-sprockets
//= require fileinput
//= require fileinput_locale_ru
//= require bootstrap-switch
//= require bootstrap-datepicker
//= require bootstrap3-typeahead
//= require data-confirm-modal
//= require validator
//= require inputmask
//= require nprogress
//= require nprogress-turbolinks
//= require_tree .
//= require turbolinks

NProgress.configure({
  showSpinner: false
});

$(function () {
  $('[data-toggle="tooltip"]').tooltip();

  $('[type="checkbox"]').bootstrapSwitch({
    onText: "Да",
    onColor: "success",
    offText: "Нет"
  });

  dataConfirmModal.setDefaults({
    title: 'Подтверждение',
    commit: 'Да',
    cancel: 'Отмена'
  });

  $('form').validator({
    delay: 200
  });

});
