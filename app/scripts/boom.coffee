thumbnail = new Thumb $('.thumbnail')
input = $('#thumb-url')
container = $('.thumbnail-container')

$('#thumb-me').submit (e) ->
  container.show()
  thumbnail.setSrc input.val()

  e.preventDefault()

$('.slider').slider()
  .on 'slide', (e) ->
    thumbnail.setBlur e.value

