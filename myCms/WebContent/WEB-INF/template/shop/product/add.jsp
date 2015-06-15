<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
	int i=0;
%>
		<!-- <title>商品添加</title> -->
<script type="text/javascript">
	function subForm(){
		clickMenu('/shop/product/toAddProductTwo','form');
	}
</script>
		<div class="main-content-wrapper" style="padding: 10px 10px;">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
					  <div class="panel panel-default">
              			 <div class="panel-heading">
                    		<h3 class="panel-title">商品添加</h3>
               			 </div>
               			 
               			 <div class="panel-body">
								<form id="form" class="form-horizontal form-border" method="post" action="${pageContext.request.contextPath }/shop/product/toAddProductTwo">
									<div class="form-group">
			                            <label class="col-sm-3 control-label">商品名称:</label>
			                            <div class="col-sm-6">
			                                <input class="form-control" type="text" id="title" name="title" value="${pro.name }">
			                            </div>
		                        	</div>
		                        	<div class="form-group">
			                            <label class="col-sm-3 control-label">商品品牌:</label>
			                            <div class="col-sm-6">
				                            <select class="form-control" name="braID">
										 		 <c:forEach items="${brands}" var="brand">
										 			 <option value ="${brand.braID }" >${brand.name }</option>
										  		</c:forEach>
											</select>
			                            </div>
		                        	</div>
		                        	<div class="form-group">
			                            <label class="col-sm-3 control-label">商品分类:</label>
			                            <div class="col-sm-6">
				                            <select class="form-control" name="pcsID">
										 		 <c:forEach items="${bysorts}" var="clas">
										 			 <option value ="${clas.svalue }" <c:if test="${clas.svalue==cla.parentID }">selected="selected"</c:if> >${clas.sname }</option>
										  		</c:forEach>
											</select>
			                            </div>
		                        	</div>
		                        	
		                        	<div class="form-group">
			                            <label class="col-sm-3 control-label">商品类型:</label>
			                            <div class="col-sm-6">
				                            <select class="form-control" name="pmdID">
										 		 <c:forEach items="${productmodels}" var="model">
										 			 <option value ="${model.pmdID }" >${model.name }</option>
										  		</c:forEach>
											</select>
			                            </div>
		                        	</div>
		                        	
		                        	
		                        	
		                        	
		                        	<div class="form-group" align="center">
		                        		<input type="hidden"  name="pcs_ID" value="${cla.pcsID }"/>
		                        		&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
										<input class="btn btn-primary" type="button" onclick="subForm()" value="提交"/>
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
			
		});
	</script>


