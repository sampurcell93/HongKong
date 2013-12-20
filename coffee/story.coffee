cc = () -> _.each arguments, (arg) -> console.log arg

$ ->

	_w = $ window

	$.fn.StoryBoard = (options) ->

		opts = _.extend {
			imagepath: 'images/'
			slides: []
		}, options

		Wrapper = (bg) ->
			return $("<div/>").addClass("scroll-slide-wrapper").css("background", "url(" + opts.imagepath + bg + ") center center fixed no-repeat");

		createSlides = (slides) ->
			# refers to the DOM caller
			self = @
			_.each slides, (slide) ->
				if slide.src?
					$wrap = new Wrapper(slide.src)
					$wrap.appendTo self


		_top = 0
		createSlides.call @, opts.slides
		_w.scroll -> 
			_top = _w.scrollTop()
			cc _top

	$("body").StoryBoard({
		slides: [
			{
				src: 'aerial.jpg'
			}
		]
	})
