<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>会员登录</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <style type="text/css">
	body { padding:0; margin:0;}	
	.rel { position:relative;}
	.abs { position:absolute;}
	.bg { right:0; left:0; width:100%; height:100%；}
	.login-main { padding:0; margin:0; width:780px; height:370px; margin-left:-390px; top:200px; left:50%;}
	.login-main h3{ height:40px; line-height:40px; font-size:18px; color:#fff; margin:0;}
	.login-text { border-radius:10px; background:#fff; padding:5px 10px;filter:alpha(opacity=70); -moz-opacity:0.7; -khtml-opacity: 0.7; opacity: 0.7;}
	.login-text ul { width:400px; margin:100px auto; padding:0;}
	.login-text ul li{ list-style:none; height:42px; line-height:42px; margin-bottom:10px;}
	.login-text ul li label { width:65px; display:block; text-align:right; float:left; height:16px; margin-right:20px;}
	.login-text ul li .text { float:left; height:16px; padding:10px 10px; background:#cfe0f6; border-radius:5px; border:1px solid #95a7bd; width:270px;}
	.login-text ul li .button { border:0; height:42px; line-height:42px; padding:0; background:#0a3265; width:292px; border-radius:5px; font-size:14px; color:#fff;}
	.login-text ul li a { color:#0a3265;font-size:14px;}.
	.clearfix:after { visibility: hidden;display: block;font-size: 0;content: " ";clear: both;height: 0;}
	.clearfix { display: inline-table; }/* Hides from IE-mac \*/
	* html .clearfix { height: 1%; }
	.clearfix { display: block; }/* End hide from IE-mac */
	
	</style>

		<script src="<%=path%>/assets/js/jquery-1.10.2.min.js"></script>
		           
		<script language="JavaScript">
			function CheckLogin() {
				if (document.getElementById("username").value == "") {
					alert("用户名不能为空！");
					document.getElementById("username").focus();
					return;
				}
				if (document.getElementById("password").value == "") {
					alert("密码不能为空！");
					document.getElementById("password").focus();
					return;
				}
		
				$.ajax( {
					type : "get",
					url : "<%=path%>/member/login.json",
					data :{
						contUrl : '${url}',
						userName : document.getElementById("username").value,
						pwd : document.getElementById("password").value
					},
					success : function(msg) {
						if (msg.loginFalg == "false") {
							alert("用户名和密码错误!");
							return ;		
						} 
						if(msg.loginFalg == "true") {
							window.location.href='<%=path%>${url}';
						}
					}
				})
			}
		</script>
	</head>
	<style type="text/css">
	
		#mlogin { background: url(<%=path%>/assets/yiyuan/images/bg.jpg) no-repeat center center;}
		#mlogin img{ display: none;}
		#mlogin .login-main { margin-top:1em; position: inherit; margin-left: 0; width: 90%; margin: 0 auto;}
		#mlogin .login-main ul { width: 18em; margin: 0 auto; padding-top: 1em;}
		#mlogin .login-main ul label { float: left;}
		#mlogin .login-text ul li .text { width: auto;}
		#mlogin .login-text ul li .button { width: auto; text-align: center; display: inline-block; vertical-align: middle; padding-left: 1em; padding-right: 1em;}
	</style>
	<body id="">
		<img src="<%=path%>/assets/yiyuan/images/bg.jpg" class="abs bg" />

		<div class="login-main abs">
			<h3>會員登錄</h3>
		    
		    <div class="login-text clearfix">
		    	<ul class="clearfix">
		        	<li><label>用戶名:</label><input type="text" id="username" class="text" /></li>
		        	<li><label>密碼:</label><input type="password" id="password" class="text" /></li>
		            <li><label></label><button class="button" onclick="CheckLogin()">提交</button></li>
					<li><label></label><a href="<%=path%>/register.html">免費註冊</a>&nbsp;&nbsp;&nbsp;<a href="/">返回首頁</a></li>
		        </ul>
		    </div>
		</div>
		
		 <script type='text/javascript'>
						var ua = navigator.userAgent;
							var ipad = ua.match(/(iPad).*OS\s([\d_]+)/),
							    isIphone = !ipad && ua.match(/(iPhone\sOS)\s([\d_]+)/),
							    isAndroid = ua.match(/(Android)\s+([\d.]+)/),
							    isMobile = isIphone || isAndroid;
								if(ipad){
									$("body").attr("id","");
									}else if(isMobile) {
							        $("body").attr("id","mlogin");
						    }
					</script> 
	</body>
</html>