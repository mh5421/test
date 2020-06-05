$(function(){
	
	var idPattern =  /^[A-Za-z0-9+]{4,12}$/
	var pwPattern = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/

		//아이디 중복체크
		$('#userId').keyup(function(){
			
	        //비동기 통신 = ajax
			if($("#userId").val().length>=4){
			$.ajax({
				type : 'post',
				async : true,
				url : 'idCheck.do',//idCheck.do 요청
				contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
				data : "userId="+$("#userId").val(), //요청과 함께 넘길 userId 데이터
				success : function(resultData){//요청이 성공했을때 받아오는 값을 인자로 함수 실행
					$('#idCheckResult').html(resultData);
				}
			
			});
			}
	       
		});
	//회원가입버튼일 눌렸을때
	$('#btnRegiOk').click(function(){
		
		//회원가입할때 입력해야 될 값들중 입력이 안된 값이 있나 판별
		if($('#userId').val()==""){
			alert("아이디를 입력해주세요");
			$('#userId').focus();
		} else if($('#password').val()==""){
			alert("비밀번호를 입력해주세요");
			$('#password').focus();
			}else if($('#userName').val==""){
				alert("이름을 입력해주세요");
				$('#userName').focus();
			} else if($('#sample4_roadAddress').val==""){
				alert("주소를 입력해주세요");
			} else if($('#telSelect').val()==""){
				alert("전화번호를 선택해주세요1");
			} else if($('#tel2').val()==""){
				alert("전화번호를 입력해주세요2");
				$('#tel2').focus();
			}else if($('#tel3').val()==""){
				alert("전화번호를 입력해주세요3");
				$('#tel3').focus();
			}else if($('#email').val()==""){
				alert("email을 입력해주세요");
				$('#email').focus();
			}
		
		//패턴 체크용 함수
		function check(pattern,id,message){
			if(pattern.test(id.val())){
				return true;
			}
			alert(message);
			id.value = "";
			id.focus();
		}
		
		//패턴에 위반했나 판별
		if(!check(idPattern,$('#userId'),"이름을 조건에 맞게 입력하세요"))
		{
			return false;
		}else if(!check(pwPattern,$('#password'),"비밀번호를 조건에 맞게 입력해주세요")){
			return false;
		}
		
		//smsOk 체크박스가 체크여부를 혹인하고 체크했으면 Y값을 체크안했으면 N값을 id가 smsYN인 input에 저장
		if($('#smsOk').is(":checked")==true){
			$('#smsYN').val("Y");
		}else{
			$('#smsYN').val("N");
		}
		
		//emailOk 체크박스가 체크여부를 혹인하고 체크했으면 Y값을 체크안했으면 N값을 id가 smsYN인 input에 저장
		if($('#emailOk').is(":checked")==true){
			$('#emailYN').val("Y");
		}else{
			$('#emailYN').val("N");
		}
		
		//submit
		$('#frm').submit();
		});
	
});
