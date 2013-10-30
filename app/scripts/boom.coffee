thumbnail = new Thumb $('.thumbnail')
input = $('#thumb-url')
container = $('.thumbnail-container')

$('#thumb-me').submit (e) ->
  url = input.val()

  if url != ''
    container.show()
    thumbnail.setSrc url

  e.preventDefault()

$('.slider').slider()
  .on 'slide', (e) ->
    thumbnail.setBlur e.value

