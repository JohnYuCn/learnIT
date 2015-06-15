<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
		<!-- <title>查询内容</title> -->
		<script type="text/javascript">

$(document).ready(function() {
	//复选框选择
		$("#chkAll").click(function() {
			if ($("#chkAll").is(':checked')) {
				$("input[name='checkboxNode']").prop("checked", true);
			} else {
				$("input[name='checkboxNode']").prop("checked", false);
			}
		});

		//判读是否是删除按钮
		$("#recycleCont").click(function() {
			var checkArray = "";//获取选择的数据
				$("input[name='checkboxNode']:checked").each(function(i) {
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
				var url = "cont/UpdateStauts/${id}/" + checkArray + ".html";
				clickMenu(url);
			});
	})
	
</script>
		<input type="hidden" id="cid" name="cid" value="${cid}">
		<div class="main-content-wrapper">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
					 <div class="panel panel-default">

						
						</div>
						<div class="panel panel-default" style="position: relative;">
							<div class="panel-heading">
								<h3 class="panel-title">
									内容查询
								</h3>
								<div class="actions pull-right" style="margin-top: -12px">
									<button class="btn btn-primary" type="button"
										id="recycleCont">
										恢复内容
									</button>
								</div>
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
												ID
											</th>
											<th>
												标题
											</th>
											<th>
												发布者
											</th>
											<th>
												文章属性
											</th>
											<th>
												发布时间
											</th>
											<th>
												PV
											</th>
											<th>
												UV
											</th>
											<th>
												点击
											</th>
											<th>
												操作
											</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="cont" items="${paging.object}"
											varStatus="rownum">
											<tr>
												<td>
													<input name="checkboxNode" type="checkbox"
														value="${cont.id}">
												</td>
												<td>
													${rownum.index+1+paging.paging.start}
												</td>

												<td>
													${cont.id}
												</td>
												<td>
													${cont.title}
												</td>
												<td>
													${cont.author}
												</td>
												<td>
													<font color="red">
														<c:if test="${cont.tuijian!=0}">
															${cont.tuijian}推
														</c:if>
														<c:if test="${cont.tuijian!=0 and cont.toutiao!=0}">
															,${cont.toutiao}头
														</c:if>
														<c:if test="${cont.tuijian==0 and cont.toutiao!=0}">
															${cont.toutiao}头
														</c:if>
														<c:if test="${(cont.tuijian!=0 or cont.toutiao!=0) and cont.topRank !=0}">
															,${cont.topRank}顶
														</c:if>
														<c:if test="${cont.tuijian==0 and cont.toutiao==0 and cont.topRank !=0}">
															${cont.topRank}顶
														</c:if>
													</font>
												</td>
												<td><fmt:formatDate value="${cont.releaseTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
												<td>
													${cont.pvNumber}
												</td>
												<td>
													${cont.uvNumber}
												</td>
												<td>
													${cont.hits}
												</td>
												<td>
													<a href="<%=path%>/cont/UpdateStauts/${id }/${cont.id }.html">恢复</a>
													<a href="<%=path%>/cont/dele/${id }/${cont.id }.html">彻底删除</a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
									<tr>
										<jsp:include page="../public/public.jsp" />
									</tr>
								</table>
								<form action="<%=path%>/cont/findDeleteById/${id}" id="form" method="post">
									<!-- 查询条件所需 -->
									<input type="hidden"  id="title"  name="title" value="${cont.title}">
									<input type="hidden"  id="releaseTime"  name="releaseTimes" value="<fmt:formatDate value='${cont.releaseTime}'
													 	pattern='yyyy-MM-dd HH:mm:ss' />" >
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
