$(document).ready ->
  $('a.scroll').click( ->
    section = $(this).attr('href')
    if section == "#splash"
      $.scrollTo section, 800, {offset: -55}  
    else
      $.scrollTo section, 800, {offset: -55}
    return false
  )