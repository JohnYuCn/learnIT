<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String path = request.getContextPath();
%>

		<!-- <title>模板管理</title> -->
		
		<script>
			$(document).ready(
				function() {
					$("#newTemplate").bind(
							"click",
							function() {
								var cid = $("#cid").prop("value");
								var treePid = $("#treePid").prop("value");
								var url="<%=path %>/template/template.html?cid=" + cid
										+ "&treePid=" + treePid;
								$("#tableDiv").load(url);
								
							});
			});
			function modify(id) {
				var cid = $("#cid").prop("value");
				var treePid = $("#treePid").prop("value");
				$("#tableDiv").load( "<%=path %>/template/template.html?id=" + id + "&cid=" + cid
						+ "&treePid=" + treePid);
			}
			function del(id) {
				if (confirm("确定要删除吗？")) {
					var cid = $("#cid").prop("value");
					var treePid = $("#treePid").prop("value");
					$.ajax({
				  		url:"<%=path %>/template/delTemplate.html?id=" + id + "&cid=" + cid + "&treePid=" + treePid,
				  		type:'post',
				  		data:$('#form').serialize(),
				  		success : function(data){
				  			if(data == "success"){
				  				alert("删除成功");
				  				$("#tableDiv").load("<%=path %>/template/list.html?cid=${param.cid}&treePid=${param.treePid}");
				  			}else{
				  				alert("删除失败");
				  			}
				  		},
				  		error : function(){
				  			alert("服务器连接失败");
				  		}
				 });
				}
			}
	</script>
	
		<input type="hidden" name="cid" id="cid" value="${param.cid}" />
		<input type="hidden" name="treePid" id="treePid"
			value="${param.treePid}" />
		<div class="main-content-wrapper">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									模板管理
								</h3>
								<div class="actions pull-right" style="margin-top: 11px">
									<input id="newTemplate" type="button" class="btn btn-primary" value="新增模板" />
								</div>
								<form id="form"></form>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="panel panel-default">
										<div class="panel-body">
											<div id="gridArea">
												<table id="example"
													class="table table-striped table-bordered" cellspacing="0"
													width="100%">
													<thead>
														<tr>
															<th>
																ID
															</th>
															<th>
																模板名称
															</th>
															<th>
																文件名
															</th>
															<th>
																变量名
															</th>
															<th>
																操作
															</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="template" items="${paging.object}">
															<tr>
																<td>
																	<c:out value="${template.id}" />
																</td>
																<td>
																	<c:out value="${template.templateName}" />
																</td>
																<td>
																	<c:out value="${template.filename}" />
																</td>
																<td>
																	<c:out value="${template.varName}" />
																</td>
																<td>
																	<a href="javascript:modify('${template.id}')">修改</a>&nbsp;&nbsp;
																	<a href="javascript:del('${template.id}')" >删除</a>
																</td>
															</tr>
														</c:forEach>
													</tbody>
													<tr>
														<jsp:include page="../public/public.jsp" />
													</tr>
												</table>
												<form action="<%=path%>/template/list">
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
					</div>
				</div>

			</div>
		</div>

