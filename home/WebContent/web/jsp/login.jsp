<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%><%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../include/header.jsp" %>
<title>Home</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<script src="../include/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btnLogin").click(function(){
		var param="userid="+$("#userid").val()+"&userpw="+$("#userpw").val();
		$.ajax({
			type: "post",
			url: "/home/jsp_servlet/login.do",
			data: param,
			success: function(result) {
				$("#result").html(result);
				window.location.href="homepage.jsp";
			}
		});
	});
});
</script>
<style type="text/css">
a{
	all:unset;
}
body{
	text-align: center;
	box-sizing: border-box;
	background-color: #FAEBD7;
}
h1{
	color: #2F4F4F;
	font-family: 'Jua', sans-serif;
	letter-spacing: 3px;
}
.login{
	width: 600px;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	margin-top: 250px;
}
.login-form{
	width: 70%;
	margin-left: auto;
	margin-right: auto;
}
.form-in{
	width: 330px;
	height: 40px;
	padding: 10px;
}
#userpw{
	margin-top: 20px;
}
#btnLogin{
	margin-top: 20px;
	font-size: 18px;
	color: #2F4F4F;
}
</style>
</head>
<body>
	<div class="login">
		<h1><a href="homepage.jsp">QueensB</a></h1>
		<div class="login-form">
			<form name="form1" method="post">
				<div class="form">
					<input placeholder="ID" class="form-in" id="userid">
				</div>
				<div class="form">
					<input placeholder="PW" type="password" class="form-in" id="userpw">
				</div>
				<div class="form">
					<button id="btnLogin" type="button" class="form-in">LOGIN</button>
					<div id="result"></div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>