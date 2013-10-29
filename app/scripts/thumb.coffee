class window.Thumb
  @blur = INITIAL_BLUR = 20

  constructor: (@image) ->
    @image.click (e) =>
      @reduceBlur()
      e.preventDefault()

  setSrc: (src) ->
    @image.attr 'src', ''
    @setBlur INITIAL_BLUR
    @image.attr 'src', @thumbnailUrl(src)

  setBlur: (@blur) ->
    @image.css
      filter: "blur(#{@blur}px)"
      '-webkit-filter': "blur(#{@blur}px)"
      '-moz-filter': "blur(#{@blur}px)"
      '-ms-filter': "blur(#{@blur}px)"

  reduceBlur: ->
    @setBlur(--@blur) unless @blur <= 0

  thumbnailUrl: (url) ->
    "http://localhost:3000/?url=#{url}&width=800&height=600"


