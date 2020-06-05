<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId=request.getParameter("userId");

%>
<!DOCTYPE html>
<html>
<head>
<style>
</style>
<meta charset="UTF-8">
<title>회원 리스트</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="/TEST2/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="/TEST2/resources/css/animate.css">

<link rel="stylesheet" href="/TEST2/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="/TEST2/resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/TEST2/resources/css/magnific-popup.css">

<link rel="stylesheet" href="/TEST2/resources/css/aos.css">

<link rel="stylesheet" href="/TEST2/resources/css/ionicons.min.css">

<link rel="stylesheet"
	href="/TEST2/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="/TEST2/resources/css/jquery.timepicker.css">


<link rel="stylesheet" href="/TEST2/resources/css/flaticon.css">
<link rel="stylesheet" href="/TEST2/resources/css/icomoon.css">
<link rel="stylesheet" href="/TEST2/resources/css/style.css">
<link href="/TEST2/resources/css/page.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript" src="/TEST2/resources/js/memberList.js"></script>



<jsp:include page="header.jsp">
	<jsp:param value='../' name='folder' />
</jsp:include>
</head>

<body>

<div style="width:100%;  margin-top:100px; margin-bottom:100px;">
	<div style="text-align: center;">
	<h1 style="margin-bottom:100px;">성공</h1>
	<button onclick="location.href='memberList.do'">회원관리</button>
	<button onclick="location.href='infoModify.do?userId=<%=userId%>'">회원정보수정</button>
	</div>
</div>
	<%@ include file="footer.jsp"%>
</body>
</html>