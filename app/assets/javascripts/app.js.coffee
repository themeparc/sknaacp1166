$(document).ready ->
  $('a.scroll').click( ->
    section = $(this).attr('href')
    if section == "#splash"
      $.scrollTo section, 800, {offset: -55}  
    else
      $.scrollTo section, 800, {offset: -55}
    return false
  )

  $('section#calendar').waypoint(
    (direction) ->
      activeNav = $(this).attr('id')
      switch direction
        when 'up'
          $('.navbar a[href="#'+activeNav+'"]').removeClass('active')
        when 'down'
          $('.navbar a[href="#'+activeNav+'"]').addClass('active')
    ,
    { offset: 115 }
  )

  $('section#join').waypoint(
    (direction) ->
      activeNav = $(this).attr('id')
      switch direction
        when 'up'
          $('.navbar a[href="#'+activeNav+'"]').removeClass('active')
          $('.navbar a[href="#calendar"]').addClass('active')
        when 'down'
          $('.navbar a[href="#'+activeNav+'"]').addClass('active')
          $('.navbar a[href="#calendar"]').removeClass('active')
    ,
    { offset: 115 }
  )

  $('section#contact').waypoint(
    (direction) ->
      activeNav = $(this).attr('id')
      switch direction
        when 'up'
          $('.navbar a[href="#'+activeNav+'"]').removeClass('active')
          $('.navbar a[href="#join"]').addClass('active')
        when 'down'
          $('.navbar a[href="#'+activeNav+'"]').addClass('active')
          $('.navbar a[href="#join"]').removeClass('active')

    ,
    { offset: 258 }
  )