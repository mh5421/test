$(function(){
	
	$('#cntPerPage').change(function(){
		var sel=$('#cntPerPage').val();
		location.href="productList.do?nowPage+"+$('#nowPage').val()+"&cntPerPage="+sel;
	});

	
	$('#searchBtn').click(function(){
	
	// 검색할 타입과 검색할 키워드를 VO의 이름과 맞춰서 넘길 히든타입을 생성한다
	var	$div = $('<input type="hidden" name="'+$("#searchType").val()+'" value="'+$("#keywordInput").val()+'">'); 
		
	//생성한 히든타입을 form안에 추가
	$('#frm').append($div);
	$('#frm').submit();
	});
	
	//모든선택 체크박스 클릭시
	$("#check_all").click(function(){
		//체크박스 체크 상태를 저장
		var check = $(this).is(":checked");
		
		if(check){//체크박스가 체크되어있을 경우
			$('.input_check').prop('checked',true);
		}else{//체크박스가 체크되어있지 않을 경우
			$('.input_check').prop('checked',false);
		}
	});

	//체크박스 선택시
	$(".input_check").click(function(){
		//$('input:checkbox[class="input_check"] : 체크박스의 총 갯수
		//$('input:checkbox[class="input_check"]:checked') : 체크된 체크박스의 갯수
		
		//모든 체크박스가 체크 되어 있을경우 모든선택 체크박스를 체크로 바꿔준다
		if($('input:checkbox[class="input_check"]').length == $('input:checkbox[class="input_check"]:checked').length){
			$("#check_all").prop('checked',true);
		}else
			$("#check_all").prop('checked',false);
		
	});
	
	
	//삭제버튼 클릭되었을때
	$('#deleteBtn').click(function(){
		var confirm_val = confirm("정말 삭제하시겠습니까?");
		
		if(confirm_val){
			var checkArr = new Array();
			
			$('input[class="input_check"]:checked').each(function(){
				checkArr.push($(this).attr("name"));
				$.ajax({
					url:"ProductDelete.do",
					type:"post",
					data:{input_check : checkArr},
					success:function(url2){
						location.href=url2;
						
					}
					
				});
				
				
			});
		}
	});
	

	
	
	
});