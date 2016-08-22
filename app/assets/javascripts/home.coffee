# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
maxtime = 100 # 100*100ms = 10s
time_unit = 100

countDown = ->
  cd = setInterval ->
    if maxtime < 0
      $('.game_field').empty()
      $('.game_field').append('<h1><a href="/">처음으로</a></h1>')
      clearInterval()
      clearInterval cd
    else
      $('h1#countdown').html("#{Math.floor(maxtime/10)}:#{maxtime%10}")
      maxtime -= 1
    return
  , time_unit
  return

$ ->
  if $('h1#countdown').length
    countDown()
  return
