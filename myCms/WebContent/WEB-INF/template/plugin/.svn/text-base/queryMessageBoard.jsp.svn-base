<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>
<!-- 		<title>留言板管理</title> -->
		<!-- begin datetimepicker -->
		<link href="<%=path%>/css/jquery.datetimepicker.css" rel="stylesheet">
		<script type="text/javascript" src="<%=path%>/js/jquery.datetimepicker.js"></script>
		<!-- end datetimepicker -->
		<script type="text/javascript">

$(document).ready(function() {
	//只让内容显示一部分
		for ( var i = 1; i <= 20; i++) {
			var msg = $("td[name='message" + i + "']").text();
			if (msg != "") {
				$("td[name='message" + i + "']").text(msg.substring(0,10)+"...");
			}
		}
		//全选
		$("#checkAll").click(function() {
			if ($("#checkAll").is(':checked')) {
				$("input[name='msg']").prop("checked", true);
			} else {
				$("input[name='msg']").prop("checked", false);
			}
		});

		//判读是否是删除按钮
		$("#deleteMsg").click(function() {
			var checkArray = "";//获取选择的数据
				$("input[name='msg']:checked").each(function(i) {
					if (i == 0) {
						checkArray = $(this).val()
					} else {
						checkArray = checkArray + "," + $(this).val();
					}
				});
				if (checkArray == "") {
					alert("请选择数据！");
					return;
				}
				var url = "<%=path%>/plugin/messageBoardController/deleMsg/"
						+ checkArray + ".html";
				window.location.href = url;
			})

		$("#sub").click(function() {
			$("#name").val($("#name1").val());
			$("#message").val($("#message1").val());
			$("#writtenTime").val($("#writtenTime1").val());
			$("#contact").val($("#contact1").val());
								 $("#start").val(0);
			$("#limit").val(20);
			$("#currPage").val(0);
			$("#isExamine").val($("input[name='isExamine1']:checked").val());
			//$("#form").submit();
			clickMenu('/plugin/messageBoardController/findAllMessage','form');
		});
		$("#res").click(function() {
			$("#name").val('');
			$("#name1").val('');
			$("#message").val('');
			$("#message1").val('');
			$("#writtenTime").val('');
			$("#writtenTime1").val('');
			$("#contact").val('');
			$("#contact1").val('');
			$("input[name='isExamine1']").attr("checked",false); 
		});
	});
</script>
		<div class="main-content-wrapper">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">

							<div class="panel-heading">
								<h3 class="panel-title">
									查询条件
								</h3>

							</div>

							<div class="panel-body form-horizontal form-border">

								<div class="col-sm-4" style="width: 312px;padding-bottom:10px;">
									<label class="control-label">
										标题：
									</label>
									<div class="col-sm-8 pull-right">
										<input type="text" class="form-control" id="name1" value="${messageBoard.name}">
									</div>
								</div>
									
								<div class="col-sm-4" style="width: 312px;padding-bottom:10px;">
									<label class="control-label">
										内容：
									</label>
									<div class="col-sm-8 pull-right">
										<input type="text" class="form-control" id="message1"
											value="${messageBoard.message}">
									</div>
								</div>
									
								<div class="col-sm-4" style="width: 312px;padding-bottom:10px;">
									<label class="control-label">
										留言时间：
									</label>
									<div class="col-sm-8 pull-right">
										<input type="text" class="form-control" id="writtenTime1"
										value="<fmt:formatDate value="${messageBoard.writtenTime}"
														pattern="yyyy-MM-dd HH:mm:ss" />">
									</div>
								</div>
								
								<div class="col-sm-4" style="width: 312px;padding-bottom:10px;">
									<label class="control-label">
										联系方式：
									</label>
									<div class="col-sm-8 pull-right">
										<input type="text" class="form-control" id="contact1"
											value="${messageBoard.contact}">
									</div>
								</div>
							
								<div class="col-sm-4" style="width: 532px;padding-bottom:10px;">
							<label class="col-sm-3 control-label">是否通过审核：</label>
							 <div class="col-sm-6">
                                      <label class="radio-inline">
                                     
                                          <input class="icheck" type="radio"  value="2" name="isExamine1"  <c:if test="${messageBoard.isExamine==2}">checked="checked"</c:if> />未通过</label>
                                      <label class="radio-inline">
                                          <input class="icheck" type="radio"   value="1"  name="isExamine1"  <c:if test="${messageBoard.isExamine==1}">checked="checked"</c:if> />通过</label>
                                                  <label class="radio-inline">
                                          <input class="icheck" type="radio"   value="0"  name="isExamine1"  <c:if test="${messageBoard.isExamine==0}">checked="checked"</c:if> />全部</label>
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
									留言板管理
								</h3>
								<div class="actions pull-right" style="margin-top: -12px">
									<button class="btn btn-primary" type="button" id="deleteMsg">
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
											<th>
												ID
											</th>
											<th>
												标题
											</th>
											<th>
												内容
											</th>
											<th>
												是否通过审核
											</th>
											<th>
												联系方式
											</th>
											<th>
												留言时间
											</th>
											<th>
												IP地址
											</th>
											<th>
												操作
											</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="msg" items="${paging.object}"
											varStatus="rownum">
											<tr>
												<td>
													<input type="checkbox" name="msg" value="${msg.id}" />
												</td>
												<td>
													${rownum.index+1+paging.paging.start}
												</td>
												<td>
													${msg.name}
												</td>
												<td name="message${rownum.index+1+paging.paging.start}">${msg.message}</td>
												<td>
													<c:choose>
														<c:when test="${msg.isExamine==1}">已通过</c:when>
														<c:otherwise>未通过</c:otherwise>
													</c:choose>
												</td>
												<td>
													${msg.contact}
												</td>
												<td>
													<fmt:formatDate value="${msg.writtenTime}"
														pattern="yyyy-MM-dd HH:mm:ss" />
												</td>
												<td>
													${msg.writtenIp}
												</td>
												<td>
													<a
														href="<%=path%>/plugin/messageBoardController/findById/${msg.id}.html">回复/修改</a>

													<a
														href="<%=path%>/plugin/messageBoardController/deleMsg/${msg.id}.html">删除</a>
													<c:if test="${msg.isExamine==1}">
														<a
															href="<%=path%>/plugin/messageBoardController/updateMsg/${msg.id}/2.html">取消审核</a>
													</c:if>
													<c:if test="${msg.isExamine == ''||msg.isExamine == null}">
														<a
															href="<%=path%>/plugin/messageBoardController/updateMsg/${msg.id}/1.html">通过审核</a>
													</c:if>
												</td>
											</tr>
										</c:forEach>
									</tbody>
									<tr>
										<jsp:include page="../public/public.jsp" />
									</tr>
								</table>
								<form    
									action="<%=path%>/plugin/messageBoardController/findAllMessage" id="form" method="post">
									<!-- 查询条件所需 -->
									<input type="hidden"  id="name"  name="name" value="${messageBoard.name}">
									<input type="hidden" id="message"   name="message" value="${messageBoard.message}">
									<input type="hidden"  id="writtenTime" name="writtenTimes" value="<fmt:formatDate value="${messageBoard.writtenTime}"
														pattern="yyyy-MM-dd HH:mm:ss" />">
									<input type="hidden" id="contact" name="contact" value="${messageBoard.contact}">
									<input type="hidden"  id="isExamine" name="isExamine" value="${messageBoard.isExamine}"/>
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
				<script type="text/javascript">
$('#writtenTime1').datetimepicker();
</script>

