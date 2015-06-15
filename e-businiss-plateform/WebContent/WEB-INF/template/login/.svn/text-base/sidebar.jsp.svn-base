<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
  <head>
    
    <title>特维内容管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
	<link rel="shortcut icon" href="../assets/img/favicon.ico" type="image/x-icon">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Fonts from Font Awsome -->
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css">
    <!-- CSS Animate -->
    <link rel="stylesheet" href="../assets/css/animate.css">
    <!-- Custom styles for this theme -->
    <link rel="stylesheet" href="../assets/css/main.css">
    <!-- Vector Map  -->
    <link rel="stylesheet" href="../assets/plugins/jvectormap/css/jquery-jvectormap-1.2.2.css">
    <!-- ToDos  -->
    <link rel="stylesheet" href="../assets/plugins/todo/css/todos.css">
    <!-- Morris  -->
    <link rel="stylesheet" href="../assets/plugins/morris/css/morris.css">
    <script src="../assets/js/modernizr-2.6.2.min.js"></script>

  </head>
  	<style type="text/css">
		body	{background:#F1F2F7;}
		iframe{ background-color:transparent; border:0; padding:0; margin:0;}
    </style>

<body>
	<div class="sidebar" style="margin:0;">
		<div class="nano" id="leftside-navigation">
			<ul class="nano-content">
				<c:forEach var="power" items="${powerList}">
				<li class="sub-menu">
				<a href="javascript:void(0);">
					<c:if test="${not empty power.imgPath }"><i><img src="../img/icons/${power.imgPath}" width="16" height="16" ></i></c:if>
					<span><c:out value="${power.name}"/></span><i
						class="arrow fa fa-angle-right pull-right"></i></a>
					<ul style="display: none;">
                        <c:forEach var="subPower" items="${subPowerList}">
                        <c:if test="${subPower.parentId==power.id}">
						<li><a href="<%=path%><c:out value="${subPower.enterUrl}"/>" target="mainFrame"><c:out value="${subPower.name}"/></a></li>
						</c:if>
						</c:forEach>
					</ul>
				</li>
				</c:forEach>
			</ul>
		</div>
	</div>

	<script src="../assets/js/jquery-1.10.2.min.js"></script>
	<script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="../assets/js/application.js"></script>

</body>
</html>
