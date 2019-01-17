# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "click", "div.ransack-pagination a", (event) ->
  pageNum = $(this).attr("href").match(/page=([0-9]+)/)[1]
  $('.ransack-page').val(pageNum)
  $('form.ransack-form').submit()
  event.preventDefault() 

