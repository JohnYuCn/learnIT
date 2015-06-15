<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>
		<!-- <title>商品类型属性列表</title> -->
<script type="text/javascript">
	function toAddOrUpdate(braId}){
		clickMenu('/shop/brand/toAddOrUpdate?braID='+braId);
		
	}
	function doDelete(braId}){
		clickMenu('/shop/brand/delete?braID='+braId);
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
							<div class="panel-body form-horizontal form-border">


								<div class="col-sm-4" >
									<label class="control-label pull-left" >
										类型名称：
									</label>
									<div class="col-sm-8 ">
										<input type="text" class="form-control" id="f_name">
									</div>
								</div>
									
								
							</div>
							<div class="panel-body">
								
								<div class="panel-body" style="text-align: center;">
											
											<button type="button" id="submit" style="margin-right: 20px;"  class="btn btn-primary btn-trans">查询</button>
											<button type="button" class="btn btn-primary btn-trans">重置</button>
											
								</div>
							</div>
						</div>
						 <div class="panel panel-default">

                            <div class="panel-heading" style="position: relative;">
                                <h3 class="panel-title">类型列表</h3>
                                <div class="actions pull-right" style="margin-top: -12px">
									<button class="btn btn-primary" type="button" id="delete">删除</button>
									<input type="button" id="add" value="新增" class="btn btn-primary"></input>
                                </div>
                            </div>
                            <div class="panel-body">
							<table class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<td><input type="checkbox" name="select1" id="select1" /></td>
										<td>序号</td>
										<td>名称</td>
										<td>数量</td>
										<td>修改时间</td>
										<td colspan="3"></td>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="bra" items="${brands}" >
									<tr>
										<td><input type="checkbox" name="select" /></td>
										<td>${bra.braID }</td>
										<td>${bra.name }</td>
										<td>${bra.description }</td>
										<td>${bra.addDate }</td>
										<td>
										<a href="javascript:void(0)" onclick="toAddOrUpdate(${bra.braID})">修改</a> &nbsp;&nbsp;
										<a href="javascript:void(0)" onclick="doDelete(${bra.braID})">删除</a>
										
										<!-- 
										<a href="<%=path%>/shop/brand/toAddOrUpdate?braID=${bra.braID}">修改</a> &nbsp&nbsp 
										<a href="<%=path%>/shop/brand/delete?braID=${bra.braID}">删除</a> </td>
										 -->
									</tr>
									</c:forEach>
								</tbody>	
								<tr>
                                    	<jsp:include  page="../../public/public.jsp" />
                                </tr>						
							</table>
							<form action="<%=path %>/shop/productModel/list" id="s_form" method="post">
								<!-- 查询条件所需 -->
									<input type="hidden" id="h_name"  name="name" >
									
									
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
		$(function(){
			$("#add").click(function(){
				var url = "<%=path%>/shop/brand/toAddOrUpdate";
					window.location.href = url;
			});
			$("#submit").click(function(){
				if($("#f_name")==null||$("#f_name").val()==""){
					alert("查询条件不能为空");
					return;
				}else{
				$("#h_name").val($("#f_name").val());
				//$("#s_form").submit();
				clickMenu('/shop/productModel/list','s_form');
				}
			});
		});
	</script>
