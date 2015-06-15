<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!--  <title>系统授权</title> -->
	<script type="text/javascript">
	      var returnUrl = "${returnUrl}";
    		self.location.href=returnUrl;
	</script>
