$(document).ready(function(){
	$('.one-menu').on('click',function(){
		
		var page = $(this).data('page');
		location.href="./"+page
		
		
//		
//		if(page=='home'){
//			location.href="./home"
//		} else if(page=='product'){
//			location.href="./product"
//		} else if(page=='review'){
//			location.href="./review"
//		} else if(page=='cs'){
//			location.href="./cs"
//		}
		
	});
	
	$('#go-register-page-btn').on('click',function(){
		location.href='./register';
	});
	
	$('#go-login-page-btn').on('click',function(){
		location.href='./login';
		
	});
	
	$('#logout-btn').on('click',function(){
		var con = confirm('정말 로그아웃 하시겠습니까?')
		if(con) {
			$.ajax({
				url:'./logout',
				type: 'post',
				success:function(res){
					if(res=="ok"){
						alert('로그아웃 되었습니다');
						location.href="./";
					}
				},
				error:function(err){
					
				}
			})
		}
	});
	
	
});


