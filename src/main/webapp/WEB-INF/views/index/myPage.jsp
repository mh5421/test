<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style>
</style>
<meta charset="UTF-8">
<title>마이 페이지</title>
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

<link href="/TEST2/resources/css/page.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript" src="/TEST2/resources/js/memberList.js"></script>



<jsp:include page="header.jsp">
	<jsp:param value='../' name='folder' />
</jsp:include>
</head>

<body>
	<div id="container">
		<div id="MyPageDiv">
				<div id="mainDiv" class="col-md-9 ftco-animate text-center" style="margin:auto;">
				<h1 class="mb-0 bread" style="">MyPage</h1>
				<p>저희 쇼핑몰을 이용해 주셔서 감사합니다.</p>
				</div>
				<div class="my" id="OrderHistory">
						<h3>
						<button>주문내역</button>
						</h3>
						<a>고객님께서 주문하신 상품의 주문내역을 확인하실 수 있습니다.<br /> 비회원님의 경우, 주문번호와
							비밀번호로 주문조회가 가능합니다.
						</a>

				</div>
				<div class="my" id="MemberInfo">
					<h3>
					<button>회원정보</button>
					</h3>
					<a>
					회원이신 고객님의 개인정보를 관리하는 공간입니다.<br/>
					개인정보를 최신으로 유지하시면 오배송등의 문제가 사라집니다.
					</a>
					<br />
				</div>
				<div class="my" id="wishList">
				<h3>
					<button>관심상품</button>
				</h3>
				<a>
				관심상품으로 등록하신 상품을 편리하게 관리하실 수 있으세요.
				</a>
					<br />
				</div>


		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>