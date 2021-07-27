$(document).ready(function(){
		
	$('#submit-btn').on('click',function(){
		
		
		var con = confirm('회원가입을 하시겠습니까?');
		
		if (con){
			var id=$('#id').val();
			var pw=$('#pw').val();
			var pw1=$('#pw1').val();
			var nickname=$('#nickname').val();
			var intro=$('#intro').val();
			var gender= $("input[name='gender']:checked").val();
			
			if(pw==pw1 && pw.length>0){
				$.ajax({
					url:'./addUser',
					type:'get',
					data:{
						id:id,
						pw:pw,
						nn:nickname,
						gd:gender,
						it:intro
					},
					success:function(res){
						if(res=='ok'){
							alert('회원가입완료')
							location.href='./';
						}
					},
					error:function(err){
						
					}
				});
				
				
				
				
			}

		}
		
		
	})	
	
	
});

