<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	// <jsp:param>의 값 넘겨받기
	String folder = request.getParameter("folder");
	if( folder == null || folder.equals("")) folder="";
	%>    
<!DOCTYPE html> 
<html> 
<head> 
<title>위에 고정화면</title> 
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<!-- CSS --> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<link href="/TEST2/resources/css/page.css" rel="stylesheet">

<!-- JS --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script> 
</head>
 <body>
  <!-- header --> 
 <div > 
 
 	<div id="test1">
 		<a><img src="/TEST2/resources/images/test.png" id="test2"></a>
 	</div>

<!-- 첫번째 메뉴바 -->
 <nav class="navbar navbar-expand-sm"> 
 <div class="collapse navbar-collapse" id="menu1"> 
 	<ul class="navbar-nav mx-auto"> 
 		<li class="nav-item1"><a href="<%=folder %>index/memberList.do" class="nav-link">회원관리</a></li>
	 	<li class="nav-item1"><a href="#" class="nav-link">로그인</a></li>
	 	<li class="nav-item1"><a href="<%=folder %>index/Register.do" class="nav-link">회원가입</a></li>
	 	<li class="nav-item1"><a href="<%=folder %>main.do" class="nav-link">홈으로</a></li>
	 	<li class="nav-item1"><a href="#" class="nav-link">공지사항</a></li>
	 	<li class="nav-item1"><a href="#" class="nav-link">Q&A</a></li>
	 	<li class="nav-item1"><a href="<%=folder %>shop/cart.do" class="nav-link">장바구니</a></li>
	 	<li class="nav-item1"><a href="<%=folder %>shop/wishList.do" class="nav-link">찜하기</a></li>
 		<li class="nav-item1"><a href="<%=folder %>index/memberJoin_ok.do" class="nav-link">회원관리</a></li>
 		
 	</ul> 
 </div>
 </nav>
</div> 

 
<!-- 두번째 메뉴바 -->
 <nav class="navbar navbar-expand-sm navbar-dark bg-dark"> 
 <div class="collapse navbar-collapse" id="menu2"> 
 	<ul class="navbar-nav mx-auto "> 
	 	<li class="nav-item2"><a href="<%=folder %>shop/tentShop.do" class="nav-link">텐트 & 쉘터</a></li>
	 	<li class="nav-item2"><a href="<%=folder %>shop/beddingShop.do" class="nav-link">침낭 & 침구류</a></li>
	 	<li class="nav-item2"><a href="<%=folder %>shop/tarpShop.do" class="nav-link">타프 & 타프몰</a></li>
	 	<li class="nav-item2"><a href="<%=folder %>shop/cooperShop.do" class="nav-link">쿠퍼 & 스토브</a></li>
	 	<li class="nav-item2"><a href="<%=folder %>shop/LanternShop.do" class="nav-link">랜턴 & 테이블</a></li>
	 	<li class="nav-item2"><a href="<%=folder %>shop/backpackShop.do" class="nav-link">배낭 & 운행 </a></li>
	 	<li class="nav-item2"><a href="<%=folder %>shop/otherShop.do" class="nav-link">악세사리 & 기타</a></li>
 	</ul> 
 </div>
 </nav>
 
 
 
</body>
</html>