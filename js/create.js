/**
 * 
 */

$(function() {
	$('input[name=name]').bind('blur' , function() {
		if($(this).val() == ''){
			$(this).addClass('error').parent().append('<p class="error">※この項目は必ず入力してください</p>');
			// $(this).addClass('error').append('<p class="error">※この項目は必ず入力してください</p>');
		}
	})
	.bind('focus' , function() {
		if($(this).next() !== false){
			$(this).removeClass('error').next().remove();
		}
	});
})
