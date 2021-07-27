$(document).ready(function(){
	$('.user-card').on('click',function(){
		
		var user_idx= $(this).data('user-idx'); // data-뒤에 이름
		
		location.href='./detail?user_idx='+user_idx;
	})
});