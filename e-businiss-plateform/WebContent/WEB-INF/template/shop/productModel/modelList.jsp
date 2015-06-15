<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>
		<!-- <title>商品类型列表</title> -->
		<script type="text/javascript">
			function toAddOrUpdate(id){
				clickMenu('/shop/productModelStyle/toAddOrUpdate?mdsID='+id);
			}
			function doDelete(id){
				clickMenu('/shop/productModelStyle/delete?pmdID='+id);
			}
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
								<form action="<%=path%>/shop/productModelStyle/list" id="s_form">
									<table>
										<tr>
											<td>类型名称:</td>
											<td>
												<select name="pmdID" >
													<c:forEach var="pmd" items="${productModels}">
															<option value="${pmd.pmdID}"  <c:if test="${pmd.pmdID==pmdID}">selected="selected"</c:if>>${pmd.name}</option>
													</c:forEach>
												</select>
											</td>
										</tr>
										
										
									</table>
								</form>
								<div class="panel-body" style="text-align: center;">
											<input type="button" id="submit" style="margin-right: 20px;" value="查询" class="btn btn-primary btn-trans"></input>
											<input type="button" id="add" value="新建" class="btn btn-primary"></input>
								</div>
							</div>
						</div>
						<div>
							<table class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<td><input type="checkbox" name="select1" id="select1" /></td>
										<td>序号</td>
										<td>名称</td>
										<td>录入方式</td>
										<td>备选值</td>
										<td colspan="3"></td>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="mds" items="${modelStyles}" >
									<tr>
										<td><input type="checkbox" name="select" /></td>
										<td>${mds.id }</td>
										<td>${mds.name }</td>
										<td>${mds.msMethods }</td>
										<td>${mds.msValue }</td>
										<td>
											<a href="javascript:void(0);" onclick="toAddOrUpdate(${mds.id})">修改</a> &nbsp;&nbsp; 
											<a href="javascript:void(0);" onclick="doDelete(${mds.id})">删除</a>
											<!-- 
											<a href="<%=path%>/shop/productModelStyle/toAddOrUpdate?mdsID=${mds.id}&pmdID=${pmdID}">修改</a> &nbsp;&nbsp; 
											<a href="<%=path%>/shop/productModelStyle/delete?pmdID=${pmdID}&id=${mds.id}">删除</a> </td>
											 -->
									</tr>
									</c:forEach>
								</tbody>	
								<tr>
                                    	<jsp:include  page="../../public/public.jsp" />
                                </tr>						
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
		$(function(){
			$("#add").click(function(){
				
				//var url = "<%=path%>/shop/productModelStyle/toAddOrUpdate?pmdID=${pmdID}";
				//	window.location.href = url;
				clickMenu('/shop/productModelStyle/toAddOrUpdate?pmdID=+${pmdID}');
			});
			$("#submit").click(function(){
				if($("#f_name")==null){
					alert("查询条件不能为空");
					return;
				}
				//$("#s_form").submit();
				clickMenu('/shop/productModelStyle/list','s_form');
				
			});
		});
	</script>
