<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>
		<!-- <title>查看数据库</title> -->
		<div class="main-content-wrapper" style="padding:10px 10px;">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									查看数据库
								</h3>
							
							</div>
							<div class="panel-body">
								<table id="example" class="table table-striped table-bordered"
									cellspacing="0" width="100%">
									<thead>
										<tr>
											
											<th>序号</th>
											<th>表名</th>
											<th>
												类名
											</th>
											<th>
												说明
											</th>
											<th>
												主键
											</th>
									
											<th>操作</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="field" items="${list}" varStatus="rownum">
											<tr>
												  <td>${rownum.index+1}</td>
												<td>
													${field.tableName}
												</td>
												<td >${field.className}</td>
												<td>
				                                   ${field.explain}
												</td>
													<td>
													${field.primaryKey}
												</td>
												
												<td>
													<a class="down_but"
														href="javascript:void(0);" slook="${field.className}" >查看详情</a>			
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
		  <script type="text/javascript">
     $(".down_but").click(function(){
    	 var slook = $(this).attr("slook");
    	 window.open("<%=path%>/system/dbManagementController/findAllField/"+slook+".html");
    		 
     });
     </script>
