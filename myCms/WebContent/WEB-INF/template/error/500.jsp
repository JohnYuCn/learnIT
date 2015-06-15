<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>错误页面</title>
	<!-- begin base -->
	<link href="<%=path %>/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%=path %>/assets/css/font-awesome.min.css" rel="stylesheet" />
	<link href="<%=path %>/assets/css/animate.css" rel="stylesheet" />
	<link href="<%=path %>/assets/css/main.css" rel="stylesheet" />
    <link rel="stylesheet" href="<%=path %>/assets/plugins/dataTables/css/dataTables.css" />
	<link rel="stylesheet" href="<%=path %>/assets/plugins/jvectormap/css/jquery-jvectormap-1.2.2.css"/>
	<link rel="stylesheet" href="<%=path %>/assets/plugins/todo/css/todos.css"/>
	<link rel="stylesheet" href="<%=path %>/assets/plugins/morris/css/morris.css"/>
	<link rel="stylesheet" href="<%=path %>/assets/plugins/icheck/css/_all.css"/>
	<script src="<%=path %>/assets/js/jquery-1.10.2.min.js"></script>
	<script src="<%=path %>/assets/js/modernizr-2.6.2.min.js"></script>
	<!-- end base -->
	<script type="text/javascript">
    var flag = '${requestScope.msgFlag}';
	if(flag){
		if(confirm('登陆超时，是否重新登陆!')){
			window.top.location = "<%=path %>/login/admin";
		};
	};
</script>
</head>
<body>
<section id="error-container">
        <div class="block-error">
            <header>
                <h1 class="error">500</h1>
            </header>
            <p class="text-center">非常遗憾，您的操作导致系统异常，请联系管理员或者返回！</p>
            <div class="row">
                <div class="col-md-6">
                    <a class="btn btn-info btn-block btn-3d" href="<%=path %>">网站首页</a>
                </div>
                <div class="col-md-6">
                    <button class="btn btn-primary btn-block btn-3d" onclick="history.back();">后台首页</button>
                </div>
            </div>
        </div>
</section>
    <!--Global JS-->
    <script src="<%=path %>/assets/js/jquery-1.10.2.min.js"></script>
    <script src="<%=path %>/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=path %>/assets/plugins/waypoints/waypoints.min.js"></script>
    <script src="<%=path %>/assets/js/application.js"></script>
</body>
</html>