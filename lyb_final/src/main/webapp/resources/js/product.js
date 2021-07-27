$(document).ready(function(){
	
	var chk=true;
	$('#btn').on('click',function(){
		
//		if(chk){
//			$('#txt').css('color','blue');
//			chk=false;
//		}else{
//			$('#txt').css('color','black');
//			chk=true;
//		}
//		//chk=!chk;
//		
		
		//[step1]
		var text = $('#inp').val();
		
		$('#txt').html(text);
		
		
		
		
		
	});
});