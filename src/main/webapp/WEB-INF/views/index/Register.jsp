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
<script type="text/javascript" src="/TEST2/resources/js/registerJs.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
<form id="regiForm" action='register.do' method='get'>
 <!-- 회원가입 -->

      <!-- header 부분 -->
		<jsp:include page="header.jsp">
			<jsp:param value='../' name='folder' />
		</jsp:include>



<div id='boardWrite'>
	<div class="titleR">
		<div id="regiTitleRDiv">
			<span><a href="main.do">홈</a></span> <span class='first'>회원가입</span>
		</div>
	</div>
 <h3>기본정보</h3>
 
 <p class='required'><img src="/TEST2/resources/images/ico_required.gif" alt="필수"/> 필수입력사항</p>
 
 <table class='regiTable'>
 
 	<tr>
 		<th scope="row"> 아이디 <img src="/TEST2/resources/images/ico_required.gif" alt="필수"/></th>
 		<td>
 			<input type="text" size='20px' id='userId' name='userId'> 
 			<span id="idCheckResult" style="width:150px;color:red"></span>
 			(영문자/숫자, 4~16자)
 			
 		</td>
 			
 	</tr>
 	<tr>
 		<th scope="row">비밀번호 <img src="/TEST2/resources/images/ico_required.gif" alt="필수"/></th>
 		<td><input type='password' size='20px' id='password' name='password'> (영문/숫자 6자~20자)</td>
 	</tr>
 	<tr>
 		<th scope="row">비밀번호 확인 <img src="/TEST2/resources/images/ico_required.gif" alt="필수"/></th>
 		<td><input type='password' id='password2' name='password2'></td>
 	</tr>
 	<tr>
 		<th scope="row">이름 <img src="/TEST2/resources/images/ico_required.gif" alt="필수"/></th>
 		<td><input type='text' size='20px'id='userName' name='userName'></td>
 	</tr>
 	<tr>
 	<th scope="row" bgcolor="#fbfafa">상세주소<img src="/TEST2/resources/images/ico_required.gif" alt="필수"/></th>
	<td height="25" colspan="3" bgcolor="#FFFFFF"><!-- <input name="textfield18" type="text" id="textfield18" size="50" /> -->
	<input type="text" id="sample4_postcode" name = 'postcode' placeholder="우편번호" readonly>
	<input type="button" name='search' id='search' value="우편번호 찾기"><br>
	<input type="text" id="sample4_roadAddress" name="addr" placeholder="도로명주소" style="width:320px; height:27px;padding:0 2px 0; margin-top: 1px; margin-bottom: 1px;" readonly>
	<br>
	<span id="guide" style="color:#999;display:none"></span>
	<input type="text" id="sample4_detailAddress" name="addr2" placeholder="상세주소">
	</td>
 	
 	<tr>
 		<th scope="row">휴대전화 <img src="/TEST2/resources/images/ico_required.gif" alt="필수"/></th>
 		<td>
 			<select id='telSelect' name='tel1' form='regiForm' style="width:90px; height:24px;">
 				<option value="">---선택---</option>
 				<option value='010'>010</option>
 				<option value='011'>011</option>
 				<option value='017'>017<option>
 			</select>
 			-
 			<input type='text' size='7' id='tel2' name='tel2'>-
 			<input type='text' size='7' id='tel3' name='tel3'>
 		</td>
 	</tr>
 	<tr>
 		<th scope="row">SMS 수신여부 <img src="/TEST2/resources/images/ico_required.gif"/></th>
 		<td><input type='checkbox' id='smsOk' value='N'> 동의함<br/>
 		쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.</td>
 	</tr>
 	<tr>
 		<th scope="row">이메일 <img src="/TEST2/resources/images/ico_required.gif" alt="필수"/></th>
 		<td><input type='email' size='20px' id='email' name='email'></td>
 	</tr>
 	<tr>
 		<th scope="row">이메일 수신여부 <img src="/TEST2/resources/images/ico_required.gif"/></th>
 		<td><input type='checkbox' id='emailOk' value='N'> 동의함<br/>
 		쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</td>
 	</tr>

 </table>
 <!-- sms와 email 수신여부를 저장해서 데이터를 넘길 히든타입 -->
 <input type="hidden" id="emailYN" name="emailOk" value="N">
 <input type="hidden" id="smsYN" name="smsOk" value="N">
 
 <div class='btnArea'>
 	<!-- 회원가입 확인버튼 -->
 	<button class='btnRegi' id='btnRegiOk'><img src='/TEST2/resources/images/btn_member_join1.gif'></button>
 	<!-- 회원가입 취소버튼 -->
 	<button type="button" class='btnRegi' onclick="location.href='../main.do'"><img src='/TEST2/resources/images/btn_member_join_cancel.gif'></button>
 </div>
 

  
 </div>
 
   <%@ include file="footer.jsp" %>
      <!-- footer 부분 -->
</form>
</body>
</html>
