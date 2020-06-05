<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>
<link href="/TEST2/resources/css/page.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="header.jsp">
		<jsp:param value='../' name='folder' />
	</jsp:include>
	<div class="mainDiv">
		<div class="titleR">
			<div>
				<span><a href="main.do">홈</a></span> <span class='first'>회원
					가입 완료</span>
			</div>
		</div>
		<div id="titleArea">
			<h2>회원 가입 완료</h2>
		</div>

		<div id="mJoin">
			<div id='mJoinDiv'>
				<div>
					<img src='/TEST2/resources/images/h3_join_complete.gif'>
					<h3>회원가입이 완료 되었습니다.</h3>
					<br />
					<table id='memberInfo'>
						<tr>
							<td rowspan="3"><img
								src='/TEST2/resources/images/img_member_default.gif'></td>
							<td>아이디 : ${id }</td>
						</tr>
						<tr>
							<td>이름 : ${name }</td>
						</tr>
						<tr>
							<td>이메일 : ${email}</td>
						</tr>
					</table>

					저의 쇼핑몰을 이용해주셔서 감사합니다. <br /> <br /></br> <a href="login.do"><img
						src='/TEST2/resources/images/btn_complete_login.gif'></a> <a
						href="main.do"><img
						src='/TEST2/resources/images/btn_complete_main.gif'></a>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>