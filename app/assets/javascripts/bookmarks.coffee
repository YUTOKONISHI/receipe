# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

bookmark_icon = ->
  $("#bookmark-link").click ->
    $(this).children('i').toggleClass('fa-bookmark-o')

$(document).on('page:change', bookmark_icon)
