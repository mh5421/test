<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<link href="../css/page.css" rel="stylesheet">
<script
  src="http://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script> 
<script type="text/javascript">
$(function(){
	$('#header').load('Header.jsp');
});

</script>
</head>
<body>
<form>
 <!-- 회원가입 -->
 <div id="header"></div>

 <div id='boardWrite'>
 <h3>기본정보</h3>
 <p class='required'><img src="../img/ico_required.gif" alt="필수"/> 필수입력사항</p>
 
 <table class='regiTable'>
 
 	<tr>
 		<th scope="row"> 아이디 <img src="../img/ico_required.gif" alt="필수"/></th>
 		<td>
 			<input type="text" size='20px'> (영문소문자/숫자, 4~16자)
 		</td>
 	</tr>
 	<tr>
 		<th scope="row">비밀번호 <img src="../img/ico_required.gif" alt="필수"/></th>
 		<td><input type='password' size='20px'> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</td>
 	</tr>
 	<tr>
 		<th scope="row">비밀번호 확인 <img src="../img/ico_required.gif" alt="필수"/></th>
 		<td><input type='password'></td>
 	</tr>
 	<tr>
 		<th scope="row">이름 <img src="../img/ico_required.gif" alt="필수"/></th>
 		<td><input type='text' size='20px'></td>
 	</tr>
 	<tr>
 		<th scope="row" rowspan='3'>주소 <img src="../img/ico_required.gif" alt="필수"/></th>
 		<td><input type='text' size='5px'>&nbsp;<button>우편번호 ▶</button></td>
 	</tr>
 	<tr>
 		<td><input type='text' size='50px'> 기본주소 </td>
 	</tr>
 	<tr>
 		<td><input type='text' size='50px'> 나머지주소 (선택입력가능)</td>
 	</tr>
 	<tr>
 		<th scope="row">일반전화</th>
 		<td>
 			<select name='tel' form='regiForm' style="width:90px; height:30px;">
 				<option value='02'>02</option>
 				<option value='031'>031</option>
 				<option value='051'>051</option>
 			</select>
 			-
 			<input type='text' size='7'>-
 			<input type='text' size='7'>
 		</td>
 	</tr>
 	<tr>
 		<th scope="row">휴대전화 <img src="../img/ico_required.gif" alt="필수"/></th>
 		<td>
 			<select name='tel' form='regiForm' style="width:90px; height:30px;">
 				<option value='02'>010</option>
 				<option value='031'>011</option>
 				<option value='051'>017<option>
 			</select>
 			-
 			<input type='text' size='7'>-
 			<input type='text' size='7'>
 		</td>
 	</tr>
 	<tr>
 		<th scope="row">SMS 수신여부 <img src="../img/ico_required.gif" alt="필수"/></th>
 		<td><input type='checkbox'> 동의함<br/>
 		쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.</td>
 	</tr>
 	<tr>
 		<th scope="row">이메일 <img src="../img/ico_required.gif" alt="필수"/></th>
 		<td><input type='email' size='20px'></td>
 	</tr>
 	<tr>
 		<th scope="row">이메일 수신여부 <img src="../img/ico_required.gif" alt="필수"/></th>
 		<td><input type='checkbox'> 동의함<br/>
 		쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</td>
 	</tr>

 </table>
 
 <div class='btnArea'>
 	<button><img src='../img/btn_member_join1.gif'></button>
 	<button><img src='../img/btn_member_join_cancel.gif'></button>
 </div>
 
 </div>
</form>
</body>
</html>
