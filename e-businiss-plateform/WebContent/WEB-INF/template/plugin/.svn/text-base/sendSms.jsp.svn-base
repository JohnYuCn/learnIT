<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 		<title>发送短信</title> -->
		<link href="<%=path%>/assets/css/font-awesome.min.css" rel="stylesheet" />
		<link href="<%=path%>/assets/css/animate.css" rel="stylesheet" />
		<script src="<%=path%>/assets/js/jquery-1.10.2.min.js"></script>
		<link href="<%=path%>/assets/plugins/icheck/css/_all.css" rel="stylesheet" />
		<script src="<%=path%>/assets/js/modernizr-2.6.2.min.js"></script>
		<script type="text/javascript">
</script>
<script type="text/javascript">
	function subForm(){
		clickMenu('/plugin/smsplatformcontroller/sendsms','form');
	}
</script>
		<div class="main-content-wrapper"style=" padding:10px 10px ;">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									发送短信
								</h3>
							</div>
							<div class="panel-body">
								<form id="form" class="form-horizontal form-border"
									method="post"
									action="<%=path%>/plugin/smsplatformcontroller/sendsms">
									<input type="hidden" id="id" name="id" value="${sms_return}" />
									<div class="form-group">
										<label class="col-sm-3 control-label">
											发送手机号码：
										</label>
										<div class="col-sm-6">
											<textarea class="textarea form-control" rows="5" cols="20"
												id="phone" name="phone" style="width: 100%; height: 80px"></textarea>
											<input type="button" style="margin-top: 10px;"
												class="selname" value="选择联系人" />
											<p style="padding-top: 10px;">
												如需发送多个号码，请用“,”（英文逗号）间隔。
											</p>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											短信内容：
										</label>
										<div class="col-sm-6">
											<textarea class="textarea form-control" rows="5" cols="20"
												id="txt" name="txt" style="width: 100%; height: 80px"></textarea>
										</div>
									</div>
									<div class="form-group" align="center">
										<button class="btn btn-primary" type="button" onclick="subForm()">
											提交
										</button>
										&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
										<button class="btn btn-primary" type="reset">
											重置
										</button>

									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<style type="text/css">
.zhe {
	position: absolute;
	top: 0;
	left: 0;
	background: #000;
	width: 100%;
	height: 100%;
	opacity: 0.5;
}

.shars-tab {
	position: absolute;
	top: 120px;
	left: 400px;
	width: 800px;
	height: 500px;
	background: #fff;
}

.xl-text {
	width: 400px;
}

.xl-tit {
	height: auto;
	width: 400px;
	background: #fff;
	border: 1px solid #ccc;
	font-size: 14px;
	color: #666;
	border-top: 0;
}

.xl-tit li {
	line-height: 24px;
	height: 24px;
	list-family: none;
}

.xl-tit li a {
	font-size: 14px;
	color: #666;
}
</style>


		<div class="zhe" style="display: none;"></div>
		<div class="shars-tab" style="display: none;">
			<div class="panel">
				<div class="actions pull-right">

					<i class="fa fa-times colos"></i>
				</div>
				<div class="panel-body" style="display: block;">
					<div class="tab-wrapper tab-primary">
						<ul class="nav nav-tabs">
							<li class="active">
								<a href="#home1" data-toggle="tab">短信记录</a>
							</li>
							<li class="">
								<a href="#profile1" data-toggle="tab">联系人</a>
							</li>

						</ul>


						<div class="tab-content">
							<div class="tab-pane active" id="home1">

								<div class="panel">
									<div class="panel-heading">

									</div>
									<div class="panel-body selmail">
										<c:forEach items="${list}" var="record" varStatus="row">
                                            	${record.phone}<a
												href="javascript:void(0);" class="add"
												look="${record.phone}" id="999${row.index}">+添加</a>
										</c:forEach>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="profile1">
								<div class="panel">
									<div class="panel-body">
										<input type="text" class="xl-text" id="search">
										<ul class="xl-tit" id="mailUl">

										</ul>
									</div>
									<div class="panel-body selmail">
										<c:forEach items="${groupList}" var="group">
                                             ${group.title}
                                             <br />
											<c:forEach items="${group.list}" var="mail" varStatus="row">
                                                  ${mail.name}<a
													id="888${row.index}" href="javascript:void(0);" class="add"
													look="(${mail.name})${mail.phone}">+添加</a>
											</c:forEach>
											<br />
										</c:forEach>

									</div>
								</div>

							</div>
						</div>
					</div>
				</div>

				<div class="panel-body">
					<div class="panel-heading">
						<h3 class="panel-title">
							已选择的联系人（点击可取消）
						</h3>
					</div>
					<div class="panel-body">
						<ul id="check">

						</ul>
						<input type="hidden" id="checks" />
					</div>
				</div>

				<div class="panel-body">
					<button type="button" class="suess" id="confirm">
						确定选择
					</button>
					<button type="button" class="colos">
						取消选择
					</button>
				</div>

			</div>

		</div>
		<script type="text/javascript">

