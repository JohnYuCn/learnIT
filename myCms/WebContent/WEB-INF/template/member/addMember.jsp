<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>

		<!-- <title>注册会员</title> -->
		<jsp:include page="../login/common.jsp"></jsp:include>
		<link rel="stylesheet" type="text/css" href="<%=path%>/assets/plugins/easyui/themes/default/combo.css" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/assets/plugins/easyui/themes/default/combobox.css" />
		<link rel="stylesheet" href="<%=path%>/css/jquery.datetimepicker.css" />
		
		
		<script src="<%=path%>/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="<%=path%>/assets/js/application.js"></script>
		<script type="text/javascript" src="<%=path%>/js/jquery.colorpicker.js"></script>
		<script src="<%=path%>/assets/plugins/easyui/jquery.easyui.min.js"></script>
		<script type="text/javascript" src="<%=path%>/js/jquery.datetimepicker.js"></script>
		<script type="text/javascript" src="<%=path%>/js/jquery.form.js"></script>
		<script src="<%=path%>/assets/js/modernizr-2.6.2.min.js"></script>
		<script type="text/javascript">
var type = "";
var send="";
$(document).ready(function(){ 
	 $('#birthDate').datetimepicker();	
     var id = ${r_id};
     if (id == 1) {
		type = "";
		$('#userid')[0].innerText = '会员名：';
		$('#isActivation').value = '1';
		document.getElementById("sendPhone").style.display = "none";
	} else if (id == 2) {
		type = "";
		$('#userid')[0].innerText = '邮箱：';
		$('#isActivation').value = '0';
		document.getElementById("sendPhone").style.display = "none";
	} else if (id == 3) {
		$('#userid')[0].innerText = '手机号：';
		type = "phone";
		$('#isActivation').value = '1';
	}
	$('#registrationMthod').combobox( {
		url : '<%=path%>/member/memberController/queryReq.json',
		valueField : 'id',
		textField : 'templateName',
		onChange : function(n, o) {
			if (n == 1) {
				type = "";
				$('#userid').html('会员名：');
				$('#isActivation').value = '1';
				document.getElementById("sendPhone").style.display = "none";
			} else if (n == 2) {
				type = "";
				$('#userid').html('邮箱：');
				$('#isActivation').value = '0';
				document.getElementById("sendPhone").style.display = "none";
			} else if (n == 3) {
				$('#userid').html('手机号：');
				type = "phone";
				$('#isActivation').value = '1';
			}
		}
	});

	$('#sendClick').click(function() {

		$.ajax( {
			url : '<%=path%>/member/memberController/sendCode.json',
			data : {
				phone : $("#username").val()
			},
			success : function() {
				$('#sendClick').text('未收到?重新发送');
				send="1";
			}
		});
	})

});

function getUsername() {
	var username = document.getElementById("username").value;
	var id = document.getElementById("id").value;
	var url = "<%=path%>/member/memberController/distinct.json";
	$.ajax( {
		type : 'POST',
		url : url,
		data : {
			username : username,
			id : id
		},
		success : function(data) {
			if (data) {
				document.getElementById("user").style.display = "none";
				if(type=="phone"){
					document.getElementById("sendPhone").style.display = "block";
				}
				
			} else {
				document.getElementById("user").style.display = "block";
				if(type=="phone"){
					document.getElementById("sendPhone").style.display = "none";
				}
				
				document.getElementById("user").validationMessage = "用户名不能重复!";
			}
		}
	});
}

