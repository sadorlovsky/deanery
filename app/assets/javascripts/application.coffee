#= require jquery
#= require jquery_ujs
#= require jquery.turbolinks
#= require jquery-fileupload/basic
#= require bootstrap-sprockets
#= require fileinput
#= require fileinput_locale_ru
#= require bootstrap-switch
#= require bootstrap-datepicker
#= require bootstrap-datepicker.ru.min
#= require bootstrap3-typeahead
#= require bootstrap-editable
#= require data-confirm-modal
#= require validator
#= require inputmask
#= require nprogress
#= require nprogress-turbolinks
#= require table-fixed-header
#= require_tree .
#= require turbolinks

NProgress.configure
  showSpinner: false

dataConfirmModal.setDefaults
  title: 'Подтверждение'
  commit: 'Да'
  cancel: 'Отмена'

$ ->
  $('[data-toggle="tooltip"]').tooltip()

  $('[type="checkbox"]').bootstrapSwitch
    onText: "Да"
    onColor: "success"
    offText: "Нет"

  $('form').validator
    delay: 200

  $('.datepicker').datepicker
    language: "ru"

  $('table.timetable td').hover(
    -> $(this).find('.add-lesson').show()
    -> $(this).find('.add-lesson').hide()
    )

