$(document).ready(function(){
	$('.show_body').click(function(){
		//alert("this = "+$(this))
		//alert("this.parents(:first) = "+$(this).parents(':first'))
		alert($(this).parents('.module').children('.body:first').show())//.show()
		$(this).parents('.module:first').children('.body:first').show()
	})
	
})