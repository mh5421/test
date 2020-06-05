<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>회원정보설정</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link href="/TEST2/resources/css/page.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript" src="/TEST2/resources/js/register.js"></script>
<script type="text/javascript" src="/TEST2/resources/js/registerJs.js"></script>
<script type="text/javascript" src="/TEST2/resources/js/infoModify.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
	<form id="frm" action='Modify.do' method='get'>
		<!-- 회원가입 -->

		<!-- header 부분 -->
		<jsp:include page="header.jsp">
			<jsp:param value='../' name='folder' />
		</jsp:include>

		<div id='boardWrite'>
			<div class="titleR">
				<div id="regiTitleRDiv">
					<span><a href="main.do">홈</a></span> <span class='first'>회원
						정보수정</span>
				</div>
			</div>
			<h3>회원정보설정</h3>
			
			<c:forEach items="${memList }" var="member">
			<table class='modifyTable'>
				
				<tr>
					<th scope="row">아이디 </th>
					<td><input type="text" size='20px' id='userId' name='userId' value="${member.userId }"
						readonly><span id="idCheckResult"
						style="width: 150px; color: red"></span> (영문자/숫자, 4~16자)</td>

				</tr>
				<tr>
					<th scope="row" >비밀번호 </th>
					<td><input type='password' size='20px' id='password'
						name='password' readonly> (영문/숫자 6자~20자)</td>
				</tr>
				<tr>
					<th scope="row">비밀번호 확인 </th>
					<td><input type='password' id='password2' name='password2' readonly></td>
				</tr>
				<tr>
					<th scope="row">이름 </th>
					<td><input type='text' size='20px' id='userName'
						name='userName' value="${member.userName }"></td>
				</tr>
				<tr>
					<th scope="row" bgcolor="#fbfafa">상세주소</th>
					<td height="25" colspan="3" bgcolor="#FFFFFF">
						<!-- <input name="textfield18" type="text" id="textfield18" size="50" /> -->
						<input type="text" id="sample4_postcode" name='postcode' placeholder="우편번호" value="${member.postcode }" readonly> 
						<input type="button" name='search' id='search' value="우편번호 찾기"><br> 
						<input type="text" id="sample4_roadAddress" name="addr"	placeholder="도로명주소"
						style="width: 320px; height: 27px; padding: 0 2px 0; margin-top: 1px; margin-bottom: 1px;" value="${member.addr1 }"
						readonly> <br> <span id="guide"
						style="color: #999; display: none"></span> 
						<input type="text" id="sample4_detailAddress" name="addr2" placeholder="상세주소" value="${member.addr2 }">
					</td>
				<tr>
					<th scope="row">휴대전화 </th>
					<td><select id='telSelect' name='tel1' form='frm'
						style="width: 90px; height: 24px;">
							<option value="">---선택---</option>
							<option value='010' <c:if test="${member.tel1== 010}">selected</c:if>>010</option>
							<option value='011' <c:if test="${member.tel1== 011}">selected</c:if>>011</option>
							<option value='017' <c:if test="${member.tel1== 017}">selected</c:if>>017</option>
					</select> - 
					<input type='text' size='7' id='tel2' name='tel2' value="${member.tel2}">- 
					<input type='text' size='7' id='tel3' name='tel3' value="${member.tel3}"> 
					<input type="radio" name="smsOk" value="Y"<c:if test='${member.smsOk== "Y"}'>checked</c:if>>수신함 
					<input type="radio" name="smsOk" value="N"<c:if test='${member.smsOk== "N"}'>checked</c:if>>수신안함</td>
				</tr>

				<tr>
					<th scope="row">이메일</th>
					<td><input type='email' size='20px' id='email' name='email' value="${member.email }"></td>
				</tr>
				<tr>
					<th scope="row">뉴스메일 </th>
					<td>뉴스 메일을 받으시겠습니까? 
					<input type="radio" name="emailOk" value="Y"<c:if test='${member.emailOk== "Y"}'>checked</c:if>>수신함
					<input type="radio" name="emailOk" value="N"<c:if test='${member.emailOk == "N"}'>checked</c:if>>수신안함
					</td>
				</tr>

			</table>
			</c:forEach>
		

			<div class='btnArea'>
				<button type="button" class='Modifybtn' id='btnSecession'>
					<img src='/TEST2/resources/images/btn_member_out.gif'>
				</button>
				<button class='Modifybtn' id='btnModify'>
					<img src='/TEST2/resources/images/btn_member_modify.gif'>
				</button>
				<button type="button" class='Modifybtn' id='btnCancel' onclick="history.back(-1)">
					<img src='/TEST2/resources/images/btn_cancel.gif'>
				</button>
				
			</div>



		</div>

		<%@ include file="footer.jsp"%>
		<!-- footer 부분 -->
	</form>
</body>
</html>
