<!DOCTYPE HTML>
<html lang="zxx">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<script>
	function verify() {

	}

</script>

<head>
	<title>Home</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content=""
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="<%=basePath%>css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="https://www.jq22.com/jquery/font-awesome.4.7.0.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	
	<!-- //web-fonts -->
</head>

<body>
	<!-- bg effect -->
	<div id="bg">
		<canvas></canvas>
		<canvas></canvas>
		<canvas></canvas>
	</div>
	<!-- //bg effect -->
	<!-- title -->
	<h1>学生平时成绩查询系统</h1>
	<!-- //title -->
	<!-- content -->
	<div class="sub-main-w3">
		<form action="/J2EE/index" method="post">
			<h2>用户登陆
				<i class="fa fa-long-arrow-down"></i>
			</h2>
			<div class="form-style-agile">
				<label>
					<i class="fa fa-user"></i>
					用户名
				</label>
				<input placeholder="Username" name="Name" type="text" value="admin" required="">
				<span style="color: white">${msg}</span>
			</div>
			<div class="form-style-agile">
				<label>
					<i class="fa fa-unlock-alt"></i>
					密码
				</label>
				<input placeholder="Password" name="Password" type="password" value="123456" required="">
			</div>
			<!-- checkbox -->
			<div class="wthree-text">
				<ul>
					<li>
						<label class="anim">
							<input type="checkbox" class="checkbox"  required="">
							<span>自动登陆</span>
						</label>
					</li>
					<li>
						<a href="#">忘记密码?</a>
					</li>
				</ul>
			</div>
			<!-- //checkbox -->
			<input type="submit" value="登陆">
		</form>
	</div>
	<!-- //content -->

	<!-- copyright -->
	<div class="footer">
		<p>皮皮马.</p>
	</div>
	<!-- //copyright -->

	<!-- Jquery -->
	<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<!-- //Jquery -->

	<!-- effect js -->
	<script src="<%=basePath%>js/canva_moving_effect.js"></script>
	<!-- //effect js -->
</body>
</html>