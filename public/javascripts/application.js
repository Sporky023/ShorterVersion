$(document).ready(function(){
	$('.show_body').click(function(){
		//alert("this = "+$(this))
		//alert("this.parents(:first) = "+$(this).parents(':first'))
		$(this).parents('.module:first').children('.body:first').show()
	})
	
})

skinny_window = function(){
	$('.help').hide()
	window.resizeTo(340, 600)
}