<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<link href="/TEST2/resources/css/page.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script> 
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript" src="/TEST2/resources/js/register.js"></script>
<script type="text/javascript">
function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample4_postcode').value = data.zonecode;
            document.getElementById("sample4_roadAddress").value = roadAddr;
            document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
            
            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if(roadAddr !== ''){
                document.getElementById("sample4_extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("sample4_extraAddress").value = '';
            }

            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
        }
    }).open();
}
</script>
</head>
<body>
<form id="frm" action='register.do' method='post'>
 <!-- 회원가입 -->

      <!-- header 부분 -->
		<jsp:include page="header.jsp">
			<jsp:param value='../' name='folder' />
		</jsp:include>

		<div id='boardWrite'>
 <h3>기본정보</h3>
 <p class='required'><img src="/TEST2/resources/images/ico_required.gif" alt="필수"/> 필수입력사항</p>
 
 <table class='regiTable'>
 
 	<tr>
 		<th scope="row"> 아이디 <img src="/TEST2/resources/images/ico_required.gif" alt="필수"/></th>
 		<td>
 			<input type="text" size='20px' name='userId'> (영문자/숫자, 4~16자)
 			<button id="overlapCheck">중복확인</button>
 		</td>
 			
 	</tr>
 	<tr>
 		<th scope="row">비밀번호 <img src="/TEST2/resources/images/ico_required.gif" alt="필수"/></th>
 		<td><input type='password' size='20px' name='password'> (영문/숫자 6자~20자)</td>
 	</tr>
 	<tr>
 		<th scope="row">비밀번호 확인 <img src="/TEST2/resources/images/ico_required.gif" alt="필수"/></th>
 		<td><input type='password' name='password2'></td>
 	</tr>
 	<tr>
 		<th scope="row">이름 <img src="/TEST2/resources/images/ico_required.gif" alt="필수"/></th>
 		<td><input type='text' size='20px' name='userName'></td>
 	</tr>
 	<tr>
 	<th scope="row" bgcolor="#fbfafa">상세주소<img src="/TEST2/resources/images/ico_required.gif" alt="필수"/></th>
	<td height="25" colspan="3" bgcolor="#FFFFFF"><!-- <input name="textfield18" type="text" id="textfield18" size="50" /> -->
	<input type="text" id="sample4_postcode" name = 'postcode' placeholder="우편번호" readonly>
	<input type="button" name='search' id='search' value="우편번호 찾기"><br>
	<input type="text" id="sample4_roadAddress" placeholder="도로명주소"readonly>
	<input type="text" id="sample4_jibunAddress" placeholder="지번주소"readonly>
	<span id="guide" style="color:#999;display:none"></span>
	<input type="text" id="sample4_detailAddress" placeholder="상세주소">
	<input type="text" id="sample4_extraAddress" placeholder="참고항목">
	</td>
 	
 	<tr>
 		<th scope="row">휴대전화 <img src="/TEST2/resources/images/ico_required.gif" alt="필수"/></th>
 		<td>
 			<select name='tel1' form='regiForm' style="width:90px; height:24px;">
 				<option value='02'>010</option>
 				<option value='031'>011</option>
 				<option value='051'>017<option>
 			</select>
 			-
 			<input type='text' size='7' id='tel2'>-
 			<input type='text' size='7' id='tel3'>
 		</td>
 	</tr>
 	<tr>
 		<th scope="row">SMS 수신여부 <img src="/TEST2/resources/images/ico_required.gif" alt="필수"/></th>
 		<td><input type='checkbox' name='smsOk'> 동의함<br/>
 		쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.</td>
 	</tr>
 	<tr>
 		<th scope="row">이메일 <img src="/TEST2/resources/images/ico_required.gif" alt="필수"/></th>
 		<td><input type='email' size='20px' name='email'></td>
 	</tr>
 	<tr>
 		<th scope="row">이메일 수신여부 <img src="/TEST2/resources/images/ico_required.gif" alt="필수"/></th>
 		<td><input type='checkbox' name='emailOk'> 동의함<br/>
 		쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</td>
 	</tr>

 </table>
 
 <div class='btnArea'>
 	<button class='btnRegi' id='btnRegiOk'><img src='/TEST2/resources/images/btn_member_join1.gif'></button>
 	<button class='btnRegi'><img src='/TEST2/resources/images/btn_member_join_cancel.gif'></button>
 </div>
 

 
 </div>
 
   <%@ include file="footer.jsp" %>
      <!-- footer 부분 -->
</form>
</body>
</html>
