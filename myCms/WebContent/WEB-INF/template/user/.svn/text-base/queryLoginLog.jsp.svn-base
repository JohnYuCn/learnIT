<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>
<div id="tableDiv">
		<!-- <title>系统登录日志</title> -->
	<link rel="stylesheet" href="<%=path%>/css/jquery.datetimepicker.css" />
	<script type="text/javascript" src="<%=path%>/js/jquery.datetimepicker.js"></script>
		<script type="text/javascript">
	function delLoginLog() {
		var url = "/user/userController/deleteLoginLog.html";
		window.location.href = url;
	}
	
	$(document).ready(function() {
		$("#checkAll").click(function() {
			if ($("#checkAll").is(':checked')) {
				$("input[name='log']").prop("checked", true);
			} else {
				$("input[name='log']").prop("checked", false);
			}
		});
	
		//判读是否是删除按钮
			$("#deleteLog").click(function() {
				var checkArray = "";//获取选择的数据
					$("input[name='log']:checked").each(function(i) {
						if (i == 0) {
							checkArray = $(this).val();
						} else {
							checkArray = checkArray + "," + $(this).val();
						}
					});
				   if(checkArray==""){
			    	alert("请选择数据！");
			    	return;
			    }
				   //执行删除
				   clickMenu('/user/userController/dele/'+ checkArray + '.html');
					
				});
			$("#sub").click(function() {
				$("#userName").val($("#userName1").val());
				$("#loginState").val($("#loginState1").val());
				$("#loginTime").val($("#loginTime1").val());
				$("#start").val(0);
				$("#limit").val(20);
				$("#currPage").val(0);
				clickMenu('/user/userController/queryLoginLog','form');
			});	
			$("#res").click(function() {
				$("#userName").val('');
				$("#userName1").val('');
				$("#loginState").val('');
				$("#loginState1").val('0');
				$("#loginTime").val('');
				$("#loginTime1").val('');
			});
		});
</script>
		<div class="main-content-wrapper" style="padding: 10px 10px;">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default form-horizontal form-border">

							<div class="panel-heading">
								<h3 class="panel-title">
									查询条件
								</h3>

							</div>

							<div class="panel-body">


								<div class="clearfix col-sm-4" >
									<label class="control-label pull-left">
										用户名：
									</label>
									<div class="col-sm-8 " style="padding-left: 0px;">
										<input type="text" class="form-control" id="userName1"
											value="${userLoginLog.userName}">
									</div>
								</div>
								
								<div class="clearfix col-sm-4" >
									<label class="control-label pull-left">
										登录时间：
									</label>
									<div class="col-sm-8 " style="padding-left: 0px;">
										<input type="text" class="form-control" id="loginTime1"
										value="<fmt:formatDate value='${userLoginLog.loginTime}'
														pattern='yyyy-MM-dd'/>" >
									</div>
								</div>
									<div class="clearfix col-sm-4" >
									<label class="control-label pull-left">
										登录状态：
									</label>
									<div class="col-sm-8 " style="padding-left: 0px;">
										<select id="loginState1" class="form-control">
										   <option value="0" <c:if test="${userLoginLog.loginState==0}" >selected="selected" </c:if>>全部</option>
										   <option value="1" <c:if test="${userLoginLog.loginState==1}" >selected="selected" </c:if>>登录成功</option>
										   <option value="2" <c:if test="${userLoginLog.loginState==2}" >selected="selected" </c:if>>用户名不存在</option>
										   <option value="3" <c:if test="${userLoginLog.loginState==3}" >selected="selected" </c:if>>用户名或密码错误</option>
										</select>
									</div>
								</div>
							</div>

							<div class="panel-body" style="text-align: center;">
								<button type="button" class="btn btn-primary btn-trans"
									style="margin-right: 20px;" id="sub">
									查询
								</button>
								<button type="button" id="res" class="btn btn-primary btn-trans">
									重置
								</button>
							</div>

						</div>
						<div class="panel panel-default" style="position: relative;">
							<div class="panel-heading">
								<h3 class="panel-title">
									系统登录日志
								</h3>
								<div class="actions pull-right" style="margin-top: 25px">
									<button class="btn btn-primary" type="button"
										id="deleteLog">
										批量删除
									</button>
								</div>
							</div>
							
							<div class="panel-body">
								<table id="example" class="table table-striped table-bordered"
									cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>
												<input type="checkbox" id="checkAll" />
												
											</th>
											<th>序号</th>
											<th>
												用户名
											</th>
											<th>
												登录状态
											</th>
											<th>
												登录时间
											</th>
											<th>
												登录IP
											</th>
											<th>
												操作
											</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="log" items="${paging.object}" varStatus="rownum">
											<tr>
												<td>
													<input type="checkbox" name="log" value="${log.id}"/>
												</td>
												  <td>${rownum.index+1+paging.paging.start}</td>
												<td>
													${log.userName}
												</td>
												<td>
													<c:choose>
														<c:when test="${log.loginState==1}">成功登录</c:when>
														<c:when test="${log.loginState==2}">用户名不存在</c:when>
														<c:when test="${log.loginState==3}">密码错误</c:when>
													</c:choose>
												</td>
												<td>
												<fmt:formatDate value="${log.loginTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
												</td>
												<td>
													${log.loginIp}
												</td>
												<td>
													<a
														href="<%=path%>/user/userController/dele/${log.id}.html">删除</a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
									 <tr>
                                    	<jsp:include  page="../public/public.jsp" />
                                    </tr>
								</table>
								<form action="<%=path %>/user/userController/queryLoginLog" id="form" method="post">
									<!-- 查询条件所需 -->
									<input type="hidden"  id="userName"   name="userName" value="${userLoginLog.userName}">
									<input type="hidden" id="loginState"  name="loginState" value="${userLoginLog.loginState}">
									<input type="hidden"  id="loginTime"  name="loginTimes" value="<fmt:formatDate value='${userLoginLog.loginTime}'
													 	pattern='yyyy-MM-dd HH:mm:ss' />" >
									
									
									<!-- 查询条件所需 -->
							 	<input type="hidden" id="start" name="start" value="${paging.paging.start}" />
							 	<input type="hidden" id="limit" name="limit" value="${paging.paging.limit}" />
							 	<input type="hidden" id="currPage" name="currPage" value="${paging.paging.currPage}" />
							 </form>
							
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		    				<script type="text/javascript">
$('#loginTime1').datetimepicker();
</script>
</div>