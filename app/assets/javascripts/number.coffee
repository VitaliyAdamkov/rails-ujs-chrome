# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

NumberChange = (event) ->
  console.log @.value
  # $(@).attr('readonly', true)
  $('#submit').click()
  false

$(document).on 'turbolinks:load', ->
  console.log 'test'
  # $('#test_number').change NumberChange
  $('#test_number').bind('input', NumberChange)
