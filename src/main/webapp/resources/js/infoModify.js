$(function(){
	
	
	$('#btnSecession').click(function(){
		var confirm_val = confirm("정말 탈퇴하시겠습니까?");
		if(confirm_val){
		$.ajax({
			url:'memberDelete.do',
			type:"post",
			data:"userId="+$('#userId').val(),
			success:function(resultData){
				if(resultData==1){
				alert("탈퇴 완료되셨습니다");
				window.location.replace("../main.do");
				}else{
					
				}
			}
		});
		}
	});
	$('#btnModify').click(function(){
		
		


		$('#frm').submit();
	});

});

