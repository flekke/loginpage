$(document).ready(function(){
	
	$('#submit-btn').on('click',function(){
		var id=$('#id').val();
		var pw=$('#pw').val();
		
		$.ajax({
			url:'./login',
			type:'post',
			data:{
				id:id,
				pw:pw
			},
			success:function(user){
				if(user != ''){
					//로그인 성공
					alert('성공');
					location.href='./';
				}else{
					//로그인 실패
					alert('실패');
				}
			},
			error:function(err){
				
			}
		
		
		
		})
		
		
	})
	
});