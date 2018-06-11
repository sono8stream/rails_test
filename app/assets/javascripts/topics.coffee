# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("div#rect").on 'click', (e)->
    rect=$(e.target)
    x=e.pageX-rect.position().left
    y=e.pageY-rect.position().top
    block=$("<div class='block' style='left: #{x}px; top: #{y}px;' />").
      draggable(containment: "parent").css(position: "absolute")
    rect.append(block)