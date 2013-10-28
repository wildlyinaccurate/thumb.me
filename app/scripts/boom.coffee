thumbnail = new Thumb $('.thumbnail')
input = $('#thumb-url')

$('#thumb-me').submit (e) ->
  e.preventDefault()
  thumbnail.setSrc input.val()

