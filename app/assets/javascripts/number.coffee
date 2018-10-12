# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

NumberChange = (event) ->
  console.log $(@).attr('id') + ' - ' + @.value
  $(@).attr('readonly', true) if $(@).attr('id') == 'left_number'
  $(@).next().click()
  false

$(document).on 'turbolinks:load', ->
  console.log 'loaded'
  # $('#test_number').change NumberChange
  $('input[type="number"]').bind('input', NumberChange)

# $ ->
#   console.log 'loaded'
#   # $('#test_number').change NumberChange
#   $('input[type="number"]').bind('input', NumberChange)
