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

  $('form#contact-form').submit( (e)->
    e.preventDefault()
    $('input[type="submit"], input[type="reset"]').attr('disabled', 'disabled')
    console.log $(this).serialize()
    $.ajax '/send_message',
      type: 'POST'
      dataType: 'text'
      data: $(this).serialize()
      error: (jqXHR, textStatus, errorThrown) ->
          console.log errorThrown
      success: (data, textStatus, jqXHR) ->
          $('form#contact-form input, form#contact-form textarea, form#contact-form .btn, form#contact-form label').css({opacity: '0.2'})
          $('#contact .success').fadeIn()
  )