# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("div#rect").hover(
    ->
      TweenMax.to @, 0.5,
        scale: 1.2,
        ease: Power2.easeInOut
    ->
      TweenMax.to @, 0.5,
        scale: 1,
        ease: Power2.EaseInOut
  )

  $("div#btn").hover(
    ->
      TweenMax.to @, 0.5,
        scale: 1.1,
        ease: Power2.easeInOut
    ->
      TweenMax.to @, 0.5,
        scale: 1,
        ease: Power2.EaseInOut
  )
  
  $("div#rect").on 'click', ->
    TweenMax.to "div#block", 0.3,
      y: 50,
      yoyo: true,
      repeat: 1,
      ease: Power2.easeInOut