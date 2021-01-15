<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.gallerylist{
	margin-left: 100px;
}
ul > li{
	display: flex;
	vertical-align: top;
}
ul > li > a{
	display: block;
	width: auto;
	text-decoration: none;
	margin: 5px;
}
ul > li > h1{
	position: relative;
}
ul > li > a .screen{
	position: relative;
	overflow: hidden;
}
ul > li >a .screen .top{
	position: absolute;
	bottom: 98%;
	left: 150px;
	z-index: 2;
	color: #fff;
	font-size: 22px;
	font-weight: 900;
	transition: all .35s;
}
ul > li >a .screen .bottom{
	position: absolute;
	top: 100%;
	left: 150px;
	z-index: 2;
	color: #fff;
	font-size: 12px;
	transition: all .35s;
}
ul > li > a .screen img{width: 100%;}
ul > li > a:hover .top{bottom: 10%;}
ul > li > a:hover .bottom{top: 10%;}
ul > li > a .screen::after{
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
ul > li > a:hover .screen::after{opacity: 1;}
</style>
<body>
<div class="gallerylist">
  <ul>
    <li>
      <a href="">
      <h1>1.</h1>
        <div class="screen">
          <div class="top">양초.홀더</div>
          <div class="bottom">더 알아보기</div>
          <img src="../jsp/images/book1.jpg" style="width:200px">
        </div>
      </a>
    </li>
    <li>
      <a href="">
        <div class="screen">
          <div class="top">장식용품</div>
          <div class="bottom">더 알아보기</div>
          <img src="../jsp/images/book2.jpg" style="width:200px">
        </div>
      </a>
    </li>
    <li>
      <a href="">
        <div class="screen">
          <div class="top">양초</div>
          <div class="bottom">더 알아보기</div>
          <img src="../jsp/images/book3.jpg" style="width:200px">
        </div>
      </a>
    </li>
    <li>
      <a href="">
        <div class="screen">
          <div class="top">양초</div>
          <div class="bottom">더 알아보기</div>
          <img src="../jsp/images/book4.jpg" style="width:200px">
        </div>
      </a>
    </li>
    <li>
      <a href="">
        <div class="screen">
          <div class="top">양초</div>
          <div class="bottom">더 알아보기</div>
          <img src="../jsp/images/book5.jpg" style="width:200px">
        </div>
      </a>
    </li>
  </ul>
</div>
</body>
</html>
