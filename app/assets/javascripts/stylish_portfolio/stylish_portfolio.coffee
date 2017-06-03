$(document).ready ->
  $('#menu-close').click (e) ->
    e.preventDefault()
    $('#sidebar-wrapper').toggleClass 'active'
    return
  # Opens the sidebar menu
  $('#menu-toggle').click (e) ->
    e.preventDefault()
    $('#sidebar-wrapper').toggleClass 'active'
    return
  # Scrolls to the selected menu item on the page
  $ ->
    $('a[href*=\\#]:not([href=\\#])').click ->
      if location.pathname.replace(/^\//, '') == @pathname.replace(/^\//, '') or location.hostname == @hostname
        target = $(@hash)
        target = if target.length then target else $('[name=' + @hash.slice(1) + ']')
        if target.length
          $('html,body').animate { scrollTop: target.offset().top }, 1000
          return false
      return
    return
  return
fixed = false
$(document).scroll ->
  if $(this).scrollTop() > 250
    if !fixed
      fixed = true
      # $('#to-top').css({position:'fixed', display:'block'});
      $('#to-top').show 'slow', ->
        $('#to-top').css
          position: 'fixed'
          display: 'block'
        return
  else
    if fixed
      fixed = false
      $('#to-top').hide 'slow', ->
        $('#to-top').css display: 'none'
        return
  return

onMapMouseleaveHandler = (event) ->
  that = $(this)
  that.on 'click', onMapClickHandler
  that.off 'mouseleave', onMapMouseleaveHandler
  that.find('iframe').css 'pointer-events', 'none'
  return

onMapClickHandler = (event) ->
  that = $(this)
  # Disable the click handler until the user leaves the map area
  that.off 'click', onMapClickHandler
  # Enable scrolling zoom
  that.find('iframe').css 'pointer-events', 'auto'
  # Handle the mouse leave event
  that.on 'mouseleave', onMapMouseleaveHandler
  return

# Enable map zooming with mouse scroll when the user clicks the map
$('.map').on 'click', onMapClickHandler