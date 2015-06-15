<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
	<head>

		<title>特维内容管理系统</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<!-- Favicon -->
		<link rel="shortcut icon" href="../assets/img/favicon.ico"
			type="image/x-icon">
		<!-- Bootstrap core CSS -->
		<link rel="stylesheet"
			href="../assets/plugins/bootstrap/css/bootstrap.min.css">
		<!-- Fonts from Font Awsome -->
		<link rel="stylesheet" href="../assets/css/font-awesome.min.css">
		<!-- CSS Animate -->
		<link rel="stylesheet" href="../assets/css/animate.css">
		<!-- Custom styles for this theme -->
		<link rel="stylesheet" href="../assets/css/main.css">
		<!-- Vector Map  -->
		<link rel="stylesheet"
			href="../assets/plugins/jvectormap/css/jquery-jvectormap-1.2.2.css">
		<!-- ToDos  -->
		<link rel="stylesheet" href="../assets/plugins/todo/css/todos.css">
		<!-- Morris  -->
		<link rel="stylesheet" href="../assets/plugins/morris/css/morris.css">
		<!-- Fonts -->
		<!-- <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'> -->
		<!-- Feature detection -->
		<script src="../assets/js/modernizr-2.6.2.min.js">
</script>
		<script src="../assets/js/jquery-1.10.2.min.js">
</script>

	</head>


	<body>
		<div class="main-content-wrapper">

			<ul class="breadcrumb">
				<li
					style="width: 100%; padding-left: 10px; font-size: 14px; text-align: center;">
					<p>
						欢迎使用特维CMS管理系统
					</p>
				</li>
			</ul>



			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							登录信息
						</h3>
					</div>

					<div class="panel-body">
						<c:forEach var="map" items="${map }">
						登录者：<b>${userName}</b> 用户组：<b>${map.usergroup}</b>
							<br />
						这是您第<b>${map.loginnum}</b>次登录，上次登录时间：${map.lastlogintime}，登录IP：${map.clientIp}
						${map.loginInfo.lastLoginTime }
					</c:forEach>

					</div>
				</div>
			</div>




			<table style="width: 100%;">
				<tr>
					<td style="width: 50%">
						<div class="col-md-12">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">
										系统信息
									</h3>
								</div>

								<div class="panel-body">
									操作系统：${map.os }<br/>
									JDK版本：${map.version }   <br/>
									中间件：Apache Tomcat6.0<br/>
									Mysql版本：5.0.67   <br/>
									服务器地址：${map.servername }<br/>
								</div>
							</div>
						</div>
					</td>
					<td style="width: 50%">
						<div class="col-md-12">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">
										官方信息
									</h3>
								</div>

								<div class="panel-body">
									特维网讯官网：
									<a href="http://www.tvdns.cn" target="_blank">www.tvdns.cn</a>
									<br />
									特维CMS产品：
									<a href="http://www.tvcms.com" target="_blank">www.tvcms.com</a>
									<br />
									<br/>
									<br/>
									<br/>
								</div>
							</div>
						</div>
					</td>
				</tr>
			</table>

		</div>

	</body>
</html>
