<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.5.1.min.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&family=Rubik:ital,wght@1,700&family=Unica+One&display=swap" rel="stylesheet">
<style type="text/css">
body{
	margin: 0;
	padding: 0;
}
a{
	all: unset;
	margin: 7px;
	padding: 6px;
	cursor: pointer;
}
.header h1{
	padding: 10px;
	display: inline-block;
	font-size: 40px;
	margin-top: 0px;
	font-family: 'Jua', sans-serif;
}
.right-bar{
	list-style: none;
	display: inline-block;
	float: right;
	right: 40px;
	margin: 14px;
}
.right-bar li{
	display: inline-block;
}
.container{margin-top: 105px;}
.container-1{
	display: inline-flex;
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	margin-left: 16px;
}
.footer{
	clear: both;
    background-color: #BDBDBD;
    position: fixed;
    width: 100%;
    height: 150px;
    bottom: 0px;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="header">
			<h1>QueensB</h1>
			<!-- 오른쪽 메뉴 -->
			<ul class="right-bar">
				<li><a href="login.jsp">LOGIN</a></li>
				<li><a href="join.jsp">JOIN</a></li>
			</ul>
		</div>
		<hr>
		<div class="container">
			<ul class="container-1">
				<li>
					<img src="../jsp/images/바구니1.JPG" width="350px">
					<div class="caption-text">
						<h1>올인원 빨래 바구니</h1>
						<p>Every object has a use</p>
					</div>
			</li>
			<li>
				<img src="../jsp/images/바구니2.JPG" width="350px">
					<div class="caption-text">
						<h1>라탄 바스켓</h1>
						<p>Every object has a use</p>
					</div>
			</li>
			<li>
				<img src="../jsp/images/바구니3.JPG" width="350px">
					<div class="caption-text">
						<h1>리빙 박스</h1>
						<p>Every object has a use</p>
					</div>
			</li>
			<li>
				<img src="../jsp/images/바구니4.JPG" width="350px">
					<div class="caption-text">
						<h1>빨래 바구니</h1>
						<p>Every object has a use</p>
					</div>
			</li>
			<li>
				<img src="../jsp/images/바구니5.JPG" width="350px">
					<div class="caption-text">
						<h1>정리함</h1>
						<p>Every object has a use</p>
					</div>
			</li>
			<li>
				<img src="../jsp/images/바구니6.JPG" width="350px">
					<div class="caption-text">
						<h1>다용도 수납함</h1>
						<p>Every object has a use</p>
					</div>
			</li>
		</ul>
	</div>
		<div class="footer">
		  <h4>브랜드 스토리 | 회사소개 | 이용약관 | 개인정보처리방침 | 공지사항 | 고객센터</h4>
		  <h4>Copyright © 2021 All rights reserved</h4>
		</div>
	</div>
</body>
</html>