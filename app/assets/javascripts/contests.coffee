# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

showResults = ->
  $('.result').hide()
  delay = 0
  $('.result').each (index, element) =>
    $(element).delay(delay).show('slow')
    delay = delay + 10000

@showAllResults = ->
  $('.result').stop(true, true)
  $('.result').show()

ready = ->
  showResults()

$(document).ready(ready)
$(document).on('page:load', ready)