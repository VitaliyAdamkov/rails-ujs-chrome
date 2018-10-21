# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

NumberChange = (event) ->
  console.log $(@).attr('id') + ' - ' + @.value
  # $(@.form).children('fieldset')[0].attr('readonly', true) if $(@).attr('id') == 'left_number'
  $(@).next().click()
  $(@.form).children('fieldset').attr('disabled', true) if $(@).attr('id') == 'left_number'
  false

$(document).on 'turbolinks:load', ->
  console.log 'loaded'
  # $('#test_number').change NumberChange
  $('input[type="number"]').bind('input', NumberChange)

# $ ->
#   console.log 'loaded'
#   # $('#test_number').change NumberChange
#   $('input[type="number"]').bind('input', NumberChange)