$(function() {
	$("#confirm").click(function() {
		var phone = $("#phone").val();
		$("#check p").each(function() {
			var s = $(this).text();
			if (s.indexOf(")") > 0) {
				s = s.substring(s.lastIndexOf(")") + 1);
			}

			if (phone.indexOf(s) < 0) {
				s = s + ",";
				phone += s;
			}
		});
		$("#phone").val(phone);
		$(".zhe").hide();
		$(".shars-tab").hide();
	});
	$("#search")
			.keyup(
					function() {
						var text = $("#search").val();

						$
								.ajax( {
									url : "<%=path%>/plugin/smsplatformcontroller/searchMail.json",
									data : {
										mail : text
									},
									type : "post",
									async : false,
									success : function(msg) {
										$("#mailUl").text("");
										var g = msg.group;
										var m = msg.mail
										//alert(g.length);
									//alert(m.length);
									for ( var i = 0; i < g.length; i++) {
										for ( var j = 0; j < m.length; j++) {
											if (g[i].id == m[j].groupId.id) {

												$("#mailUl")
														.append(
																"<li onclick='this.parentNode.removeChild(this);'>"
																		+ m[j].name
																		+ "("
																		+ m[j].phone
																		+ ")(所属分组："
																		+ g[i].title
																		+ ")<a href='javascript:void(0);' onclick='addcont("
																		+ m[j].phone
																		+ ")' class='add' look='"
																		+ m[j].phone
																		+ "'>点击添加</a></li>");
											}
										}

									}
								}
								})
					});
	$(".add").click(
			function() {
				var look = $(this).attr("look");

				var s = look;

				$(this).unbind("click");
				$(this).html("已选择");
				var domId = $(this).attr("id");
				$("#check").append(
						"<li onclick='this.parentNode.removeChild(this);delmail("
								+ domId + ")'><p>" + look
								+ "</p>  <a href=javascript:;> 点击删除</a></li>");

			});

});

function delmail(loodelmail) {

	$("#" + loodelmail).html("+添加").bind(
			"click",
			function() {
				var look = $(this).attr("look");

				$(this).unbind("click");
				$(this).html("已选择");
				var domId = $(this).attr("id");
				$("#check").append(
						"<li onclick='this.parentNode.removeChild(this);delmail("
								+ domId + ")'><p>" + look
								+ "</p> <a href=javascript:;> 点击删除</a></li>");

			});

}

function addcont(addcon) {
     	//var phone = $("#phone").val();
     	var is=true;
		$("#check p").each(function() {
			var s = $(this).text();
			if (s.indexOf(")") >= 0) {
				s = s.substring(s.lastIndexOf(")") + 1);
			}

			if (s.indexOf(addcon)>=0) {
				alert("此联系人已经选择，请勿重复选择");
				is=false;
			}
		});
		if(is){
				$("#check").append("<li onclick='this.parentNode.removeChild(this)'><p>" + addcon+ "</p> <a href=javascript:;> 点击删除</a></li>");
		}

}
</script>
		<script type="text/javascript">
$(".selname").click(function() {
	$(".zhe").show();
	$(".shars-tab").show();
});
$(".colos").click(function() {
	$(".zhe").hide();
	$(".shars-tab").hide();
});
</script>
		<script src="<%=path%>/assets/plugins/bootstrap/js/bootstrap.min.js">
</script>
		<script src="<%=path%>/assets/js/application.js">
</script>
</div>
</div>
