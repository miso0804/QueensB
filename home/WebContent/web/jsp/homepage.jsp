<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&family=Rubik:ital,wght@1,700&family=Unica+One&display=swap" rel="stylesheet">
<script type="text/javascript">

</script>
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
/* 드롭다운 메뉴바*/
.menu{
	height: 50px;
	background-color: #2F4F4F; 
	color: white;
	font-size: 20px;
	font-family: 'Jua', sans-serif;
	margin-bottom: 40px;
}
.menu ul{
	width: 500px;
	margin: 0 auto;
}
.menu .content-bar>li{
	float: left;
	width: 25%;
	height: 50px;
	text-align: center;
	position: relative;
}
.menu .content-bar>li:hover .sub{
	display: block;
}
.menu .content-bar>li a{
	display: block;
}
.menu .content-bar>li a:hover{
	
	color: #fff;
}
.menu .content-bar .sub{
	position: absolute;
	top: 50px;
	left: -38px;
	width: 100%;
	display: none;
	margin: auto;
}
.menu .content-bar .sub li{
	background: #F7BE81;
	color: white;
}
.menu .content-bar .sub li a:hover{
	background: #BDBDBD;
}
.content-bar , .content-bar li {
	list-style: none;
}
.content > div{
	display: inline-block;
	position: relative;
	margin-right: 20px;
	padding-inline: 20px;
	float: left;
	cursor: pointer;
}
//컨텐츠부분 사진 hover css 
.gallerylist{
	margin: 0 auto;
}
.gallerylist > ul{font-size: 0;}
.gallerylist > ul > li{
	display: inline-block;
	vertical-align: top;
}
.gallerylist > ul > li > a{
	display: block;
	width: auto;
	text-decoration: none;
	margin: 5px;
}
.gallerylist > ul > li > a .screen{
	position: relative;
	overflow: hidden;
}
.gallerylist > ul > li >a .screen .top{
	position: absolute;
	bottom: 100%;
	left: 150px;
	z-index: 2;
	color: #fff;
	font-size: 22px;
	font-weight: 900;
	transition: all .35s;
}
.gallerylist > ul > li >a .screen .bottom{
	position: absolute;
	top: 100%;
	left: 150px;
	z-index: 2;
	color: #fff;
	font-size: 12px;
	transition: all .35s;
}
.gallerylist > ul > li > a .screen img{width: 100%;}
.gallerylist > ul > li > a:hover .top{bottom: 50%;}
.gallerylist > ul > li > a:hover .bottom{top: 50%;}
.gallerylist > ul > li > a .screen::after{
	content: '';
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0,0,0,.5);
	z-index: 1;
	opacity: 0;
	transition: all .35s;
}
.gallerylist > ul > li > a:hover .screen::after{opacity: 1;} 
.footer{
	clear: both;
	background-color: #BDBDBD;
	padding: 20px;
	height: 150px;
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
		<!-- 드롭다운메뉴 -->
		<div class="menu">
			<ul class="content-bar">
				<li><a>조명</a>
					<ul class="sub">
						<li><a href="#">장스탠드</a></li>
						<li><a href="#">무드등</a></li>
					</ul></li>
				<li><a>카페트/러그</a></li>
				<li><a>베스트상품</a>
					<ul class="sub">
						<li><a href="#">가구</a></li>
						<li><a href="#">가전</a></li>
					</ul></li>
			</ul>

		</div>
		<div class="content">
		  <h2 style="margin-left: 68px">Home Deco</h2>
		      <div class="gallerylist">
  				<ul>
    				<li>
      					<a href="mirror.jsp">
        					<div class="screen">
          						<div class="top">거울</div>
          						<div class="bottom">더 알아보기</div>
          						<img src="../jsp/images/거울.jpg" style="width:300px">
        					</div>
      					</a>
    				</li>
    				<li>
      					<a href="basket.jsp">
        					<div class="screen">
          						<div class="top">수납함</div>
          						<div class="bottom">더 알아보기</div>
          						<img src="../jsp/images/수납함.jpg" style="width:300px">
        					</div>
      					</a>
    				</li>
    				<li>
      					<a href="">
        					<div class="screen">
          						<div class="top">시계</div>
          						<div class="bottom">더 알아보기</div>
          						<img src="../jsp/images/시계.jpg" style="width:300px">
       						 </div>
      					</a>
    				</li>
    				<li>
      					<a href="">
        					<div class="screen">
          						<div class="top">식물조화</div>
          						<div class="bottom">더 알아보기</div>
          						<img src="../jsp/images/식물조화.jpg" style="width:300px">
       						 </div>
      					</a>
    				</li>
    				<li>
      					<a href="">
        					<div class="screen">
          						<div class="top">실내 향</div>
          						<div class="bottom">더 알아보기</div>
          						<img src="../jsp/images/실내 향.jpg" style="width:300px">
       						 </div>
      					</a>
    				</li>
    				<li>
      					<a href="">
        					<div class="screen">
          						<div class="top">액자</div>
          						<div class="bottom">더 알아보기</div>
          						<img src="../jsp/images/액자.jpg" style="width:300px">
       						 </div>
      					</a>
    				</li>
    				<li>
      					<a href="">
        					<div class="screen">
          						<div class="top">장식</div>
          						<div class="bottom">더 알아보기</div>
          						<img src="../jsp/images/장식.jpg" style="width:300px">
       						 </div>
      					</a>
    				</li>
    				<li>
      					<a href="">
        					<div class="screen">
          						<div class="top">양초</div>
          						<div class="bottom">더 알아보기</div>
          						<img src="../jsp/images/양초.jpg" style="width:300px">
       						 </div>
      					</a>
    				</li>
  				</ul>
			</div>
		</div>
		<div class="footer">
		  <h4>브랜드 스토리 | 회사소개 | 이용약관 | 개인정보처리방침 | 공지사항 | 고객센터</h4>
		  <h4>Copyright © 2021 All rights reserved</h4>
		</div>
	</div>
</body>
</html>