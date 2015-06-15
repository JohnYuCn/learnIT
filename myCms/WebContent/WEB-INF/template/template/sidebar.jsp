<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    <!-- <title>SpaceLab</title> -->
    
	<script type="text/javascript">
		 $("#tableDiv").load( "<%=path %>/template/template.html?id=0");
	</script>
	<div id="wrapper" style="padding: 10px 10px;">
        <div class="row">
        	<div class="col-md-2">
        		<center>
        		<button id="add" class="btn btn-success btn-sm" type="button">添加目录</button>
	    		<button id="mod" class="btn btn-success btn-sm" type="button">修改目录</button>
	    		</center>
				<!-- 加载树 -->
				<jsp:include page="sidebarLeft.jsp"></jsp:include>
			</div>
			<div id="tableDiv" class="col-md-10">
			</div>
    	</div>
	</div>
