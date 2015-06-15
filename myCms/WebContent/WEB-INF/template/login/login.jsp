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
    <title>特维内容管理系统</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="shortcut icon" href="<%=path%>/assets/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="<%=path%>/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=path%>/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=path%>/assets/css/animate.css">
    <link rel="stylesheet" href="<%=path%>/assets/css/style.css">

		<script language="JavaScript">
var isSub = true;

function CheckLogin() {
	if (document.MyForm.username.value == "") {
		alert("用户名不能为空！");
		document.MyForm.username.focus();
		return;
	}
	if (document.MyForm.password.value == "") {
		alert("密码不能为空！");
		document.MyForm.password.focus();
		return;
	}
	if ($("#loginNum").val() == 1) {
		if (document.MyForm.verifycode.value == "") {
			alert("验证码不能为空！");
			document.MyForm.verifycode.focus();
			return;
		}

		$.ajax( {
			type : "get",
			url : "<%=path%>/login/checkVerifycode/" + $("#verifycode").val(),
			cache : false,
			success : function(msg) {

				if (msg == "0") {
					alert("验证码错误！");
					$("#verifycode").focus();

				} else {
					loginVerify();
				}
			}
		})

	} else {
		loginVerify();
	}

}



function loginVerify(){
   var username = document.MyForm.username.value;
   $.ajax( {
		type : 'POST',
		url : "<%=path%>/login/loginVerify.json",
		data :{
			username : username
		},
		success : function(msg) {
			if(msg == "error"){
				alert('系统出错请联系管理员!');
			}else if(msg && msg != "error"){
				alert('请'+msg+'分钟后在进行登陆!');
			}else{
				$("#MyForm").submit();
			}
		}
	});
}

function updateCertPic() {
	var verify = document.getElementById('certPic');
	verify
			.setAttribute('src', '<%=path%>/login/addCertPic?it=' + Math
					.random());
}
</script>
	</head>

	<body class="gray-bg">
		<div class="middle-box text-center loginscreen  animated fadeInDown">
		  <div>
            <div>
				<h1 class="logo-name">IN+</h1>
			</div>
		     <form  class="m-t" action="doLogin" method="post" name="MyForm" id="MyForm" role="form">
		    	<input type="hidden" value="chklogin" name="reaction">
				<input type="hidden" value="${userset.loginNum}" id="loginNum">
                <div class="form-group">
                	 <input name="username" id="username" type="text" class="form-control" value="${userset.loginNum}" placeholder="请输入用户名">
                </div>
                <div class="form-group">
                    <input name="password" id="password" type="password"  class="form-control" placeholder="请输入密码">
                </div>
                <!-- 验证码 -->
				<c:if test="${userset.loginNum==1}">
					<div class="form-group">
						<div style="float: left;">
							<input type="text" name="verifycode" class="form-control" id="verifycode" size="16" maxlength="5" placeholder="请输入验证码" style="width: 130px;">
						</div>
						<div style="float: left;padding: 0px 4px;">
							<img id="certPic" style="CURSOR: pointer" onclick="updateCertPic()" height="34" width="80"alt="验证码,看不清楚?请点击刷新验证码" src="<%=path%>/login/addCertPic">
						</div>
						<div style="float: left;padding: 6px 0px 0px 0px;">
							<a href="javascript:void(0)" onclick="updateCertPic()" style="color: #330000； ">点击换一张图</a>
						</div><br/>
					</div><br/>
				</c:if>
                <div class="form-group">
                	<button type="button" onclick="CheckLogin()" class="btn btn-primary block full-width m-b">登　录</button>
                </div>
               
			</form>
			<p class="m-t"><strong>Copyright</strong> &copy; 2014 北京特维网讯技术有限公司   </p>
		</div>
	</div>
    <!--Global JS-->
<script type="text/javascript">
 $('input[name=password]').bind('keypress',function(event){
            if(event.keyCode == "13")    
            {
                CheckLogin();
            }
    });
 
</script>
	<script src="<%=path%>/assets/js/jquery-2.1.1.js"></script>
    <script src="<%=path%>/assets/js/bootstrap.min.js"></script>	
	</body>
</html>