function formsub() {

	var sub = "";
	if (type == "phone") {
		if(send!="1"){
			sub="no1";
		}else{
        	$.ajax( {
				url : "<%=path%>/member/memberController/validateCode.json",
				data : {
					code : $("#checkCode").val()
				},
				async : false,
				success : function(msg) {
					sub = msg.check;
				}
			});
		}
		
	}
	if (sub == "no1") {
		alert("请发送手机验证码!");
		return false;
	}
	if (sub == "no") {
		alert("验证码错误，请重新输入");
		return false;
	}

	var flag = document.getElementById("user").style.display;
	if (flag == 'block') {
		alert("用户名不能重复!");
		return;
	}
	 
	var username = document.getElementById('username').value;
	var pwd = document.getElementById('pwd').value;
	var password = document.getElementById('password').value;
	var registrationMthod = $('#registrationMthod').combobox('getValue');
	var age=$("#age").val();
	 
	var usernameLength = ${userSet.userLimitEnd};
   
	if(registrationMthod != 2&&registrationMthod!=3){
			var userkeyword = '${userSet.reserveKeyword}';
			if(userkeyword){
				var keys = userkeyword.split(",");
				for(var i=0;i<keys.length;i++){
					if(username == keys[i]){
					    alert('该用户名不能注册!');
						return ;
					}
				}
			}
			if(username && username.length > usernameLength){
				alert("用户名长度不能大于"+usernameLength);
				return ;
			}
	}
			if(!password){
				alert('用户名不能为空!');
				return ;
			}
			if(password != pwd){
				alert('密码填写不一致!');
				return ;
			}
			var reg=/[1-99]/
			if(!reg.test(age)){
				alert("年龄格式不正确!");
				return;
			}
			if('${member.password}' != password){
				if(password.length < ${userSet.pwdLimitStart} || password.length > ${userSet.pwdLimitEnd}){
					alert('密码长度在${userSet.pwdLimitStart}至${userSet.pwdLimitEnd}之间!');
					return ;
				}
			}
//			var email = document.getElementById('email').value;
//			if(!email){
//				alert('email不能为空!');
//				return;
//			}
			
//			var emalUniqueness = ${userSet.emalUniqueness};
//			if(emalUniqueness == 1){
//				$.ajax({
//					type: 'POST',
//					url: '/member/email.json',
//					data :{
//						email : email,
//						userId : '${member.id}'
//					},
//					success:function(data) {
//						if(data == true){
//							document.forms[0].submit();
//						}else if(data == false){
//							alert('该邮箱已存在!');
//							return ;
//						}
//					}
//				});
//			}else{**/
				//document.forms[0].submit();
				//$('#form').ajaxForm(function(data){
					//alert(data);
				//});
				clickMenu('/member/memberController/addUserOrUpdate','form');
//			}
		}
	</script>

		<div class="main-content-wrapper" style="padding: 10px 10px;">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
						<form id="form" class="form-horizontal form-border" method="post"
							action="<%=path%>/member/memberController/addUserOrUpdate">
							<input type="hidden" name="oldpwd" id="oldpwd"
								value="${member.password}" />
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">
										注册会员
									</h3>
								</div>
								<div class="panel-body">

									<input type="hidden" name="id" id="id" value="${id}" />
									<input type="hidden" name="isActivation" id="isActivation"
										value="${member.isActivation}" />
									<div class="form-group">
										<label class="col-sm-3 control-label">
											注册方式:
										</label>
										<div class="col-sm-6">
											<input id="registrationMthod" name="registrationMthod"
												editable="false" value="${r_id}"
												style="height: 34px; width: 500px;" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label" id="userid">
											会员名：
										</label>
										<div class="col-sm-6">
											<input onblur="getUsername()" type="text" id="username"
												value="${member.username}" name="username" required=""
												class="form-control">
										</div>
										<div id="user" style="display: none;">
											<label class="col-sm-3 control-label">
												<font color="red">*用户名不能重复</font>
											</label>
										</div>
										<div id="sendPhone" style="display: none;">
											<label class="col-sm-3 control-label">
												<button id="sendClick" type="button">
													点击发送验证码
												</button>
												请输入验证码
												<input type="text" id="checkCode" />
											</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											密码：
										</label>
										<div class="col-sm-6">
											<input type="password" required="" value="${member.password}"
												id="password" name="password" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											重复密码：
										</label>
										<div class="col-sm-6">
											<input type="password" id="pwd" name="pwd" required=""
												value="${member.password}" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											真实姓名：
										</label>
										<div class="col-sm-6">
											<input type="text" id="trueName" name="trueName" required=""
												value="${member.trueName}" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											性别：
										</label>
										<div class="col-sm-6">
											<select class="form-control" name="gender" id="sex">
												<option value="1"  <c:if test="${member.gender==1}">selected="selected"</c:if>>
													男
												</option>
												
												<option value="2" <c:if test="${member.gender==2}">selected="selected"</c:if>>
													女
												</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											年龄：
										</label>
										<div class="col-sm-6">
											<input type="text" id="age" name="age" required=""
												value="${member.age}" class="form-control">
										</div>
									</div>
									<!-- div class="form-group">
										<label class="col-sm-3 control-label">
											邮箱：
										</label>
										<div class="col-sm-6">
											<input type="text" id="email" name="email"
												value="${member.email}" class="form-control ">
										</div>
									</div-->
									<div class="form-group">
										<label class="col-sm-3 control-label">
											地址：
										</label>
										<div class="col-sm-6">
											<input type="text" id="address" name="address"
												value="${member.address}" required="" class="form-control ">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											出生日期：
										</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="birthDate" name="birthDate">
										</div>
										
									</div>
									<!-- div class="form-group">
										<label class="col-sm-3 control-label">
											联系电话：
										</label>
										<div class="col-sm-6">
											<input type="text" id="phone" name="phone"
												value="${member.phone}" required="" class="form-control ">
										</div>
									</div>-->
								

								
									<div class="form-group" align="center">
										<button class="btn btn-primary" type="button"
											onclick="formsub()">
											提交
										</button>
										&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
										<button class="btn btn-primary" type="reset">
											重置
										</button>
									</div>
									</div>
									</div>
						</form>
					</div>
				</div>
			</div>
		</div>

