<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String path = request.getContextPath();
%>
	<jsp:include page="../login/common.jsp"></jsp:include>
<div id="tableDiv">
		<link rel="stylesheet"href="<%=path %>/assets/plugins/ztree/css/zTreeStyle.css" />
		<script src="<%=path %>/assets/plugins/ztree/js/jquery.ztree.all-3.5.min.js"></script>
		<script>
$(document).ready(
		function() {
			var groupInfo = null;

			var setting = {
				async : {
					enable : true,
					url : "<%=path %>/system/PowerSetting/load.json"
				},
				view : {
					dblClickExpand : false,
					showLine : true,
					selectedMulti : false
				},
				data : {
					simpleData : {
						enable : true,
						idKey : "id",
						pIdKey : "parentId",
						rootPId : ""
					}
				},
				check : {
					enable : true
				},
				callback : {
					onClick : function(event, treeId, treeNode) {
						showData(treeNode);
					},
					onAsyncSuccess : function() {
						if (groupInfo != null && groupInfo.powerId != null) {
							var list = groupInfo.powerId;
							for ( var i = 0; i < list.length; i++) {
								var node = tree.getNodeByParam("id", list[i]);
								tree.checkNode(node, true);
							}
						}
					}
				}
			}
			var tree = null;

			$("#newGroup").bind("click", function() {
				$("#gridArea").hide();
				$("#editArea").show();
				$.fn.zTree.init($("#tree"), setting);
				tree = $.fn.zTree.getZTreeObj("tree");
			});

			window.modify = function(id) {
				$.ajax( {
					type : "POST",
					url : "<%=path%>/user/group/detail.json",
					data : {
						id : id
					},
					success : function(data, textStatus) {
						if (data == null || data.success != null
								&& data.success == false) {
							var str = "获取信息错误";
							if (data != null && data.msg != null)
								str += "：" + data.msg;
							alert(str);
							return;
						}
						$("#gridArea").hide();
						$("#editArea").show();

						$("#id").prop("value", id);
						$("#name").prop("value", data.name);
						groupInfo = data;

						if (tree != null)
							tree.destroy("tree");
						$.fn.zTree.init($("#tree"), setting);
						tree = $.fn.zTree.getZTreeObj("tree");

					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						alert("获取信息错误！");
					}
				});
			}

			$("#ret").bind("click", function() {
				$("#editArea").hide();
				$("#gridArea").show();
			});

			$("#save").bind(
					"click",
					function() {
						var nodes = tree.getCheckedNodes();
						var ids = [];
						for ( var i = 0; i < nodes.length; i++) {
							ids.push(nodes[i].id);
						}
						var reqData = {
							id : $("#id").prop("value"),
							name : $("#name").prop("value"),
							powerId : ids
						};
						$.ajax( {
							type : "POST",
							url : "<%=path%>/user/group/save.json",
							data : reqData,
							success : function(data, textStatus) {
								if (data == null || data.success != null
										&& data.success == false) {
									var str = "保存错误";
									if (data != null && data.msg != null)
										str += "：" + data.msg;
									alert(str);
									return;
								}
								alert("保存成功！");
								//$("#form").submit();
								clickMenu('/user/group','form');
							},
							error : function(XMLHttpRequest, textStatus,
									errorThrown) {
								alert("保存错误！");
							}
						});
					});

			window.del = function(id) {
				if (confirm("确定要删除吗？")) {
					$.ajax( {
						type : "POST",
						url : "<%=path%>/user/group/del.json",
						data : {
							id : id
						},
						success : function(data, textStatus) {
							if (data == null || data.success != null
									&& data.success == false) {
								var str = "删除错误";
								if (data != null && data.msg != null)
									str += "：" + data.msg;
								alert(str);
								return;
							}
							alert("删除成功！");
							//$("#form").submit();
							clickMenu('/user/group','form');
						},
						error : function(XMLHttpRequest, textStatus,
								errorThrown) {
							alert("删除错误！");
						}
					});
				}
			}
		});
</script>
		<div class="main-content-wrapper" style="padding: 10px 10px;">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									用户组管理
								</h3>
								<form id="form"></form>
							</div>
							<div class="row">
								<div class="col-md-12">
										<div class="panel-body clearfix">
											
											<div id="gridArea" style="text-align: right;">
												<input id="newGroup" type="button" class="btn btn-primary"
													value="新增用户组" />
												<table id="example"
													class="table table-striped table-bordered" cellspacing="0"
													width="100%">
													<thead>
														<tr>
															<th>
																ID
															</th>
															<th>
																名称
															</th>
															<th>
																操作
															</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="group" items="${paging.object}">
															<tr>
																<td>
																	<c:out value="${group.id}" />
																</td>
																<td>
																	<c:out value="${group.name}" />
																</td>
																<td>
																	<a href="javascript:void(0);"
																		onclick="modify(<c:out value="${group.id}"/>)">修改</a>&nbsp;&nbsp;
																	<a href="javascript:void(0);"
																		onclick="del(<c:out value="${group.id}"/>)">删除</a>
																</td>
															</tr>
														</c:forEach>
													</tbody>
													
												</table>
												<div class="text-left">
			                                    	<jsp:include  page="../public/public.jsp" />
												</div>
											<form action="<%=path %>/user/group" id="form">
											 	<input type="hidden" id="start" name="start" value="${paging.paging.start}" />
											 	<input type="hidden" id="limit" name="limit" value="${paging.paging.limit}" />
											 	<input type="hidden" id="currPage" name="currPage" value="${paging.paging.currPage}" />
											 </form>

											</div>
											<div id="editArea" style="display: none">
												<input type="hidden" id="id" value="" />
												<table style="width: 70%">
													<tr>
														<td style="text-align: right;">
															<label class="col-sm-5 control-label" style="width: 100%">用户组名称：</label>
														</td>
														<td>
															<input type="text" id="name" name="name" class="form-control" style="width: 70%"/>
														</td>
													</tr>
													<tr>
														<td style="text-align: right;vertical-align: top;">
															<label class="col-sm-5 control-label" style="width: 100%" >权限：</label>
														</td>
														<td>
															<div class="col-sm-7">
																<ul id="tree" class="ztree" ></ul>
															</div>
														</td>
													</tr>
													<tr style="height: 100px;">
														<td style="text-align: right;">
															
														</td>
														<td style="padding:0px 20%;">
															<button id="save" class="btn btn-primary" type="button">保存	</button>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<button id="ret" class="btn btn-primary" type="button">返回</button>
														</td>
													</tr>
												</table>
												
												
												<div class="form-group" align="center">
													<div class="col-sm-12">
														
														
														
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
		</div>
