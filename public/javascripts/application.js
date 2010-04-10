$(document).ready(function(){
	$('.show_body').click(function(){
		//alert("this = "+$(this))
		//alert("this.parents(:first) = "+$(this).parents(':first'))
		$(this).parents('.module:first').children('.body:first').show()
	})
	
})

skinny_window = function(){
	$('.module').css('background-color', '#444')
	$('.module').css('color', '#eee')
	$('.module label').css('color', '#999')
	$('.document').hide()
	$('#document').hide()
	$.scrollTo('max')
	$('.help').hide()
	$('.logo').hide()
	window.resizeTo(360, 800)
}