<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
	<script type="text/javascript">
		$(function(){
			  $("#tableDiv").load("<%=path%>/column/findById/0");
		});
	</script>
	    <div class="row" style="padding:10px 10px;">
	    	<div>
	    		<div class="col-md-2" style="margin: 0;">
					<div class="panel-heading" style="border-bottom: 1px solid #ddd; ">
						<h3 class="panel-title">
							栏目
							<a href="javascript:;" id="refSc" onclick="refSc()" style="color:#428bca; font-weight: normal;" class="pull-right">刷新</a>
						</h3>
					</div>
					<jsp:include page="columnLeft.jsp"></jsp:include>
				</div>
	    	</div>
			<div id="tableDiv" class="col-md-10">
			</div>
	    </div>
	    
	    <style>
			.func{
				padding:0px 12px;
			}
		</style>
