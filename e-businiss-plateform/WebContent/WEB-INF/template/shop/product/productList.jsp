<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>
<div id="tableDiv">
 	<jsp:include page="../../login/common.jsp"></jsp:include>
    <link href="<%=path%>/css/jquery.datetimepicker.css" rel="stylesheet" />
	<script type="text/javascript" src="<%=path%>/js/jquery.datetimepicker.js"></script>
	<script type="text/javascript">
		$(function(){
			$('#f_addDate').datetimepicker();	
		});
		function doDelete(id){
			var url = "/shop/product/del/"+id;
			clickMenu(url);
		}
		function toAddOrUpdate(id){
			var url = "/shop/product/savaOrUpdata/"+id;
			clickMenu(url);
		}
		function subForm(){
			var title=document.getElementById("f_title").value;
			var proSerial=document.getElementById("f_proSerial").value;
			var addDate=document.getElementById("f_addDate").value;
			if(title!=""){
				document.getElementById("h_title").value = title;
			}
			if(proSerial!=""){
				document.getElementById("h_proSerial").value = proSerial;
				$("#h_proSerial").val(proSerial);
			}
			if(addDate!=""){
				document.getElementById("h_addDate").value = addDate;
				$("#h_addDate").val(addDate);
			}
			$("#start").val(0);
			$("#limit").val(20);
			$("#currPage").val(0);
			clickMenu('/shop/product/list','s_form');
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
									<label class="control-label pull-left">
										标题:
									</label>
									<div class="col-sm-8 ">
										<input type="text" class="form-control" id="f_title">
									</div>
								</div>
								<div class="col-sm-4" >
									<label class="control-label pull-left">
										商品编号:
									</label>
									<div class="col-sm-8  ">
									
										<input type="text" class="form-control" id="f_proSerial">
									</div>
								</div>
								<div class="col-sm-4" >
									<label class="control-label pull-left">
										添加时间:
									</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="f_addDate" 
										name = ""
										value="">
									</div>
								</div>
							</div>
							<div class="panel-body">
								<div class="panel-body" style="text-align: center;">
									<button type="button"onclick="subForm()" style="margin-right: 20px;"  class="btn btn-primary btn-trans">查询</button>
									<button type="button" class="btn btn-primary btn-trans">重置</button>
								</div>
							</div>
						</div>
						 <div class="panel panel-default">
                            <div class="panel-heading" style="position: relative;">
                                <h3 class="panel-title">商品分类列表</h3>
                                <div class="actions pull-right" style="margin-top: -12px">
                                </div>
                            </div>
                            <div class="panel-body">
								<table class="table table-striped table-bordered" cellspacing="0" width="100%">
									<thead>
										<tr>
											<td><input type="checkbox" name="select1" id="select1" /></td>
											<td>序号</td>
											<td>标题</td>
											<td>商品编号</td>
											<td>库存</td>
											<td>添加时间</td>
											<td>价格</td>
											<td>类型</td>
											<td colspan="2">操作</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="product" items="${paging.object}" >
										<tr>
											<td><input type="checkbox" name="select" /></td>
											<td>${product.proID }</td>
											<td>${product.title }</td>
											<td>${product.proSerial }</td>
											<td>${product.stock }</td>
											<td>${product.addDate }</td>
											<td>${product.price }</td>
											<td>${product.productMold.name }</td>
											<td>
											<a href="javascript:;" onclick="toAddOrUpdate('${product.proID}')">修改</a>&nbsp;&nbsp;
											<a href="javascript:;" onclick="doDelete('${product.proID}')">删除</a>
										</tr>
										</c:forEach>
									</tbody>
									<tr>
	                                    <jsp:include  page="../../public/public.jsp" />
	                                </tr>								
								</table>
								<form action="<%=path %>/shop/product/list" id="s_form" method="post">
									<!-- 查询条件所需 -->
									<input type="hidden" id="h_proSerial" name="proSerial">
									<input type="hidden" id="h_title" name="title">
									<input type="hidden" id="h_addDate" name="addDate">
									<!-- 查询条件所需  分页-->
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
</div>