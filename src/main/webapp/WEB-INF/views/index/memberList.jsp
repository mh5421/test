<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


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
	<form id='frm' method="post" action="listSearch.do">
		<div class="jumbotron"></div>
		<div id='mHead'>
			<div>
				<h1>회원 리스트</h1>
				<hr />

				<input type="hidden" id="nowPage" name="nowPage"
					value="${paging.nowPage}">

				<p id="search" class='mListp'>검색 ${curCount}명 / 전체 ${allCount} 명</p>
				<p id='selectAll' class='mListp'>

					<select id="cntPerPage">

						<option value="10"
							<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10개
							보기</option>
						<option value="15"
							<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15개
							보기</option>
						<option value="20"
							<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20개
							보기</option>
					</select>

				</p>
				<br />
			</div>

		</div>

		<div id="memberList">

			<table id='mTable' class='mTable' style="text-align: center">
				<tr>
					<td style="border: none; text-align: left;">
						<button type="button" id="deleteBtn">삭제</button>
					</td>

				</tr>
				<tr id="memberListTr">
					<td><input type='checkbox' id="check_all"></td>
					<td>아이디/닉네임</td>
					<td>이름</td>
					<td>등급</td>
					<td>구매건수</td>
					<td>구매금액</td>
					<td>회원가입일</td>
					<td>전화번호</td>
					<td>정보수정</td>
				</tr>

				<tbody>
					<c:forEach items="${memList }" var="member">
						<tr>
							<td><input type='checkbox' class='input_check'
								name="${member.userId }"></td>
							<td>${member.userId }</td>
							<td>${member.userName }</td>
							<td></td>
							<td></td>
							<td></td>
							<td>${member.hiredate}</td>
							<td>${member.tel1}-${member.tel2 }-${member.tel3 }</td>
							<td><button id="modifyBtn" type="button"
									onclick="location.href='memberModify.do?userId=${member.userId}'">수정</button></td>
						</tr>
					</c:forEach>
				</tbody>


			</table>

			<table class='mTable'>
				<tr>
					<td><select name="searchType" id="searchType"
						style="height: 33px;">
							<option value="userId">아이디</option>
							<option value="userName">이름</option>
							<option value="tel3">전화번호</option>
					</select></td>
					<td><input type='text' size='10px' name='keyword'
						id='keywordInput'></td>
					<td><button id="searchBtn">검색</button></td>
				</tr>
			</table>

		</div>
		<div style="display: block; text-align: center;" id="pagingDiv">
			<c:if test="${paging.startPage != 1 }">
				<a href="../index/memberList.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
			</c:if>
			<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
				var="p">
				<c:choose>
					<c:when test="${p == paging.nowPage }">
						<b style="font-size: 30px;">${p }</b>
					</c:when>
					<c:when test="${p != paging.nowPage }">
						<a href="../index/memberList.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}" style="font-size: 20px;">${p }</a>
					</c:when>
				</c:choose>
			</c:forEach>
			<c:if test="${paging.endPage != paging.lastPage}">
				<a href="../index/memberList.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
			</c:if>
		</div>

		<!-- footer -->

		<%@ include file="footer.jsp"%>

	</form>
</body>
</html>