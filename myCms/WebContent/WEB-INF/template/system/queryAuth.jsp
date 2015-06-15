<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<% String path = request.getContextPath();%>
		<!-- <title>查看授权信息</title>  -->
		<link rel="stylesheet" href="<%=path%>/css/jquery.datetimepicker.css" />
		<script type="text/javascript" src="<%=path%>/js/jquery.datetimepicker.js"></script>
		<div class="main-content-wrapper" style="padding:10px 10px;">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
						<form id="form" class="form-horizontal form-border" method="post"
							action="<%=path%>/member/memberController/addUserOrUpdate">
							<!-- 隐藏域 -->
							<input type="hidden" name="oldpwd" id="oldpwd" value="${member.password}" />
							<input type="hidden" name="registerTimes" id="registerTimes" value="${member.registerTime}"/>

							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">
										授权信息
									</h3>
								</div>
								<div class="panel-body">
									<div class="form-group">
										<label class="col-sm-3 control-label">
											授权码：
										</label>
										<div class="col-sm-6">
											<input type="text" id="trueName" name="trueName" 
												readonly="readonly" value="${auth.code}"
												class="form-control">
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-3 control-label">
											系统类型：
										</label>
										<div class="col-sm-6">
											<input type="text" id="age" name="age" 
												readonly="readonly" value="${auth.type}"
												class="form-control">
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-3 control-label">
											授权级别：
										</label>
										<div class="col-sm-6">
											<input type="text" id="address" name="address"
												readonly="readonly" value="${auth.status}"
												class="form-control ">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											授权开始时间：
										</label>
										<div class="col-sm-6">
											<input type="text" id="phone" name="phone"
												readonly="readonly"
												value="${auth.startTime}"
												class="form-control ">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											授权结束时间：
										</label>
										<div class="col-sm-6">
											<input type="text" id="phone" name="phone"
												readonly="readonly" 
												value="${auth.endTime}"
												class="form-control ">
										</div>
									</div>

									<div class="form-group" align="center">
										<button class="btn btn-primary" type="button"
											onclick="formsub()">
											我要续费
										</button>
										&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
										<h3>
											特维网讯温馨提示您，您的系统还可以使用${times}
										</h3>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>