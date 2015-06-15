<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%String path=request.getContextPath(); %>
<div id="tableDiv">
		<!-- <title>消息推送列表</title> -->
		<link rel="stylesheet" href="<%=path%>/css/jquery.datetimepicker.css" />
		<script type="text/javascript" src="<%=path%>/js/jquery.datetimepicker.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
			$('#sendTime1').datetimepicker();	
			//复选框选择
				$("#chkAll").click(function() {
					if ($("#chkAll").is(':checked')) {
						$("input[name='checkboxNode']").prop("checked", true);
					} else {
						$("input[name='checkboxNode']").prop("checked", false);
					}
				});

				$("#res").click(function() {
					$("#domainName1").val("");
					$("#status1").val("0");
				});

				$("#delete")
						.click(function() {
							var checkArray = "";//获取选择的数据
								$("input[name='checkboxNode']:checked").each(
										function(i) {
											if (i == 0) {
												checkArray = $(this).val();
											} else {
												checkArray = checkArray + ","
														+ $(this).val();
											}
										});
								if (checkArray == "") {
									alert("请选择数据！");
									return;
								}
								var url = "<%=path%>/customer/customerController/deleteCustomer/"
										+ checkArray + ".html";
								window.location.href = url;
							});
				$("#sub").click(function() {

					$("#domainName").val($("#domainName1").val());
					$("#sendTimes").val($("#sendTime1").val());

					$("#start").val(0);
					$("#limit").val(20);
					$("#currPage").val(0);
					//$("#form").submit();
					clickMenu('/system/MessagePushController/findMessagePush.html','form');
				});
			});
function sendTime1Clean(){
	$('#sendTime1').val('');
}
</script>

		<div class="main-content-wrapper" style="padding:10px 10px;">
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
										推送时间：
									</label>
									<div class="col-sm-8" style="padding-left:0px;">
										<input type="text" class="form-control" id="sendTime1" value="<fmt:formatDate value="${msg.sendTime}" pattern="yyyy-MM-dd"/>">
									</div>
								</div>

							</div>
							<div class="panel-body" style="text-align: center;">
								<button type="button" class="btn btn-primary btn-trans"
									style="margin-right: 20px;" id="sub">
									查询
								</button>
								<button type="button" class="btn btn-primary btn-trans" id="res" onclick="sendTime1Clean()">
									重置
								</button>
							</div>
						</div>
						<div class="panel panel-default" style="position: relative;">
							<div class="panel-heading">
								<h3 class="panel-title">
									消息推送
								</h3>

							</div>
							
							<div class="panel-body">
								<table id="example" class="table table-striped table-bordered"
									cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>
												<input id="chkAll" type="checkbox">
											</th>
											<th>
												序号
											</th>

											<th>
												推送时间
											</th>
											<th>
												标题
											</th>
											<th>
												内容
											</th>

										</tr>
									</thead>

									<tbody>
										<c:forEach var="msgs" items="${paging.object}"
											varStatus="rownum">
											<tr>
												<td>
													<input name="checkboxNode" type="checkbox"
														value="${msgs.id}">
												</td>
												<td>
													${rownum.index+1+paging.paging.start}
												</td>

												<td>
													<fmt:formatDate value="${msgs.sendTime}"
														pattern="yyyy-MM-dd HH:mm:ss" />
												</td>

												<td>
													${msgs.title}
												</td>
												<td>
													${msgs.content}
												</td>

											</tr>
										</c:forEach>

									</tbody>
									<tr>
										<jsp:include page="../public/public.jsp" />
									</tr>

								</table>

								<form
									action="<%=path %>/system/MessagePushController/findMessagePush.html"
									id="form" method="post">
									<!-- 查询条件所需 -->
									<!-- 
									<input type="hidden" id="domainName" name="domainName"
										value="${msg.domainName}">
									 -->
									<input type="hidden" id="sendTimes" name="sendTimes"
										value="${msg.sendTime}">
									<!-- 查询条件所需 -->
									<input type="hidden" id="start" name="start"
										value="${paging.paging.start}" />
									<input type="hidden" id="limit" name="limit"
										value="${paging.paging.limit}" />
									<input type="hidden" id="currPage" name="currPage"
										value="${paging.paging.currPage}" />
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
 <div style="padding:20px "></div>
 
</div>