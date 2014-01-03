cc = () -> $.each arguments, (i, arg) -> console.log arg

$ ->
	$w = $ window
	h = $w.height() / 5
	$skyline = $(".fuckin-gorgeous")

	$.fn.adata = (key, val) ->
		@attr("data-"+key, val)
		cc @get()
		@

	Number::between = (low, hi) ->
		val = @valueOf()
		val >= low and val < hi

	$w.scroll ->
		pos = Math.floor($w.scrollTop())
		cc pos
		if pos.between(200, 1600)
			$messages = $skyline.find(".message-bubble")
			if pos.between(350, 600) 
				do ->
					$messages.eq(0).fadeIn("fast")
			else if pos.between(700, 950) 
				do ->
					$skyline.addClass("zoomed").adata("zoom", "one")
					$messages.slice(1,3).fadeIn("fast")
			else if pos.between(1150, 1250)
				do -> 
					$skyline.adata("zoom", "ten")
					$messages.eq(3).fadeIn("fast")
			else if pos.between(1400, 1600)
				do ->
					cc "unzooming"
					$skyline.adata("zoom", "")


