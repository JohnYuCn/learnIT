<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>
		<!-- <title>会员字段管理</title> -->
		<script type="text/javascript">
			function toUpdate(id){ 
				clickMenu('/plugin/messageBoardController/findById/'+id+'.html');
			}
			function doDelete(id){
				clickMenu('/plugin/messageBoardController/deleMsg/'+id+'.html');
			}
		</script>
		<div class="main-content-wrapper" style="padding: 10px 10px;">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									会员字段管理
								</h3>
								<div class="actions pull-right" style="padding: 20px 0px;">
									<button class="btn btn-primary" type="button"
										id="addField">
										添加字段
									</button>
								</div>
							</div>
							<div class="panel-body">
								<table id="example" class="table table-striped table-bordered"
									cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>序号</th>
											<th>字段名</th>
											<th>
												属性名
											</th>
											<th>
												字段类型
											</th>
											<th>
												属性类型
											</th>
											<th>
												长度
											</th>
											<th>
												注释
											</th>
											<th>默认值</th>
											<th>是否为空</th>
											<th>操作</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="field" items="${list}" varStatus="rownum">
											<tr>
												  <td>${rownum.index+1}</td>
												<td>
													${field.columnName}
												</td>
												<td >${field.attributeName}</td>
												<td>
				                                   ${field.columnType}
												</td>
													<td>
													${field.attributeType}
												</td>
												<td>
												   ${field.columnSize}
												</td>
												<td>
													${field.remarks}
												</td>
												<td>${field.columnDef}</td>
												<td>
												  <c:if test="${field.isNull==1}">不允许</c:if>
												  <c:if test="${field.isNull==0}">允许</c:if>
												</td>
												<td>
												<a href="javascript:void(0);" onclick="toUpdate(${msg.id})">修改</a>
												<a href="javascript:void(0);" onclick="toDelete(${msg.id})">删除</a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
									</table>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
