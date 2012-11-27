# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  setup_tooltips()
  

setup_tooltips -> 
  tip = null
  $(".tl_tip").hover( ->
    # caching the tooltip and remove it from the container
    # then attach it to the body
    tip = $(this).find('.tip').remove()
    $('body').append(tip)
    # show tooltip
    tip.delay(1300).fadeIn()    # show tooltip
  , ->
    if tip isnt null
      tip.hide().remove()       # hide and remove from body
      $(this).append tip        # Return the tip to its original position
  ).mousemove (e) ->
    if tip isnt null
      mousex = e.pageX + 20     # get x coordinates
      mousey = e.pageY + 20     # get y coordinates
      tipWidth = tip.width()    # find width of tooltip
      tipHeight = tip.height()  # find height of tooltip
      
      # Distance of element from the right edge of viewport
      tipVisX = $(window).width() - (mousex + tipWidth)
      # Distance of element from the bottom of viewport
      tipVisY = $(window).height() - (mousey + tipHeight)
      
      if tipVisX < 20
        # if tooltip exceeds the X coordinate of viewport
        mousex = e.pageX - tipHeight - 20
        $(this).find('.tip').css
          top: mousey
          left: mousex
      if tipVisY < 20
        # if tooltip exceeds the Y coordinate of viewport
        mousey = e.pageY - tipHeight - 20
        tip.css
          top: mousey
          left: mousex
      else
        # absolute position the tooltip according to mouse position
        tip.css
          top: mousey
          left: mousex
        