$(function(){
	
	var idPattern =  /^[A-Za-z0-9+]{4,12}$/
	var pwPattern = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/

	
	
	$('#btnRegiOk').click(function(){
		
		if($('#userId').val()==null){
			alert("아이디를 입력해주세요");
			$('#userId').focus();
		} else if($('#password').val()==null){
			alert("비밀번호를 입력해주세요");
			$('#password').focus();
			}else if($('#userName').val==null){
				alert("이름을 입력해주세요");
				$('#userName').focus();
			} else if($('#addr').val==null){
				alert("주소를 입력해주세요");
				$('#addr').focus();
			} else if($('#tel1').val()==null){
				alert("전화번호를 선택해주세요");
				$('#tel1').focus();
			} else if($('#tel2').val()==null){
				alert("전화번호를 입력해주세요");
				$('#tel2').focus();
			}else if($('#tel3').val()==null){
				alert("전화번호를 입력해주세요");
				$('#tel3').focus();
			}else if($('#email').val()==null){
				alert("email을 입력해주세요");
				$('#email').focus();
			}
		
		function check(pattern,id,message){
			if(pattern.test(id.val())){
				return true;
			}
			alert(message);
			id.value = "";
			id.focus();
		}
		
		if(!check(idPattern,$('#userId'),"이름을 조건에 맞게 입력하셨습니다"))
		{
			return false;
		}else if(!check(pwPattern,$('#password'),"비밀번호를 조건에 맞게 입력해주세요")){
			return false;
		}
		
		
			

		$('#frm').submit();
		});
	
});