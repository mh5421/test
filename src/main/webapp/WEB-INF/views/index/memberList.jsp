<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style>

</style>
<meta charset="UTF-8">
<title>회원 리스트</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="/TEST2/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/TEST2/resources/css/animate.css">
    
    <link rel="stylesheet" href="/TEST2/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/TEST2/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/TEST2/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="/TEST2/resources/css/aos.css">

    <link rel="stylesheet" href="/TEST2/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="/TEST2/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/TEST2/resources/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="/TEST2/resources/css/flaticon.css">
    <link rel="stylesheet" href="/TEST2/resources/css/icomoon.css">
    <link rel="stylesheet" href="/TEST2/resources/css/style.css">
    <link href="/TEST2/resources/css/page.css" rel="stylesheet">
  </head>
  
  <jsp:include page="header.jsp">
	<jsp:param value='../' name='folder'/>
</jsp:include>


</head>
<body>
	<div class="jumbotron"></div>
	<div id='mHead'>
	<div>
	<h1>회원 리스트</h1>
	<hr/>


		<p id="search" class='mListp'>검색 ??명 / 전체 ?? 명 </p>
		<p id='selectAll' class='mListp'>
		<select id="">
			<option value="hiredate">회원가입일 ↓</option>
			<option value="hiredate">회원가입일 ↑</option>
		</select> 
		<select id="">
			<option value="">10개 보기</option>
			<option value="">20개 보기</option>
			<option value="">30개 보기</option>
		</select>
		</p>
		<br/>
		</div>
	</div>
		<div id="memberList">
		<table border='1px' id='mTable' class='mTable'>
			<thead>
				<tr>
					<th><input type='checkbox' value='yyy'></th>
					<th>번호</th>
					<th>아이디/닉네임</th>
					<th>이름</th>
					<th>등급</th>
					<th>구매건수</th>
					<th>구매금액</th>
					<th>회원가입일</th>
					<th>전화번호</th>
					<th>정보수정</th>
				</tr>

			</thead>
			<tbody>
			<!-- <c:forEach></c:forEach> -->
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

			
			</tbody>


		</table>
		
		<table class='mTable'>
			<tr>
				<td>
					<select id="" style="height:33px;">
						<option>아이디</option>
						<option>이름</option>
						<option>전화번호</option>
					</select>
				</td>
				<td><input type='text' size='10px'></td>
				<td><button>검색</button></td>
			</tr>
		</table>

	</div>
	
	<!-- footer -->
	
	<%@ include file="footer.jsp" %>
	
	
</body>
</html>