<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

    
   <!--  <title>保存成功</title> -->
	<link rel="stylesheet" href="../assets/css/main.css">
	<script type="text/javascript">
		var secs=2;
		for(i=1;i<=secs;i++){ 
			window.setTimeout("update(" + i + ")", i * 1000);}
			function update(num){
				if(num == secs){
					self.location.href='<%=path%>${requestScope.url}';} 
				else{ 
					
				} 
		}
	</script>
    <div class="main-content-wrapper">
	    <div style="width:100%;text-align:center">
	    	<br><a href="<%=path%>${requestScope.url}" target="mainFrame">保存成功，如果您的浏览器没有自动跳转，请点击这里</a>
	    </div>
    </div>
