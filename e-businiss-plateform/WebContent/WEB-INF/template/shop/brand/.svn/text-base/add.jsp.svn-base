<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>
		<!-- <title>商品品牌添加</title> -->
<script type="text/javascript">
	function subForm(){
		clickMenu('${pageContext.request.contextPath }/shop/brand/addOrUpdate','form');
	}
</script>
		<div class="main-content-wrapper" style="padding: 10px 10px;">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
	                	 	   <h3 class="panel-title">添加/修改商品品牌</h3>
	              			</div>
	              			<div class="panel-body">
							<form class="form-horizontal form-border"  id="auform" action="${pageContext.request.contextPath }/shop/brand/addOrUpdate" method="post">
								
								
								
								<div class="form-group">
									<label class="col-sm-3 control-label">品牌名称:</label>
									<div class="col-sm-6">
									<input class="form-control" type="text" id="name" name="name" value="${bra.name }">
									</div>	
								</div>	
								
								<div class="form-group">
									<label class="col-sm-3 control-label">网络地址:</label>
									<div class="col-sm-6">
									<input class="form-control" type="text" id="website" name="website" value="${bra.website }">
									</div>	
								</div>	
								
									
								<div class="form-group">
									<label class="col-sm-3 control-label">logo:</label>
									<div class="col-sm-6">
									<input class="form-control" type="text" id="logo" name="logo" value="${bra.logo }" >
									</div>	
								</div>
								
								<div class="form-group">
									<label class="col-sm-3 control-label">是否显示:</label>
									<div class="pull-left" style="padding:0px 15px;">
									<input class="form-control" type="checkbox" name="isShow" value="1" checked="<c:if test='${bra.isShow==1}'>checked</c:if>"  >
									</div>	
								</div>	
								
								<div class="form-group">
									<label class="col-sm-3 control-label">排序:</label>
									<div class="col-sm-6">
									<input class="form-control" type="text" id="sorting" name="sorting" value="${bra.sorting }">
									</div>	
								</div>	
								
								<div class="form-group">
									<label class="col-sm-3 control-label">描述:</label>
									<div class="col-sm-6">
									<textarea class="form-control" name="description" >${bra.description }</textarea>
									</div>	
								</div>	
								
								
								<div class="form-group" align="center">
									<input class="btn btn-primary" type="hidden"  name="bra_ID" value="${bra.braID }"/>
									&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
									<input class="btn btn-primary" type="button" onclick="subForm()" value="提交" /> 
								</div>
							</form>
						</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<script type="text/javascript">
		$(function(){
			$("#submit").click(function(){
				var url = "<%=path%>/shop/brand/toAddOrUpdate";
					window.location.href = url;
			});
			
		});
	</script>


